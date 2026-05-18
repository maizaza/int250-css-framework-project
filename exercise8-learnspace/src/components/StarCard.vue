<script setup>
defineProps({
  title: String,
  value: String
})
</script>

<template>
  <div class="bg-white p-6 rounded-2xl border border-slate-100 shadow-sm">
    <p class="text-sm text-slate-500 font-medium">{{ title }}</p>
    <p class="text-3xl font-bold text-slate-800 mt-2">{{ value }}</p>
  </div>
</template>
