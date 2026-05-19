<script setup>
const experiences = [
  {
    type: 'Team Project',
    title: 'Frontend Developer - Travelaroha',
    organization: 'Collaborative Project',
    period: '2025 - Present',
    description: 'Designed and developed the user interface for a trip management platform. Focused on building responsive storyboard pages, integrating i18n for Thai/English support, and ensuring smooth user flows.',
    icon: 'briefcase'
  },
  {
    type: 'Freelance',
    title: 'Game Developer Freelancer',
    organization: 'Fiverr',
    period: '2024 - Present',
    description: 'Offered freelance game development services on Fiverr. Developed custom game mechanics, scripts, and features for international clients, honing my problem-solving skills and adapting to diverse project requirements.',
    icon: 'briefcase'
  },
  {
    type: 'Coursework & Projects',
    title: 'Faculty Reservation System (Mockup)',
    organization: 'University Coursework',
    period: 'Academic Project',
    description: 'Developed a full-stack reservation system based on standardized faculty requirements. While all groups shared the same functional goals, I independently designed the UI/UX and implemented a custom Node.js backend to deliver a unique and performant solution using HTML, CSS, JavaScript, and Node.js.',
    icon: 'academic'
  },
  {
    type: 'Community & Learning',
    title: 'Independent Game Developer',
    organization: 'Self-Directed',
    period: '2024 - Present',
    description: 'Exploring game development by building projects like Skilly, a 2D bullet hell game using PixiJS. Learning how to handle game loops, rendering, state management, and performance optimization in the browser.',
    icon: 'heart'
  }
]
</script>

<template>
  <section id="experience" class="py-20 bg-gray-50 dark:bg-gray-800/50 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Section Header -->
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl font-bold text-gray-900 dark:text-white sm:text-4xl">Experience & Activities</h2>
        <div class="mt-4 h-1 w-20 bg-indigo-600 mx-auto rounded"></div>
        <p class="mt-4 text-lg text-gray-500 dark:text-gray-400">
          A timeline of my professional experience, academic projects, and activities.
        </p>
      </div>

      <!-- Timeline -->
      <div class="relative max-w-4xl mx-auto">
        <!-- Vertical Line -->
        <div class="absolute left-4 md:left-1/2 top-0 bottom-0 w-0.5 bg-gray-200 dark:bg-gray-700 transform md:-translate-x-1/2"></div>

        <!-- Timeline Items -->
        <div class="space-y-12">
          <div v-for="(item, index) in experiences" :key="index" 
               class="relative flex flex-col md:flex-row items-start md:items-center">
            
            <!-- Timeline Dot / Icon -->
            <div class="absolute left-4 md:left-1/2 w-8 h-8 rounded-full border-2 border-indigo-600 bg-white dark:bg-gray-900 flex items-center justify-center transform -translate-x-1/2 z-10">
              <!-- Briefcase Icon -->
              <svg v-if="item.icon === 'briefcase'" class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
              <!-- Trophy Icon -->
              <svg v-else-if="item.icon === 'trophy'" class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v13m0-13V6a2 2 0 112 2h-2zm0 0V6a2 2 0 10-2 2h2zm7-2v12a2 2 0 01-2 2H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2z"></path></svg>
              <!-- Academic Icon -->
              <svg v-else-if="item.icon === 'academic'" class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222"></path></svg>
              <!-- Heart Icon -->
              <svg v-else class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path></svg>
            </div>

            <!-- Content Card -->
            <div :class="[
              'ml-12 md:ml-0 md:w-1/2 bg-white dark:bg-gray-900 p-6 rounded-lg shadow-sm border border-gray-100 dark:border-gray-700',
              index % 2 === 0 ? 'md:mr-auto md:text-right md:pr-12' : 'md:ml-auto md:text-left md:pl-12'
            ]">
              <span class="text-xs font-semibold text-indigo-600 dark:text-indigo-400 uppercase tracking-wider">{{ item.type }}</span>
              <h3 class="text-xl font-semibold text-gray-900 dark:text-white mt-1">{{ item.title }}</h3>
              <p class="text-sm text-gray-500 dark:text-gray-400 mt-1">{{ item.organization }} | {{ item.period }}</p>
              <p class="mt-3 text-gray-600 dark:text-gray-300 text-sm leading-relaxed">
                {{ item.description }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
