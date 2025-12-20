package com.enomyfinances.service;

import com.enomyfinances.dto.ExchangeRateResponse;
import com.enomyfinances.entity.CurrencyExchange;
import com.enomyfinances.entity.User;
import com.enomyfinances.repository.CurrencyExchangeRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

@Service
public class CurrencyExchangeServiceImpl implements CurrencyExchangeService {
    
    private static final String API_KEY = "55ce012f6871b3f7aac4efea";
    private static final String API_URL = "https://api.exchangerate-api.com/v4/latest/";
    
    private final CurrencyExchangeRepository currencyExchangeRepository;
    private final ObjectMapper objectMapper;
    private final CloseableHttpClient httpClient;

    public CurrencyExchangeServiceImpl(CurrencyExchangeRepository currencyExchangeRepository) {
        this.currencyExchangeRepository = currencyExchangeRepository;
        this.objectMapper = new ObjectMapper();
        this.httpClient = HttpClients.createDefault();
    }

    @Override
    public CurrencyExchange processExchange(CurrencyExchange currencyExchange) {
        BigDecimal exchangeRate = getExchangeRate(
            currencyExchange.getFromCurrency(), 
            currencyExchange.getToCurrency()
        ).setScale(2, RoundingMode.HALF_UP);

        BigDecimal convertedAmount = currencyExchange.getOriginalAmount()
            .multiply(exchangeRate)
            .setScale(2, RoundingMode.HALF_UP);

        BigDecimal feePercentage = getFeePercentage(currencyExchange.getOriginalAmount());

        BigDecimal feeAmount = convertedAmount
            .multiply(feePercentage)
            .divide(BigDecimal.valueOf(100), 2, RoundingMode.HALF_UP);

        BigDecimal finalAmount = convertedAmount
            .subtract(feeAmount)
            .setScale(2, RoundingMode.HALF_UP);

        currencyExchange.setExchangeRate(exchangeRate);
        currencyExchange.setConvertedAmount(convertedAmount);
        currencyExchange.setFeePercentage(feePercentage);
        currencyExchange.setFeeAmount(feeAmount);
        currencyExchange.setFinalAmount(finalAmount);

        return currencyExchangeRepository.save(currencyExchange);
    }

    private BigDecimal getExchangeRate(String fromCurrency, String toCurrency) {
        try {
            String url = API_URL + fromCurrency + "?apikey=" + API_KEY;
            HttpGet request = new HttpGet(url);
            request.addHeader("apikey", API_KEY);
            
            try (CloseableHttpResponse response = httpClient.execute(request)) {
                HttpEntity entity = response.getEntity();
                String result = EntityUtils.toString(entity);
                
                ExchangeRateResponse rates = objectMapper.readValue(result, ExchangeRateResponse.class);
                
                double rate = rates.getRates().get(toCurrency);
                return BigDecimal.valueOf(rate);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return BigDecimal.ONE;
        }
    }

    private BigDecimal getFeePercentage(BigDecimal amount) {
        if (amount.compareTo(BigDecimal.valueOf(2500)) > 0) {
            return BigDecimal.valueOf(1.5);
        } else if (amount.compareTo(BigDecimal.valueOf(1500)) > 0) {
            return BigDecimal.valueOf(2.0);
        } else if (amount.compareTo(BigDecimal.valueOf(500)) > 0) {
            return BigDecimal.valueOf(2.7);
        } else {
            return BigDecimal.valueOf(3.5);
        }
    }

    @Override
    public List<CurrencyExchange> getAllExchanges() {
        return currencyExchangeRepository.findAll();
    }

    @Override
    public List<CurrencyExchange> findExchangesByUser(User user) {
        return currencyExchangeRepository.findByUserOrderByTransactionDateDesc(user);
    }
}
