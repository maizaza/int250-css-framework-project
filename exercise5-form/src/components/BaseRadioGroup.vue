<script setup>
const props = defineProps({
  label: String,
  options: Array,
  modelValue: [String, Number],
  required: Boolean,
  error: String
})

const emit = defineEmits(['update:modelValue'])
</script>

<template>
  <div class="flex flex-col gap-1.5">
    
    <!-- Label -->
    <label class="text-sm font-semibold text-slate-700">
      {{ label }}
      <span v-if="required" class="text-red-500">*</span>
    </label>

    <!-- Options Grid -->
    <div class="grid grid-cols-2 sm:grid-cols-4 gap-3 mt-1">
      <label
        v-for="option in options"
        :key="option.value"
        :class="[
          'relative flex flex-col p-4 cursor-pointer rounded-xl border-2 transition-all duration-200',
          modelValue === option.value
            ? 'border-blue-500 bg-blue-50/50 ring-1 ring-blue-500'
            : 'border-slate-100 bg-white hover:border-slate-300'
        ]"
      >
        <input
          type="radio"
          :value="option.value"
          :checked="modelValue === option.value"
          @change="emit('update:modelValue', option.value)"
          class="sr-only"
        />
        
        <div class="flex justify-between items-start mb-1">
          <span :class="['text-sm font-bold', modelValue === option.value ? 'text-blue-700' : 'text-slate-900']">
            {{ option.label }}
          </span>
          <!-- Custom Radio Circle -->
          <div :class="[
            'h-4 w-4 rounded-full border flex items-center justify-center transition-colors',
            modelValue === option.value ? 'border-blue-600 bg-blue-600' : 'border-slate-300'
          ]">
            <div v-if="modelValue === option.value" class="h-1.5 w-1.5 rounded-full bg-white"></div>
          </div>
        </div>
        
        <p v-if="option.description" class="text-[11px] leading-tight text-slate-500">
          {{ option.description }}
        </p>
      </label>
    </div>

    <!-- Error -->
    <p v-if="error" class="text-xs font-medium text-red-500">
      {{ error }}
    </p>

  </div>
</template>

<style scoped></style>