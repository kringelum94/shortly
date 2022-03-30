<template>
  <div
    class="
      min-h-screen
      bg-no-repeat bg-cover
      backdrop-blur-xl
      flex flex-col
      items-center
      justify-center
      bg-[url('@/assets/images/destination/background-destination-mobile.jpg')]
      md:bg-[url('@/assets/images/destination/background-destination-tablet.jpg')]
      lg:bg-[url('@/assets/images/destination/background-destination-desktop.jpg')]
    "
  >
    <app-header></app-header>
    <div
      class="
        flex flex-col
        w-full
        grow
        mx-auto
        px-4
        md:p-6
        lg:px-8
        xl:px-0 xl:max-w-screen-lg
        2xl:max-w-screen-xl
      "
    >
      <heading-5 class="text-center md:text-left">
        <span class="font-bold text-white/25">01</span>
        <span class="text-white">pick your destination</span>
      </heading-5>
      <div
        class="
          flex
          grow
          items-center
          gap-6
          flex-col
          mt-6
          lg:space-x-8
          xl:space-x-16
          lg:flex-row
        "
      >
        <img
          class="max-w-[50%] md:w-80 lg:w-full"
          :src="activeDestinationImage"
          :alt="'image of the ' + activeDestinationContent.name"
        />
        <div class="max-w-md mt-6 lg:mt-0">
          <div class="flex justify-center lg:justify-start mb-4 2xl:mb-12">
            <button
              class="
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                py-1
                px-1
                mx-3
                border-b-[3px]
                uppercase
                transition-all
                hover:border-white/20
              "
              :class="
                activeDestination === destination.name
                  ? 'text-white border-white'
                  : 'text-indigo-200 border-transparent'
              "
              v-for="(destination, index) in destinations"
              :key="index"
              @click="activeDestination = destination.name"
            >
              {{ destination.name }}
            </button>
          </div>
          <heading-2> {{ activeDestinationContent.name }} </heading-2>
          <app-paragraph>
            {{ activeDestinationContent.description }}
          </app-paragraph>
          <div
            class="bg-white opacity-30 w-full h-px relative z-40 my-6 2xl:my-12"
          ></div>
          <div
            class="
              grid grid-cols-1
              gap-6
              justify-items-center
              text-center
              mb-6
              md:grid-cols-2
              lg:mb-0 lg:gap-0 lg:text-left lg:justify-items-start
            "
          >
            <div>
              <subheading-2>avg. distance</subheading-2>
              <subheading-1>
                {{ activeDestinationContent.distance }}
              </subheading-1>
            </div>
            <div>
              <subheading-2>est. travel time</subheading-2>
              <subheading-1>{{ activeDestinationContent.travel }}</subheading-1>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import json from "~/data.json";
import AppHeader from "~/components/layout/AppHeader.vue";
import AppParagraph from "~/components/ui/typography/AppParagraph.vue";
import Heading5 from "~/components/ui/typography/Heading5.vue";
import Heading2 from "~/components/ui/typography/Heading2.vue";
import Subheading2 from "~/components/ui/typography/Subheading-2.vue";
import Subheading1 from "~/components/ui/typography/Subheading-1.vue";
export default {
  components: {
    AppHeader,
    Heading5,
    AppParagraph,
    Heading2,
    Subheading1,
    Subheading2,
  },
  data() {
    return {
      destinations: json.destinations,
      activeDestination: "Moon",
    };
  },
  computed: {
    activeDestinationContent() {
      return this.destinations.find(
        (destination) => destination.name === this.activeDestination
      );
    },
    activeDestinationImage() {
      return require(`../../assets/images/${this.activeDestinationContent.images.png}`);
    },
  },
};
</script>
