<script setup>
import { ref } from 'vue';

const faqs = ref([
  {
    question: "How does Fylo work?",
    answer: "Fylo stores all your most important files in one secure location. Access them wherever you need, share and collaborate with friends, family, and co-workers.",
    isOpen: false
  },
  {
    question: "Is my data secure?",
    answer: "Yes, we use 2-factor authentication and user-controlled encryption to help protect your files.",
    isOpen: false
  },
  {
    question: "Can I use it on mobile?",
    answer: "Yes, the ability to use a smartphone, tablet, or computer to access your account means your files follow you everywhere.",
    isOpen: false
  },
  {
    question: "What about customer support?",
    answer: "We offer 24/7 customer support for all users. You can contact us via email or phone.",
    isOpen: false
  }
]);

function toggleFaq(index) {
  faqs.value[index].isOpen = !faqs.value[index].isOpen;
}
</script>

<template>
  <section id="faq" class="bg-gray-50 dark:bg-darkBlue-01 pt-12 pb-32">
    <div class="container mx-auto px-6 max-w-3xl">
      <h2 class="text-3xl font-bold text-center mb-10">Frequently Asked Questions</h2>
      
      <div class="space-y-4">
        <div v-for="(faq, index) in faqs" :key="index" class="border-b border-gray-200 dark:border-gray-700 pb-4">
          <button 
            @click="toggleFaq(index)"
            class="flex justify-between items-center w-full text-left font-semibold text-lg py-2 focus:outline-none"
            :aria-expanded="faq.isOpen"
          >
            <span>{{ faq.question }}</span>
            <svg 
              class="w-5 h-5 transform transition-transform duration-200" 
              :class="{ 'rotate-180': faq.isOpen }"
              fill="none" stroke="currentColor" viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
            </svg>
          </button>
          
          <div 
            v-show="faq.isOpen" 
            class="mt-2 text-gray-600 dark:text-gray-300 text-base"
          >
            {{ faq.answer }}
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
</style>
