<template>
  <div
    class="
      min-h-screen
      bg-no-repeat bg-cover
      backdrop-blur-xl
      flex flex-col
      items-center
      justify-center
      bg-[url('@/assets/images/crew/background-crew-mobile.jpg')]
      md:bg-[url('@/assets/images/crew/background-crew-tablet.jpg')]
      lg:bg-[url('@/assets/images/crew/background-crew-desktop.jpg')]
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
        md:pt-6 md:px-6
        lg:px-8
        xl:px-0 xl:max-w-screen-lg
        2xl:max-w-screen-xl
      "
    >
      <heading-5 class="text-center md:text-left">
        <span class="font-bold text-white/25">02</span>
        <span class="text-white">meet your crew</span>
      </heading-5>
      <div
        class="
          flex
          grow
          items-center
          flex-col
          mt-6
          lg:justify-between lg:flex-row
        "
      >
        <div class="shrink-0 grow items-center flex flex-col lg:items-start">
          <heading-4> {{ activeCrewMemberContent.role }} </heading-4>
          <heading-3> {{ activeCrewMemberContent.name }} </heading-3>
          <app-paragraph class="max-w-lg min-h-[150px]">
            {{ activeCrewMemberContent.bio }}
          </app-paragraph>
          <div
            class="
              flex
              justify-center
              -order-1
              my-6
              md:my-0 md:order-none
              lg:justify-start
              2xl:mt-12
            "
          >
            <div
              v-for="(crewMember, index) in crewMembers"
              :key="index"
              @click="activeCrewMember = crewMember.name"
              :class="
                activeCrewMember === crewMember.name
                  ? 'bg-white'
                  : 'bg-white/20'
              "
              class="
                rounded-full
                mx-3
                cursor-pointer
                transition-all
                hover:bg-white/50
                h-3
                w-3
                lg:h-4 lg:w-4
              "
            ></div>
          </div>
        </div>
        <div
          class="
            flex
            justify-center
            -order-2
            border-b border-white/25
            md:border-0 md:order-none
            lg:self-end
          "
        >
          <img
            class="max-w-[40%] md:max-w-xs xl:max-w-sm 2xl:max-w-md"
            :src="activeCrewMemberImage"
            :alt="'image of the ' + activeCrewMemberContent.name"
          />
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
      crewMembers: json.crew,
      activeCrewMember: "Douglas Hurley",
    };
  },
  computed: {
    activeCrewMemberContent() {
      return this.crewMembers.find(
        (member) => member.name === this.activeCrewMember
      );
    },
    activeCrewMemberImage() {
      return require(`../../assets/images/${this.activeCrewMemberContent.images.png}`);
    },
  },
};
</script>
