<template>
  <div
    class="
      min-h-screen
      bg-[url('@/assets/images/home/background-home-desktop.jpg')]
      bg-no-repeat
      bg-cover
      backdrop-blur-xl
    "
  >
    <app-header></app-header>
  </div>
</template>

<script>
import AppHeader from "~/components/layout/AppHeader.vue";
export default {
  components: { AppHeader },
};
</script>
