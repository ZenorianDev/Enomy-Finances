<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Smarter Money. Stronger Future.</title>
    <link rel="icon" type="image/png" href="<c:url value='/images/enomy.png'/>">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-to-b from-black via-gray-900 to-green-900 text-white">

    <!-- Header -->
    <header class="flex justify-between items-center px-10 py-6">
        <!-- Logo -->
        <div class="flex items-center">
            <img src="<c:url value='/images/enomy.png'/>" alt="Enomy-Finances Logo" class="h-10 mr-3">
            <h1 class="text-2xl font-bold">Enomy-Finances</h1>
        </div>

        <!-- Nav + Buttons -->
        <nav class="flex items-center space-x-8">
            <a href="/EnomyFinances/register" class="bg-green-600 px-5 py-2 rounded-lg hover:bg-green-500">Sign Up</a>
            <a href="/EnomyFinances/login" class="border border-green-600 px-5 py-2 rounded-lg hover:bg-green-600">Sign In</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="flex flex-col md:flex-row items-center justify-between px-10 py-20">
        <!-- Left content -->
        <div class="md:w-1/2 space-y-6">
            <h1 class="text-5xl font-bold leading-tight">
                Smarter <span class="text-green-400">savings</span>, sharper <span class="text-green-400">investments</span>, and stronger financial futures
            </h1>
            <p class="text-gray-300">Stay on top of your wealth with innovative tools, clear insights, and secure storage for your financial growth.</p>
            <div class="flex space-x-4">
                <a href="#features" class="bg-green-600 text-black px-6 py-3 rounded-lg font-semibold hover:bg-gradient-to-tr from-green-600 to-lime-500 transition">Learn More</a>
                <a href="/EnomyFinances/register" class="bg-gray-800 px-6 py-3 rounded-lg font-semibold hover:bg-gray-700 transition">Get Started</a>
            </div>
        </div>

        <!-- Right image -->
        <div class="md:w-1/2 mt-10 md:mt-0 flex justify-center">
            <img src="<c:url value='/images/FX.svg'/>" alt="Financial Dashboard" class="rounded-lg shadow-lg max-w-lg">
        </div>
    </section>

	<!-- Features Section -->
	<section id="features" class="py-20 px-10 bg-gradient-to-b from-gray-900 to-black">
	  <style>
	    /* card lift */
	    .feature-card { transition: transform .28s ease, box-shadow .28s ease; }
	    .feature-card:hover { transform: translateY(-6px); }
	
	
	    .icon-circle { transition: transform .28s ease; }
	    .feature-card.group:hover .icon-circle { transform: translateY(-6px) scale(1.06); animation: pulseGlow 1.6s infinite; }
	
	    @keyframes pulseGlow {
	      0%   { box-shadow: 0 0 6px var(--glow); }
	      50%  { box-shadow: 0 0 20px var(--glow); }
	      100% { box-shadow: 0 0 6px var(--glow); }
	    }
	
	    .feature-card:focus-within .icon-circle,
	    .feature-card:focus .icon-circle { animation: pulseGlow 1.6s infinite; }
	  </style>
	
	  <h2 class="text-4xl font-bold text-center mb-6">Take <span class="text-green-400">full control</span> of your finances</h2>
	  <p class="text-lg mb-16 text-center text-gray-400">Explore the powerful tools and insights Enomy-Finances offers to help you manage your wealth efficiently.</p>
	
	  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-12 max-w-6xl mx-auto">
	
	    <!-- Card 1 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-green-400 to-teal-500 icon-circle" style="--glow: rgba(52,211,153,0.9);">
	          <i class="fa-solid fa-desktop text-3xl text-white"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">User-Friendly Interface</h3>
	        <p class="text-gray-400 text-sm">Simple, intuitive design for desktop &amp; mobile.</p>
	      </div>
	    </div>
	
	    <!-- Card 2 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-blue-400 to-purple-500 icon-circle" style="--glow: rgba(99,102,241,0.9);">
	          <i class="fa-solid fa-coins text-3xl text-yellow-300"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">Real-Time Currency Conversion</h3>
	        <p class="text-gray-400 text-sm">Instant GBP, USD, EUR, BRL, JPY &amp; TRY rates.</p>
	      </div>
	    </div>
	
	    <!-- Card 3 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-pink-500 to-red-500 icon-circle" style="--glow: rgba(236,72,153,0.9);">
	          <i class="fa-solid fa-chart-line text-3xl text-white"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">Investment Quote Generator</h3>
	        <p class="text-gray-400 text-sm">Calculate returns, taxes, fees &amp; profits.</p>
	      </div>
	    </div>
	
	    <!-- Card 4 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 icon-circle" style="--glow: rgba(249,115,22,0.9);">
	          <i class="fa-solid fa-lock text-3xl text-white"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">Secure Data Storage</h3>
	        <p class="text-gray-400 text-sm">Encrypted storage for data, transactions &amp; quotes.</p>
	      </div>
	    </div>
	
	    <!-- Card 5 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-red-400 to-pink-500 icon-circle" style="--glow: rgba(248,113,113,0.9);">
	          <i class="fa-solid fa-bug text-3xl text-white"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">Error Handling &amp; Logging</h3>
	        <p class="text-gray-400 text-sm">Graceful recovery, logs &amp; cached safety.</p>
	      </div>
	    </div>
	
	    <!-- Card 6 -->
	    <div tabindex="0" class="relative bg-gray-900 border border-gray-700 rounded-2xl shadow-xl p-6 group feature-card">
	      <div class="absolute -top-8 left-1/2 -translate-x-1/2">
	        <div class="p-4 rounded-full bg-gradient-to-br from-indigo-400 to-blue-600 icon-circle" style="--glow: rgba(99,102,241,0.9);">
	          <i class="fa-solid fa-chart-pie text-3xl text-white"></i>
	        </div>
	      </div>
	      <div class="pt-12 text-center">
	        <h3 class="text-xl font-semibold mb-2">Interactive Data Representation</h3>
	        <p class="text-gray-400 text-sm">Numeric insights &amp; visual charts for growth.</p>
	      </div>
	    </div>
	
	  </div>
	</section>
	
	<!-- About Us -->
    <section id="about" class="py-20 px-10 bg-gradient-to-b from-black to-gray-900">
        <h2 class="text-4xl font-bold text-center mb-6">About <span class="text-green-400">Us</span></h2>
        <p class="max-w-4xl mx-auto text-center text-gray-300 leading-relaxed">
            Enomy-Finances is a trusted provider of financial services, specializing in mortgages, savings, investments, and budgeting. 
            We are committed to offering personalized advice and innovative solutions to meet the needs of individuals and businesses. 
            Our mission is to empower clients with the tools and guidance needed for long-term financial success.
        </p>
    </section>

   <!-- Our Services -->
    <section id="services" class="py-20 px-10 bg-gradient-to-b from-gray-900 to-black">
        <h2 class="text-4xl font-bold text-center mb-12">Our <span class="text-green-400">Services</span></h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10 max-w-6xl mx-auto text-center">

            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-coins text-green-400 text-4xl mb-4"></i>
                <h3 class="text-xl font-semibold mb-2">Currency Conversion</h3>
                <p class="text-gray-400 text-sm">Real-time conversion between GBP, USD, EUR, BRL, JPY &amp; TRY with transparent fees.</p>
            </div>

            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-piggy-bank text-green-400 text-4xl mb-4"></i>
                <h3 class="text-xl font-semibold mb-2">Savings &amp; Investments</h3>
                <p class="text-gray-400 text-sm">Personalized plans with quotes predicting returns, fees, and taxes over time.</p>
            </div>

            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-briefcase text-green-400 text-4xl mb-4"></i>
                <h3 class="text-xl font-semibold mb-2">Financial Planning</h3>
                <p class="text-gray-400 text-sm">Budgeting, debt consolidation, portfolio management, and retirement planning.</p>
            </div>

            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-shield-halved text-green-400 text-4xl mb-4"></i>
                <h3 class="text-xl font-semibold mb-2">Data Security</h3>
                <p class="text-gray-400 text-sm">Advanced encryption &amp; backups ensure data protection and integrity.</p>
            </div>

            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-globe text-green-400 text-4xl mb-4"></i>
                <h3 class="text-xl font-semibold mb-2">Web-Based Platform</h3>
                <p class="text-gray-400 text-sm">Manage finances anytime, anywhere with real-time data & insights.</p>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section id="why" class="py-20 px-10 bg-gradient-to-b from-black to-gray-900">
        <h2 class="text-4xl font-bold text-center mb-12">Why <span class="text-green-400">Choose Us</span>?</h2>
        <div class="max-w-4xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-user-tie text-green-400 text-4xl mb-4"></i>
                <h3 class="text-lg font-semibold">Expert Advice</h3>
                <p class="text-gray-400 text-sm">Tailored to your financial needs.</p>
            </div>
            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-lock text-green-400 text-4xl mb-4"></i>
                <h3 class="text-lg font-semibold">Secure &amp; Reliable</h3>
                <p class="text-gray-400 text-sm">Strong data protection systems.</p>
            </div>
            <div class="bg-gray-800/40 p-8 rounded-2xl shadow-lg">
                <i class="fa-solid fa-laptop text-green-400 text-4xl mb-4"></i>
                <h3 class="text-lg font-semibold">User-Friendly</h3>
                <p class="text-gray-400 text-sm">Easy-to-use web platform anytime.</p>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20 px-10 bg-black">
        <h2 class="text-4xl font-bold mb-6 text-center">Contact Us</h2>
        <p class="text-lg mb-12 text-center text-gray-400">We're here to help you build a stronger financial future.</p>
        
        <div class="max-w-2xl mx-auto">
            <form class="bg-gray-800/40 rounded-2xl p-8 shadow-lg space-y-6">
                <div>
                    <label for="name" class="block text-gray-300 mb-2">Full Name</label>
                    <input type="text" id="name" name="name" class="w-full p-3 rounded-lg bg-black/60 border border-gray-700 text-white focus:outline-none focus:border-green-500">
                </div>
                <div>
                    <label for="email" class="block text-gray-300 mb-2">Email</label>
                    <input type="email" id="email" name="email" class="w-full p-3 rounded-lg bg-black/60 border border-gray-700 text-white focus:outline-none focus:border-green-500">
                </div>
                <div>
                    <label for="message" class="block text-gray-300 mb-2">Message</label>
                    <textarea id="message" name="message" rows="4" class="w-full p-3 rounded-lg bg-black/60 border border-gray-700 text-white focus:outline-none focus:border-green-500"></textarea>
                </div>
                <button type="submit" class="bg-green-600 text-black px-6 py-3 rounded-lg font-semibold hover:bg-green-500 transition">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-gray-400 py-8">
        <div class="max-w-6xl mx-auto flex flex-col md:flex-row justify-between items-center">
            <p class="text-sm">2025 Enomy-Finances. All rights reserved.</p>
            <div class="flex space-x-6 mt-4 md:mt-0">
                <a href="#" class="hover:text-white"><i class="fab fa-facebook"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-twitter"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </footer>
</body>
</html>
