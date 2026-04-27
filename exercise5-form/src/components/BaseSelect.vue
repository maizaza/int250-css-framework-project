<script setup>
const props = defineProps({
  label: String,
  placeholder: String,
  options: Array,
  required: Boolean,
  modelValue: String,
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

    <!-- Select -->
    <select
      :value="modelValue"
      @change="emit('update:modelValue', $event.target.value)"
      :class="[
        'w-full rounded-lg px-4 py-2.5 text-sm transition-all duration-200 outline-none ring-1 ring-inset appearance-none bg-no-repeat bg-[right_1rem_center] bg-[length:1.5em_1.5em]',
        error
          ? 'bg-red-50 ring-red-300 text-red-900 focus:ring-2 focus:ring-red-500'
          : 'bg-slate-50 ring-slate-200 text-slate-900 focus:bg-white focus:ring-2 focus:ring-blue-500'
      ]"
      style="background-image: url('data:image/svg+xml;charset=utf-8,%3Csvg xmlns=%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22 fill=%22none%22 viewBox=%220%22%3E%3Cpath stroke=%22%2364748b%22 stroke-linecap=%22round%22 stroke-linejoin=%22round%22 stroke-width=%221.5%22 d=%22m6 9 6 6 6-6%22%2F%3E%3C%2Fsvg%3E');"
    >
      <option value="" disabled>{{ placeholder }}</option>
      <option
        v-for="opt in options"
        :key="opt.value"
        :value="opt.value"
      >
        {{ opt.label }}
      </option>
    </select>

    <!-- Error -->
    <p v-if="error" class="text-xs font-medium text-red-500">
      {{ error }}
    </p>

  </div>
</template>

<style scoped></style>