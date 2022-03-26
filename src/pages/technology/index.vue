<template>
  <div
    class="
      min-h-screen
      bg-[url('@/assets/images/crew/background-crew-desktop.jpg')]
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
        flex flex-col
        grow
        w-full
        mx-auto
        px-8
        xl:px-0 xl:max-w-screen-lg
        2xl:max-w-screen-xl
      "
    >
      <heading-5>
        <span class="font-bold text-white/25">03</span>
        <span class="text-white">space launch 101</span>
      </heading-5>
      <div class="flex grow justify-between items-center">
        <div class="flex justify-between space-x-8 xl:space-x-16">
          <div class="flex flex-col justify-between">
            <div
              v-for="(technology, index) in technologies"
              :key="index"
              class="
                w-20
                h-20
                rounded-full
                font-serif
                text-3xl
                flex
                border
                justify-center
                items-center
                cursor-pointer
                transition-all
                hover:border-white/100
              "
              @click="activeTechnology = technology.name"
              :class="
                activeTechnology === technology.name
                  ? 'bg-white text-neutral-900 border-white/100'
                  : 'bg-transparent text-white border-white/25'
              "
            >
              {{ index + 1 }}
            </div>
          </div>

          <div class="flex flex-col shrink-0">
            <p
              class="
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                text-indigo-200
              "
            >
              The terminology...
            </p>
            <heading-3> {{ activeTechnologyContent.name }} </heading-3>
            <app-paragraph class="max-w-lg min-h-[150px]">
              {{ activeTechnologyContent.description }}
            </app-paragraph>
          </div>
        </div>
        <img
          class="max-w-xs 2xl:max-w-none"
          :src="activeTechnologyImage"
          :alt="'image of the ' + activeTechnologyContent.name"
        />
      </div>
    </div>
  </div>
</template>

<script>
import json from "~/data.json";
import AppHeader from "~/components/layout/AppHeader.vue";
import AppParagraph from "~/components/ui/typography/AppParagraph.vue";
import Heading5 from "~/components/ui/typography/Heading5.vue";
import Subheading2 from "~/components/ui/typography/Subheading-2.vue";
import Subheading1 from "~/components/ui/typography/Subheading-1.vue";
import Heading3 from "~/components/ui/typography/Heading3.vue";
import Heading4 from "~/components/ui/typography/Heading4.vue";
export default {
  components: {
    AppHeader,
    Heading5,
    AppParagraph,
    Subheading1,
    Subheading2,
    Heading3,
    Heading4,
  },
  data() {
    return {
      technologies: json.technology,
      activeTechnology: "Launch vehicle",
    };
  },
  computed: {
    activeTechnologyContent() {
      return this.technologies.find(
        (technology) => technology.name === this.activeTechnology
      );
    },
    activeTechnologyImage() {
      return require(`../../assets/images/${this.activeTechnologyContent.images.portrait}`);
    },
  },
};
</script>
