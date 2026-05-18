<script setup>
defineProps({
  isOpen: Boolean,
  course: Object
})
const emit = defineEmits(['close'])
</script>

<template>
  <div v-if="isOpen" class="fixed inset-0 bg-black/50 backdrop-blur-sm flex items-center justify-center z-50">
    <div class="bg-white rounded-2xl p-6 max-w-lg w-full mx-4 space-y-4 shadow-xl">
      <div class="flex justify-between items-center">
        <div>
          <span class="bg-blue-50 text-blue-600 text-xs font-semibold px-3 py-1 rounded-full">{{ course?.code }}</span>
          <h3 class="text-xl font-bold text-slate-800 mt-2">{{ course?.title }}</h3>
        </div>
        <button @click="emit('close')" class="text-slate-400 hover:text-slate-600 text-2xl">&times;</button>
      </div>
      
      <p class="text-slate-600 text-sm">{{ course?.description }}</p>
      
      <div class="border-t border-slate-100 pt-4 mt-4 flex justify-end">
        <button @click="emit('close')" class="bg-indigo-600 text-white px-4 py-2 rounded-xl hover:bg-indigo-700 transition-colors">
          Close
        </button>
      </div>
    </div>
  </div>
</template>
