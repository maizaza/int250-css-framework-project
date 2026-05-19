<script setup>
import { ref } from 'vue'

const isMenuOpen = ref(false)

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value
}

const navLinks = [
  { name: 'Home', href: '#home' },
  { name: 'About', href: '#about' },
  { name: 'Skills', href: '#skills' },
  { name: 'Projects', href: '#projects' },
  { name: 'Experience', href: '#experience' },
  { name: 'Contact', href: '#contact' },
]
</script>

<template>
  <nav class="fixed top-0 left-0 right-0 z-50 bg-white/80 backdrop-blur-md border-b border-gray-100 dark:bg-gray-900/80 dark:border-gray-800 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between h-16">
        <!-- Logo -->
        <div class="flex-shrink-0 flex items-center">
          <a href="#home" class="text-xl font-bold text-indigo-600 dark:text-indigo-400">Portfolio.</a>
        </div>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-8">
          <a v-for="link in navLinks" :key="link.name" :href="link.href" 
             class="text-gray-600 hover:text-indigo-600 dark:text-gray-300 dark:hover:text-indigo-400 font-medium transition-colors duration-200">
            {{ link.name }}
          </a>
          <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md font-medium transition-all duration-200 active:scale-95">
            Hire Me
          </button>
        </div>

        <!-- Mobile Menu Button -->
        <div class="flex items-center md:hidden">
          <button @click="toggleMenu" class="w-11 h-11 flex items-center justify-center text-gray-500 hover:text-gray-600 dark:text-gray-400 dark:hover:text-gray-300 focus:outline-none active:scale-95 transition-transform">
            <span class="sr-only">Open main menu</span>
            <!-- Icon when menu is closed -->
            <svg v-if="!isMenuOpen" class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            </svg>
            <!-- Icon when menu is open -->
            <svg v-else class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
      </div>
    </div>

    <!-- Mobile Navigation -->
    <div v-show="isMenuOpen" class="md:hidden bg-white dark:bg-gray-900 border-b border-gray-100 dark:border-gray-800">
      <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
        <a v-for="link in navLinks" :key="link.name" :href="link.href" 
           @click="isMenuOpen = false"
           class="block px-3 py-2 rounded-md text-base font-medium text-gray-600 hover:text-indigo-600 hover:bg-gray-50 dark:text-gray-300 dark:hover:text-indigo-400 dark:hover:bg-gray-800 transition-colors duration-200">
          {{ link.name }}
        </a>
        <button class="w-full mt-2 bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md font-medium transition-all duration-200 active:scale-95">
          Hire Me
        </button>
      </div>
    </div>
  </nav>
</template>
