<script setup>
import { computed, reactive, ref } from "vue";
import BaseInput from "./components/BaseInput.vue";
import BaseSelect from "./components/BaseSelect.vue";
import BaseTextarea from "./components/BaseTextArea.vue";
import BaseRadioGroup from "./components/BaseRadioGroup.vue";
import BaseCheckbox from "./components/BaseCheckbox.vue";
import SuccessModal from "./components/SuccessModal.vue";

const initialForm = {
  fullName: "",
  studentId: "",
  email: "",
  password: "",
  program: "",
  yearLevel: "",
  bio: "",
  track: "",
  agree: false,
}

const form = reactive({ ...initialForm })
const submitted = ref(false)
const showSuccessModal = ref(false)
const lastSubmittedData = ref({})

const programOptions = ref([
  { label: "Computer Science", value: "CS" },
  { label: "Digital Service Innovation", value: "DSI" },
  { label: "Information Technology", value: "IT" },
  { label: "Software Engineering", value: "SE" },
])

const trackOptions = ref([
  { label: "Frontend UI Development", value: "frontend" },
  { label: "Backend API Design", value: "backend" },
  { label: "UX/UI Design", value: "ux" },
  { label: "AI for Productivity", value: "ai" },
])

const yearOptions = ref([
  { label: "Year 1", value: "1", description: "Beginner student level" },
  { label: "Year 2", value: "2", description: "Intermediate foundation" },
  { label: "Year 3", value: "3", description: "Project-focused stage" },
  { label: "Year 4", value: "4", description: "Internship or capstone stage" },
])

const errors = computed(() => {
  if (!submitted.value) return {}
  const e = {}

  if (!form.fullName.trim()) e.fullName = "Full name is required."

  if (!form.studentId.trim()) {
    e.studentId = "Student ID is required."
  } else if (!/^\d{11}$/.test(form.studentId)) {
    e.studentId = "Student ID must be 11 digits."
  }

  if (!form.email.trim()) {
    e.email = "Email is required."
  } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(form.email)) {
    e.email = "Please enter a valid email address."
  }

  if (!form.password.trim()) {
    e.password = "Password is required."
  } else if (form.password.length < 8) {
    e.password = "Password must be at least 8 characters."
  }

  if (!form.program) e.program = "Please select your program."
  if (!form.yearLevel) e.yearLevel = "Please select your year level."
  if (!form.track) e.track = "Please choose a workshop track."
  if (!form.agree) e.agree = "You must confirm the information."

  return e
})

const isFormValid = computed(() => Object.keys(errors.value).length === 0)

function handleSubmit() {
  submitted.value = true

  if (!isFormValid.value) {
    // Scroll to first error
    const firstError = Object.keys(errors.value)[0]
    console.log("Validation failed", firstError)
    return
  }

  // Save data for modal and show it
  lastSubmittedData.value = { ...form }
  showSuccessModal.value = true
}

function handleReset() {
  Object.assign(form, initialForm)
  submitted.value = false
}

function closeSuccessModal() {
  showSuccessModal.value = false
  handleReset()
}
</script>

<template>
  <div class="min-h-screen bg-slate-50 py-12 px-4 sm:px-6 lg:px-8">
    <div class="mx-auto max-w-4xl">
      <div class="overflow-hidden rounded-3xl bg-white shadow-2xl shadow-blue-900/5 ring-1 ring-slate-200">

        <!-- Header -->
        <div class="border-b border-slate-100 bg-white px-8 py-8 sm:px-10">
          <p class="text-xs font-bold uppercase tracking-widest text-blue-600">Hands-on Lab</p>
          <h1 class="mt-2 text-3xl font-extrabold tracking-tight text-slate-900 sm:text-4xl">
            Student Workshop Registration Form
          </h1>
          <p class="mt-3 text-base text-slate-500">
            Practice styling form controls, focus states, and validation feedback with Vue.js and Tailwind CSS.
          </p>
        </div>

        <!-- Form -->
        <form @submit.prevent="handleSubmit" class="p-8 sm:p-10">

          <!-- Tips -->
          <div
            class="mb-10 flex items-center gap-3 rounded-2xl bg-blue-50/50 p-4 text-sm text-blue-700 ring-1 ring-blue-100">
            <svg class="h-5 w-5 flex-shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            <p><span class="font-bold">Tip:</span> Try submitting with empty fields to test validation feedback.</p>
          </div>

          <!-- Inputs Grid -->
          <div class="grid grid-cols-1 gap-x-8 gap-y-10 md:grid-cols-2">
            <BaseInput v-model="form.fullName" label="Full Name" placeholder="Siwach Saeoung" :required="true"
              :error="errors.fullName" />

            <BaseInput v-model="form.studentId" label="Student ID" placeholder="67130500040" :required="true"
              :error="errors.studentId" />

            <BaseInput v-model="form.email" label="Email" placeholder="example@gmail.com" :required="true" type="email"
              :error="errors.email" />

            <BaseInput v-model="form.password" label="Password" placeholder="Enter your password" :required="true"
              type="password" :error="errors.password" />

            <BaseSelect v-model="form.program" label="Program / Major" placeholder="Computer Science" :required="true"
              :options="programOptions" :error="errors.program" />

            <BaseSelect v-model="form.track" label="Workshop Track" placeholder="Frontend UI Development"
              :required="true" :options="trackOptions" :error="errors.track" />

            <div class="md:col-span-2">
              <BaseRadioGroup v-model="form.yearLevel" label="Year Level" :required="true" :options="yearOptions"
                :error="errors.yearLevel" />
            </div>

            <div class="md:col-span-2">
              <BaseTextarea v-model="form.bio" label="Short Bio" placeholder="Tell us about your interest..."
                :error="errors.bio" />
            </div>

            <div class="md:col-span-2">
              <BaseCheckbox v-model="form.agree"
                label="I confirm that the information provided is correct and I agree to participate in the workshop activities."
                :required="true" :error="errors.agree" />
            </div>
          </div>

          <!-- Buttons -->
          <div class="mt-12 flex flex-col-reverse gap-4 border-t border-slate-100 pt-8 sm:flex-row sm:justify-end">
            <button type="button" @click="handleReset"
              class="inline-flex items-center justify-center rounded-xl bg-white px-6 py-3 text-sm font-bold text-slate-700 ring-1 ring-slate-200 transition-all hover:bg-slate-50 active:scale-[0.98]">
              Reset Form
            </button>
            <button type="submit"
              class="inline-flex items-center justify-center rounded-xl bg-blue-600 px-8 py-3 text-sm font-bold text-white shadow-lg shadow-blue-200 transition-all hover:bg-blue-700 active:scale-[0.98]">
              Submit Registration
            </button>
          </div>

        </form>

      </div>

      <!-- Footer Info -->
      <div class="mt-8 text-center text-xs text-slate-400">
        <p>&copy; 2025 INT250 CSS Framework Workshop. All rights reserved.</p>
      </div>
    </div>

    <!-- Success Modal -->
    <SuccessModal :show="showSuccessModal" :formData="lastSubmittedData" @close="closeSuccessModal" />
  </div>
</template>

<style scoped>
/* Optional: Custom scrollbar for textarea */
textarea::-webkit-scrollbar {
  width: 8px;
}

textarea::-webkit-scrollbar-track {
  background: transparent;
}

textarea::-webkit-scrollbar-thumb {
  background: #e2e8f0;
  border-radius: 10px;
}

textarea::-webkit-scrollbar-thumb:hover {
  background: #cbd5e1;
}
</style>