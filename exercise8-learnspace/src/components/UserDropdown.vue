<script setup>
import { ref } from 'vue'

const isOpen = ref(false)
</script>

<template>
  <div class="relative">
    <button 
      @click="isOpen = !isOpen"
      class="flex items-center gap-2 border border-slate-200 rounded-full px-4 py-2 bg-white hover:bg-slate-50 transition-colors"
    >
      <div class="w-6 h-6 bg-indigo-100 rounded-full flex items-center justify-center text-indigo-600 font-bold text-xs">ST</div>
      <span class="text-sm font-medium text-slate-700">Student</span>
      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-slate-400 transition-transform" :class="{'rotate-180': isOpen}" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
      </svg>
    </button>

    <!-- Dropdown Menu -->
    <div 
      v-if="isOpen"
      class="absolute right-0 mt-2 w-48 bg-white rounded-xl shadow-lg border border-slate-100 py-1 z-50"
    >
      <a href="#" class="block px-4 py-2 text-sm text-slate-700 hover:bg-slate-50">Profile</a>
      <a href="#" class="block px-4 py-2 text-sm text-slate-700 hover:bg-slate-50">Settings</a>
      <hr class="my-1 border-slate-100">
      <a href="#" class="block px-4 py-2 text-sm text-red-600 hover:bg-slate-50">Logout</a>
    </div>
  </div>
</template>
