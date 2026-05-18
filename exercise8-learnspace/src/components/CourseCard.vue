<script setup>
defineProps({
  course: {
    type: Object,
    required: true
  }
})

const emit = defineEmits(['view-details', 'submit-assignment'])
</script>

<template>
  <div class="bg-white p-6 rounded-2xl border border-slate-100 shadow-sm flex flex-col justify-between space-y-6">
    <div class="space-y-4">
      <div class="flex items-center justify-between">
        <span class="bg-blue-50 text-blue-600 text-xs font-semibold px-3 py-1 rounded-full">{{ course.code }}</span>
        <span class="bg-yellow-50 text-yellow-600 text-xs font-semibold px-3 py-1 rounded-full">{{ course.status }}</span>
      </div>
      <div>
        <h4 class="text-xl font-bold text-slate-800">{{ course.title }}</h4>
        <p class="text-slate-500 text-sm mt-1">{{ course.description }}</p>
      </div>
    </div>

    <div class="space-y-3">
      <div class="flex items-center justify-between text-sm">
        <span class="font-medium text-slate-600">Progress</span>
        <span class="font-bold text-slate-800">{{ course.progress }}%</span>
      </div>
      <div class="w-full bg-slate-100 h-2 rounded-full overflow-hidden">
        <div class="bg-indigo-600 h-full rounded-full" :style="`width: ${course.progress}%`"></div>
      </div>
    </div>

    <div class="flex items-center gap-3">
      <button 
        @click="emit('view-details', course)"
        class="flex-1 bg-indigo-600 text-white text-sm font-medium px-4 py-3 rounded-xl hover:bg-indigo-700 transition-colors"
      >
        View Course Details
      </button>
      <button 
        @click="emit('submit-assignment')"
        class="flex-1 bg-white text-slate-700 text-sm font-medium px-4 py-3 rounded-xl border border-slate-200 hover:bg-slate-50 transition-colors"
      >
        Submit Assignment
      </button>
    </div>
  </div>
</template>
