<script setup>
const skillCategories = [
  {
    title: 'Programming Languages',
    skills: ['JavaScript (ES6+)', 'TypeScript', 'HTML5', 'CSS3', 'Python', 'C#', 'Luau', 'AS3']
  },
  {
    title: 'Frameworks & Libraries',
    skills: ['Vue.js', 'React', 'Tailwind CSS', 'Node.js', 'Express', 'Prisma', 'Firebase', 'PixiJS']
  },
  {
    title: 'Tools & Platforms',
    skills: ['Git & GitHub', 'VS Code', 'Figma', 'Vercel', 'Postman', 'Linux', 'Docker', 'MySQL', 'PostgreSQL', 'Bash', 'Line API', 'Video & Image Editing']
  },
  {
    title: 'Soft Skills',
    skills: ['Problem Solving', 'Communication', 'Teamwork', 'Time Management', 'Adaptability']
  }
]
</script>

<template>
  <section id="skills" class="py-20 bg-gray-50 dark:bg-gray-800/50 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Section Header -->
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl font-bold text-gray-900 dark:text-white sm:text-4xl">My Skills</h2>
        <div class="mt-4 h-1 w-20 bg-indigo-600 mx-auto rounded"></div>
        <p class="mt-4 text-lg text-gray-500 dark:text-gray-400">
          Here are the technologies and skills I have acquired and use in my projects.
        </p>
      </div>

      <!-- Skills Grid -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
        <div v-for="category in skillCategories" :key="category.title" 
             class="bg-white dark:bg-gray-900 p-6 rounded-lg shadow-sm border border-gray-100 dark:border-gray-700 hover:shadow-md transition-shadow duration-200">
          <h3 class="text-xl font-semibold text-gray-900 dark:text-white mb-4">{{ category.title }}</h3>
          <div class="flex flex-wrap gap-2">
            <span v-for="skill in category.skills" :key="skill" 
                  class="px-3 py-1.5 bg-indigo-50 dark:bg-indigo-900/30 text-indigo-700 dark:text-indigo-300 text-sm font-medium rounded-md">
              {{ skill }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
