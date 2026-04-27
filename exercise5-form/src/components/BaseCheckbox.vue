<script setup>
const props = defineProps({
  label: String,
  modelValue: Boolean,
  required: Boolean,
  error: String
})

const emit = defineEmits(['update:modelValue'])
</script>

<template>
  <div class="flex flex-col gap-1.5">
    <label class="flex items-start gap-3 cursor-pointer group">
      <div class="relative flex items-center pt-0.5">
        <input
          type="checkbox"
          :checked="modelValue"
          @change="emit('update:modelValue', $event.target.checked)"
          class="peer sr-only"
        />
        <!-- Custom Checkbox -->
        <div :class="[
          'h-5 w-5 rounded border transition-all duration-200 flex items-center justify-center',
          modelValue 
            ? 'bg-blue-600 border-blue-600' 
            : error ? 'bg-red-50 border-red-300' : 'bg-slate-50 border-slate-300 group-hover:border-slate-400'
        ]">
          <svg v-if="modelValue" class="h-3.5 w-3.5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="3.5">
            <path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7" />
          </svg>
        </div>
      </div>
      
      <span :class="['text-sm transition-colors', error ? 'text-red-600 font-medium' : 'text-slate-600']">
        {{ label }}
        <span v-if="required" class="text-red-500">*</span>
      </span>
    </label>

    <!-- Error -->
    <p v-if="error" class="text-xs font-medium text-red-500 ml-8">
      {{ error }}
    </p>
  </div>
</template>