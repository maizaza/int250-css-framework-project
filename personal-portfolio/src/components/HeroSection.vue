<script setup>
</script>

<template>
  <section id="home"
    class="min-height-screen flex items-center justify-center pt-24 pb-16 bg-gradient-to-br from-indigo-50 via-white to-pink-50 dark:from-gray-900 dark:via-gray-800 dark:to-indigo-950 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col md:flex-row items-center justify-between gap-12">
      <!-- Text Content -->
      <div class="flex-1 text-center md:text-left">
        <span class="text-sm font-semibold text-indigo-600 dark:text-indigo-400 uppercase tracking-wider">Welcome to my
          portfolio</span>
        <h1 class="mt-4 text-4xl sm:text-5xl lg:text-6xl font-bold text-gray-900 dark:text-white tracking-tight">
          Hi, I'm <span class="text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 to-pink-600">Siwach
            Saeoung (Mai)</span>
        </h1>
        <p class="mt-2 text-xl sm:text-2xl font-medium text-gray-600 dark:text-gray-300">
          IT Student | Aspiring Fullstack & AI Developer
        </p>
        <p class="mt-6 text-lg text-gray-500 dark:text-gray-400 max-w-2xl">
          I am a passionate IT student focusing on Fullstack development and AI. I love exploring new technologies,
          solving complex problems, and building beautiful, responsive web applications and engaging games.
        </p>
        <div class="mt-8 flex flex-col sm:flex-row justify-center md:justify-start gap-4">
          <a href="#projects"
            class="inline-flex items-center justify-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 transition-all duration-200 active:scale-95">
            View Projects
          </a>
          <a href="#contact"
            class="inline-flex items-center justify-center px-6 py-3 border border-gray-300 dark:border-gray-700 text-base font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 dark:bg-gray-800 dark:text-gray-200 dark:hover:bg-gray-700 transition-all duration-200 active:scale-95">
            Contact Me
          </a>
        </div>
      </div>

      <!-- Image -->
      <div class="flex-1 flex justify-center md:justify-end">
        <div class="relative w-64 h-64 sm:w-80 sm:h-80 lg:w-96 lg:h-96">
          <div
            class="absolute inset-0 bg-gradient-to-r from-indigo-400 to-pink-400 rounded-full blur-3xl opacity-30 animate-pulse">
          </div>
          <img src="../assets/profile.jpg" alt="Siwach Saeoung"
            class="relative rounded-full w-full h-full object-cover border-4 border-white dark:border-gray-800 shadow-2xl" />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.min-height-screen {
  min-height: calc(100vh - 4rem);
  /* Account for navbar height */
}
</style>
