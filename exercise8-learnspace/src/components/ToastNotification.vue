<script setup>
defineProps({
  show: Boolean,
  message: String
})
</script>

<template>
  <div 
    v-if="show" 
    class="fixed bottom-4 right-4 bg-slate-800 text-white px-4 py-3 rounded-xl shadow-lg z-50 flex items-center gap-2 transition-all transform translate-y-0"
  >
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
    </svg>
    <span class="text-sm font-medium">{{ message }}</span>
  </div>
</template>
