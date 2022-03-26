<template>
  <div
    class="
      min-h-screen
      bg-no-repeat bg-cover
      backdrop-blur-xl
      flex flex-col
      items-center
      justify-center
      bg-[url('@/assets/images/technology/background-technology-mobile.jpg')]
      md:bg-[url('@/assets/images/technology/background-technology-tablet.jpg')]
      lg:bg-[url('@/assets/images/technology/background-technology-desktop.jpg')]
    "
  >
    <app-header></app-header>
    <div
      class="
        flex flex-col
        grow
        w-full
        mx-auto
        px-4
        lg:px-8
        xl:px-0 xl:max-w-screen-lg
        2xl:max-w-screen-xl
      "
    >
      <heading-5>
        <span class="font-bold text-white/25">03</span>
        <span class="text-white">space launch 101</span>
      </heading-5>
      <div
        class="
          flex
          grow
          items-center
          flex-col
          mt-6
          lg:justify-between lg:mt-0 lg:flex-row
        "
      >
        <div
          class="
            flex
            justify-between
            flex-col
            space-y-6
            lg:space-y-0 lg:flex-row lg:space-x-8
            xl:space-x-16
          "
        >
          <div
            class="
              flex
              justify-center
              space-x-6
              lg:space-x-0 lg:justify-between lg:flex-col
            "
          >
            <div
              v-for="(technology, index) in technologies"
              :key="index"
              class="
                rounded-full
                font-serif
                flex
                border
                justify-center
                items-center
                cursor-pointer
                transition-all
                hover:border-white/100
                text-base
                h-10
                w-10
                md:w-20 md:h-20 md:text-3xl
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
                tracking-[2.7px]
                text-indigo-200 text-[14px] text-center
                md:text-[16px]
                lg:text-left
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
          class="w-full mb-6 order-first lg:hidden"
          :src="activeTechnologyLandscapeImage"
          :alt="'image of the ' + activeTechnologyContent.name"
        />
        <img
          class="hidden max-w-xs lg:block 2xl:max-w-none"
          :src="activeTechnologyPortraitImage"
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
    activeTechnologyPortraitImage() {
      return require(`../../assets/images/${this.activeTechnologyContent.images.portrait}`);
    },
    activeTechnologyLandscapeImage() {
      return require(`../../assets/images/${this.activeTechnologyContent.images.landscape}`);
    },
  },
};
</script>
