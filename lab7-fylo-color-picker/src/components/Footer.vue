<template>
  <footer class="bg-darkBlue-02 text-white pt-40 pb-10">
    <div class="container mx-auto px-6">
      <!-- Logo -->
      <div class="mb-10">
        <img src="../assets/images-fylo/logo-dark-mode.svg" alt="Fylo Logo" class="h-8" />
      </div>

      <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
        <!-- Contact Info -->
        <div class="flex flex-col space-y-4">
          <div class="flex items-start">
            <img src="../assets/images-fylo/icon-location.svg" alt="Location" class="mr-4 mt-1 w-4 h-4 flex-shrink-0" />
            <p class="text-sm text-gray-300">
              Kmutt Learning Space Lx.11
            </p>
          </div>
          <div class="flex items-center">
            <img src="../assets/images-fylo/icon-phone.svg" alt="Phone" class="mr-4 w-4 h-4 flex-shrink-0" />
            <p class="text-sm text-gray-300">+1-543-123-4567</p>
          </div>
          <div class="flex items-center">
            <img src="../assets/images-fylo/icon-email.svg" alt="Email" class="mr-4 w-4 h-4 flex-shrink-0" />
            <p class="text-sm text-gray-300">example@fylo.com</p>
          </div>
        </div>

        <!-- Links 1 -->
        <div class="flex flex-col space-y-2 md:pl-10">
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">About Us</a>
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Jobs</a>
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Press</a>
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Blog</a>
        </div>

        <!-- Links 2 -->
        <div class="flex flex-col space-y-2">
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Contact Us</a>
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Terms</a>
          <a href="#" class="hover:text-accent-cyan text-sm text-gray-300 transition duration-200">Privacy</a>
        </div>

        <!-- Social Icons -->
        <div class="flex justify-center md:justify-end space-x-4">
          <a href="#"
            class="border border-white rounded-full w-8 h-8 flex items-center justify-center hover:text-accent-cyan hover:border-accent-cyan transition duration-200">
            <img src="../assets/images-fylo/facebook.svg" alt="Facebook" class="w-4 h-4" />
          </a>
          <a href="#"
            class="border border-white rounded-full w-8 h-8 flex items-center justify-center hover:text-accent-cyan hover:border-accent-cyan transition duration-200">
            <img src="../assets/images-fylo/twitter.svg" alt="Twitter" class="w-4 h-4" />
          </a>
          <a href="#"
            class="border border-white rounded-full w-8 h-8 flex items-center justify-center hover:text-accent-cyan hover:border-accent-cyan transition duration-200">
            <img src="../assets/images-fylo/instagram.svg" alt="Instagram" class="w-4 h-4" />
          </a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
</script>

<style scoped></style>
