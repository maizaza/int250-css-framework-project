<script setup>
import { ref } from 'vue'
import AppNavbar from './components/AppNavbar.vue'
import StarCard from './components/StarCard.vue'
import CourseCard from './components/CourseCard.vue'
import Footer from './components/Footer.vue'
import CourseModal from './components/CourseModal.vue'
import ToastNotification from './components/ToastNotification.vue'

// Stats Data
const stats = ref([
  { title: 'Active Courses', value: '3' },
  { title: 'Pending Assignments', value: '2' },
  { title: 'Completed Tasks', value: '8' },
  { title: 'Overall Progress', value: '72%' }
])

// Courses Data
const courses = ref([
  {
    id: 1,
    code: 'INT250',
    title: 'CSS Framework',
    description: 'Learn how to build responsive and interactive web applications using Vue.js and Tailwind CSS.',
    progress: 72,
    status: 'In Progress'
  },
  {
    id: 2,
    code: 'INT161',
    title: 'Object-Oriented Programming',
    description: 'Practice Java programming, object-oriented design, and software development principles.',
    progress: 58,
    status: 'In Progress'
  }
])

// State for Modal and Toast
const isModalOpen = ref(false)
const selectedCourse = ref(null)
const showToast = ref(false)
const toastMessage = ref('')

function openModal(course) {
  selectedCourse.value = course
  isModalOpen.value = true
}

function triggerToast(message) {
  toastMessage.value = message
  showToast.value = true
  setTimeout(() => showToast.value = false, 3000) // Hide after 3 seconds
}
</script>

<template>
  <div class="min-h-screen bg-slate-50 text-slate-800 font-sans flex flex-col justify-between">
    
    <!-- header -->
    <AppNavbar />

    <main class="max-w-7xl mx-auto px-8 py-8 space-y-8 w-full flex-grow">
      
      <!-- banner -->
      <section class="bg-indigo-600 rounded-3xl p-10 text-white relative overflow-hidden">
        <div class="relative z-10 space-y-4">
          <p class="text-sm font-medium flex items-center gap-1">Welcome back, Student <span class="text-yellow-300">👋</span></p>
          <h2 class="text-4xl font-bold">Continue your learning journey today.</h2>
          <p class="text-indigo-100 max-w-2xl">Track your courses, review assignments, and monitor your learning progress in one place.</p>
          <button class="bg-white text-indigo-600 font-medium px-6 py-3 rounded-xl mt-2 hover:bg-slate-50 transition-colors">
            View My Courses
          </button>
        </div>
      </section>

      <!-- stats -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
        <!-- stat card -->
        <StarCard 
          v-for="stat in stats" 
          :key="stat.title" 
          :title="stat.title" 
          :value="stat.value" 
        />
      </div>

      <!-- courses -->
      <section class="space-y-6">
        <div>
          <h3 class="text-2xl font-bold text-slate-800">My Courses</h3>
          <p class="text-slate-500 text-sm">Review your course progress and assignment status.</p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <!-- course card -->
          <CourseCard 
            v-for="course in courses" 
            :key="course.id" 
            :course="course" 
            @view-details="openModal"
            @submit-assignment="triggerToast('Assignment submitted successfully!')"
          />
        </div>
      </section>

    </main>

    <!-- footer -->
    <Footer />

    <!-- Modal and Toast -->
    <CourseModal 
      :isOpen="isModalOpen" 
      :course="selectedCourse" 
      @close="isModalOpen = false" 
    />

    <ToastNotification 
      :show="showToast" 
      :message="toastMessage" 
    />

  </div>
</template>
