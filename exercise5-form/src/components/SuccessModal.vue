<script setup>
const props = defineProps({
  show: Boolean,
  formData: Object
})

const emit = defineEmits(['close'])
</script>

<template>
  <Transition
    enter-active-class="duration-300 ease-out"
    enter-from-class="opacity-0 scale-95"
    enter-to-class="opacity-100 scale-100"
    leave-active-class="duration-200 ease-in"
    leave-from-class="opacity-100 scale-100"
    leave-to-class="opacity-0 scale-95"
  >
    <div v-if="show" class="fixed inset-0 z-50 flex items-center justify-center p-4">
      <!-- Backdrop -->
      <div class="absolute inset-0 bg-slate-900/60 backdrop-blur-sm" @click="emit('close')"></div>
      
      <!-- Modal Content -->
      <div class="relative w-full max-w-md overflow-hidden rounded-2xl bg-white p-6 shadow-2xl ring-1 ring-slate-200">
        <div class="flex flex-col items-center text-center">
          <!-- Icon -->
          <div class="mb-4 flex h-16 w-16 items-center justify-center rounded-full bg-green-100 text-green-600">
            <svg class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7" />
            </svg>
          </div>
          
          <h3 class="text-xl font-bold text-slate-900">Registration Successful!</h3>
          <p class="mt-2 text-sm text-slate-600">
            Thank you for registering, <span class="font-semibold text-blue-600">{{ formData.fullName }}</span>.
            We have sent a confirmation email to <span class="font-semibold">{{ formData.email }}</span>.
          </p>
          
          <!-- Summary -->
          <div class="mt-6 w-full rounded-xl bg-slate-50 p-4 text-left">
            <h4 class="text-xs font-bold uppercase tracking-wider text-slate-400">Registration Details</h4>
            <div class="mt-3 space-y-2">
              <div class="flex justify-between text-sm">
                <span class="text-slate-500">Student ID</span>
                <span class="font-medium text-slate-900">{{ formData.studentId }}</span>
              </div>
              <div class="flex justify-between text-sm">
                <span class="text-slate-500">Workshop Track</span>
                <span class="font-medium text-slate-900 capitalize">{{ formData.track }}</span>
              </div>
            </div>
          </div>
          
          <button
            @click="emit('close')"
            class="mt-8 w-full rounded-xl bg-blue-600 py-3 text-sm font-bold text-white shadow-lg transition-all hover:bg-blue-700 active:scale-[0.98]"
          >
            Great, thanks!
          </button>
        </div>
      </div>
    </div>
  </Transition>
</template>
