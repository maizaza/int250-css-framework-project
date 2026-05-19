<script setup>
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  message: ''
})

const submitForm = () => {
  alert(`Thank you, ${form.value.name}! Your message has been sent.`)
  form.value = { name: '', email: '', message: '' }
}
</script>

<template>
  <section id="contact" class="py-20 bg-white dark:bg-gray-900 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Section Header -->
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl font-bold text-gray-900 dark:text-white sm:text-4xl">Get In Touch</h2>
        <div class="mt-4 h-1 w-20 bg-indigo-600 mx-auto rounded"></div>
        <p class="mt-4 text-lg text-gray-500 dark:text-gray-400">
          Feel free to reach out to me for collaborations, job opportunities, or just to say hello!
        </p>
      </div>

      <!-- Content Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12 max-w-5xl mx-auto">
        <!-- Left Column: Contact Info & Socials -->
        <div class="space-y-8">
          <div>
            <h3 class="text-2xl font-semibold text-gray-900 dark:text-white mb-4">Contact Information</h3>
            <p class="text-gray-600 dark:text-gray-300 leading-relaxed">
              I am currently looking for internship or junior developer opportunities. If you have any questions or just
              want to connect, feel free to reach out.
            </p>
          </div>

          <!-- Contact Details -->
          <div class="space-y-4">
            <div class="flex items-center space-x-4">
              <div
                class="w-10 h-10 rounded-full bg-indigo-50 dark:bg-indigo-900/30 flex items-center justify-center text-indigo-600">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                  </path>
                </svg>
              </div>
              <div>
                <p class="text-sm font-medium text-gray-500 dark:text-gray-400">Email</p>
                <a href="mailto:mai.siwach@gmail.com"
                  class="text-base font-medium text-gray-900 dark:text-white hover:text-indigo-600">mai.siwach@gmail.com</a>
              </div>
            </div>

            <div class="flex items-center space-x-4">
              <div
                class="w-10 h-10 rounded-full bg-indigo-50 dark:bg-indigo-900/30 flex items-center justify-center text-indigo-600">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.828 0l-4.243-4.243a8 8 0 1111.314 0z"></path>
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                </svg>
              </div>
              <div>
                <p class="text-sm font-medium text-gray-500 dark:text-gray-400">Location</p>
                <p class="text-base font-medium text-gray-900 dark:text-white">Bangkok, Thailand</p>
              </div>
            </div>
          </div>

          <!-- Social Links -->
          <div>
            <h4 class="text-sm font-semibold text-gray-900 dark:text-white uppercase tracking-wider mb-4">Connect with
              me</h4>
            <div class="flex space-x-4">
              <!-- GitHub -->
              <a href="https://github.com/maizaza" target="_blank" rel="noopener noreferrer"
                class="w-11 h-11 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-400 hover:bg-indigo-600 hover:text-white dark:hover:bg-indigo-600 dark:hover:text-white transition-all duration-200 active:scale-95">
                <span class="sr-only">GitHub</span>
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                  <path fill-rule="evenodd"
                    d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.026 2.747-1.026.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                    clip-rule="evenodd"></path>
                </svg>
              </a>
              <!-- LinkedIn -->
              <a href="#"
                class="w-11 h-11 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-400 hover:bg-indigo-600 hover:text-white dark:hover:bg-indigo-600 dark:hover:text-white transition-all duration-200 active:scale-95">
                <span class="sr-only">LinkedIn</span>
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                  <path fill-rule="evenodd"
                    d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.779-1.75-1.75s.784-1.75 1.75-1.75 1.75.779 1.75 1.75-.784 1.75-1.75 1.75zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"
                    clip-rule="evenodd"></path>
                </svg>
              </a>
            </div>
          </div>
        </div>

        <!-- Right Column: Contact Form -->
        <div class="bg-gray-50 dark:bg-gray-800/50 p-8 rounded-lg border border-gray-100 dark:border-gray-700">
          <form @submit.prevent="submitForm" class="space-y-6">
            <div>
              <label for="name" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Name</label>
              <input type="text" id="name" v-model="form.name" required
                class="mt-1 block w-full px-4 py-2 bg-white dark:bg-gray-900 border border-gray-300 dark:border-gray-700 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 text-gray-900 dark:text-white" />
            </div>

            <div>
              <label for="email" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Email</label>
              <input type="email" id="email" v-model="form.email" required
                class="mt-1 block w-full px-4 py-2 bg-white dark:bg-gray-900 border border-gray-300 dark:border-gray-700 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 text-gray-900 dark:text-white" />
            </div>

            <div>
              <label for="message" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Message</label>
              <textarea id="message" v-model="form.message" rows="4" required
                class="mt-1 block w-full px-4 py-2 bg-white dark:bg-gray-900 border border-gray-300 dark:border-gray-700 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 text-gray-900 dark:text-white"></textarea>
            </div>

            <div>
              <button type="submit"
                class="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-medium py-2 px-4 rounded-md transition-all duration-200 active:scale-95">
                Send Message
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</template>
