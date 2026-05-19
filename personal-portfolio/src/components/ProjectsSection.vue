<script setup>
const projects = [
  {
    title: 'Gym Reservation System',
    description: 'A closed system developed for a family business to manage gym reservations. Integrates with Line OA for notifications.',
    tech: ['React', 'Tailwind CSS', 'PostgreSQL', 'Line OA'],
    role: 'Solo Developer',
    image: '/gym_reservation.png',
    link: '#',
    status: 'closed'
  },
  {
    title: 'GoPro Task',
    description: 'A personal task manager app designed for daily focus and reminders to maintain productivity.',
    tech: ['HTML', 'CSS', 'JavaScript'],
    role: 'Solo Developer',
    image: '/gopro.png',
    link: '#',
    status: 'personal'
  },
  {
    title: 'Skilly',
    description: 'A simple 2D top-down bullet hell web game built using the PixiJS library.',
    tech: ['HTML', 'TypeScript', 'CSS', 'PixiJS'],
    role: 'Solo Developer',
    image: '/skilly.png',
    link: '#',
    status: 'personal'
  },
  {
    title: 'RandomChatis',
    description: 'A random web chat platform similar to Omegle. This was my first real hosted project.',
    tech: ['HTML', 'CSS', 'JavaScript', 'Firebase'],
    role: 'Solo Developer',
    image: '/randomchatis.png',
    link: 'https://randomchatis.web.app',
    status: 'live'
  },
  {
    title: 'Judo Scoreboard',
    description: 'A custom digital scoreboard system developed for family sports activities and training.',
    tech: ['HTML', 'CSS', 'JavaScript'],
    role: 'Solo Developer',
    image: '/judo_scoreboard.png',
    link: '#',
    status: 'closed'
  },
  {
    title: 'Travelaroha',
    description: 'A travel management platform to search, explore, and plan trips with checklist and export features. Supports multiple languages (Thai/Eng).',
    tech: ['Vue.js', 'Tailwind CSS', 'i18n'],
    role: 'Frontend Developer',
    image: '/travelaroha.png',
    link: 'https://travelaroha.space',
    status: 'live'
  }
]
</script>

<template>
  <section id="projects" class="py-20 bg-white dark:bg-gray-900 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Section Header -->
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl font-bold text-gray-900 dark:text-white sm:text-4xl">My Projects</h2>
        <div class="mt-4 h-1 w-20 bg-indigo-600 mx-auto rounded"></div>
        <p class="mt-4 text-lg text-gray-500 dark:text-gray-400">
          A showcase of some of my recent work and projects I've contributed to.
        </p>
      </div>

      <!-- Projects Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div v-for="project in projects" :key="project.title"
          class="bg-white dark:bg-gray-800 rounded-lg overflow-hidden shadow-sm border border-gray-100 dark:border-gray-700 hover:shadow-lg transition-shadow duration-300 flex flex-col">
          <!-- Project Image -->
          <div class="relative h-48 overflow-hidden bg-gray-100 dark:bg-gray-700">
            <img :src="project.image" :alt="project.title"
              class="w-full h-full object-cover transform hover:scale-105 transition-transform duration-300" />
          </div>

          <!-- Project Content -->
          <div class="p-6 flex-1 flex flex-col">
            <h3 class="text-xl font-semibold text-gray-900 dark:text-white">{{ project.title }}</h3>
            <p class="text-sm text-indigo-600 dark:text-indigo-400 mt-1 font-medium">Role: {{ project.role }}</p>
            <p class="mt-3 text-gray-600 dark:text-gray-300 text-sm flex-1">
              {{ project.description }}
            </p>

            <!-- Tech Tags -->
            <div class="mt-4 flex flex-wrap gap-2">
              <span v-for="tech in project.tech" :key="tech"
                class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-600 dark:text-gray-300 text-xs font-medium rounded">
                {{ tech }}
              </span>
            </div>

            <!-- Action Button -->
            <div class="mt-6">
              <a v-if="project.status === 'live'" :href="project.link" target="_blank" rel="noopener noreferrer"
                class="inline-flex items-center text-sm font-medium text-indigo-600 hover:text-indigo-700 dark:text-indigo-400 dark:hover:text-indigo-300 active:scale-95 transition-transform">
                Visit Site
                <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"></path>
                </svg>
              </a>
              <span v-else-if="project.status === 'closed'"
                class="inline-flex items-center text-sm font-medium text-gray-500 dark:text-gray-400">
                <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z">
                  </path>
                </svg>
                Closed System
              </span>
              <span v-else-if="project.status === 'personal'"
                class="text-sm font-medium text-gray-400 dark:text-gray-500">
                Personal Project
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
