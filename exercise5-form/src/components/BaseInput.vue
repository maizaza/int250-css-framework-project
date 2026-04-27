<script setup>
const props = defineProps({
  label: String,
  placeholder: String,
  required: Boolean,
  type: {
    type: String,
    default: 'text'
  },
  modelValue: [String, Number],
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

    <!-- Input -->
    <input
      :type="type"
      :placeholder="placeholder"
      :value="modelValue"
      @input="emit('update:modelValue', $event.target.value)"
      :class="[
        'w-full rounded-lg px-4 py-2.5 text-sm transition-all duration-200 outline-none ring-1 ring-inset',
        error
          ? 'bg-red-50 ring-red-300 placeholder:text-red-300 focus:ring-2 focus:ring-red-500'
          : 'bg-slate-50 ring-slate-200 placeholder:text-slate-400 focus:bg-white focus:ring-2 focus:ring-blue-500'
      ]"
    />

    <!-- Error -->
    <p v-if="error" class="text-xs font-medium text-red-500">
      {{ error }}
    </p>

  </div>
</template>