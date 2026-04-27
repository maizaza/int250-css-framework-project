<script setup>
import { computed } from "vue";

const props = defineProps({
  label: String,
  placeholder: String,
  required: Boolean,
  modelValue: String,
  error: String,
  maxLength: {
    type: Number,
    default: 200
  },
  rows: {
    type: Number,
    default: 4
  }
})

const emit = defineEmits(['update:modelValue'])

const characterCount = computed(() => props.modelValue?.length || 0)
</script>

<template>
  <div class="flex flex-col gap-1.5">
    
    <!-- Label -->
    <label class="text-sm font-semibold text-slate-700">
      {{ label }}
      <span v-if="required" class="text-red-500">*</span>
    </label>

    <!-- Textarea Container -->
    <div class="relative">
      <textarea
        :placeholder="placeholder"
        :value="modelValue"
        :rows="rows"
        :maxlength="maxLength"
        @input="emit('update:modelValue', $event.target.value)"
        :class="[
          'w-full rounded-lg px-4 py-2.5 text-sm transition-all duration-200 outline-none ring-1 ring-inset resize-none',
          error
            ? 'bg-red-50 ring-red-300 placeholder:text-red-300 focus:ring-2 focus:ring-red-500'
            : 'bg-slate-50 ring-slate-200 placeholder:text-slate-400 focus:bg-white focus:ring-2 focus:ring-blue-500'
        ]"
      ></textarea>
    </div>

    <!-- Footer: Hint and Counter -->
    <div class="flex justify-between items-center px-1">
      <p class="text-xs text-slate-500 italic">
        Optional: briefly describe your interests or previous experience.
      </p>
      <p :class="['text-xs font-medium', characterCount >= maxLength ? 'text-red-500' : 'text-slate-500']">
        {{ characterCount }} / {{ maxLength }}
      </p>
    </div>

    <!-- Error -->
    <p v-if="error" class="text-xs font-medium text-red-500">
      {{ error }}
    </p>

  </div>
</template>