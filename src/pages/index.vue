<template>
  <div
    class="
      min-h-screen
      bg-[url('@/assets/images/home/background-home-desktop.jpg')]
      bg-no-repeat
      bg-cover
      backdrop-blur-xl
      flex flex-col
      items-center
      justify-center
    "
  >
    <app-header></app-header>
    <div
      class="
        flex
        grow
        w-full
        justify-between
        items-center
        mx-auto
        px-16
        2xl:max-w-screen-xl
      "
    >
      <div class="max-w-md">
        <heading-5>So, you want to travel to</heading-5>
        <heading-1>space</heading-1>
        <app-paragraph>
          Let’s face it; if you want to go to space, you might as well genuinely
          go to outer space and not hover kind of on the edge of it. Well sit
          back, and relax because we’ll give you a truly out of this world
          experience!
        </app-paragraph>
      </div>
      <app-button @click.native="$router.push('/destination')" class="shrink-0">
        explore
      </app-button>
    </div>
  </div>
</template>

<script>
import AppHeader from "~/components/layout/AppHeader.vue";
import AppParagraph from "~/components/ui/typography/AppParagraph.vue";
import AppButton from "~/components/ui/buttons/AppButton.vue";
import Heading1 from "~/components/ui/typography/Heading1.vue";
import Heading5 from "~/components/ui/typography/Heading5.vue";
export default {
  components: { AppHeader, Heading5, Heading1, AppParagraph, AppButton },
};
</script>
