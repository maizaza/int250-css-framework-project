<script setup>
import NavBar from './components/NavBar.vue';
import Hero from './components/Hero.vue';
import Features from './components/Features.vue';
import Productive from './components/Productive.vue';
import FAQ from './components/FAQ.vue';
import Testimonial from './components/Testimonial.vue';
import EarlyAccess from './components/EarlyAccess.vue';
import Footer from './components/Footer.vue';
</script>

<template>
  <div class="font-sans antialiased bg-white text-gray-900 dark:bg-darkBlue dark:text-white min-h-screen">
    <NavBar />
    <main>
      <Hero />
      <Features />
      <Productive />
      <FAQ />
      <Testimonial />
      <EarlyAccess />
    </main>
    <Footer />
  </div>
</template>
