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
        px-8
        mx-auto
        xl:px-0 xl:max-w-screen-lg
        2xl:max-w-screen-xl
      "
    >
      <heading-5>
        <span class="font-bold text-white/25">02</span>
        <span class="text-white">meet your crew</span>
      </heading-5>
      <div class="flex grow justify-between items-center">
        <div class="shrink-0 flex flex-col">
          <heading-4> {{ activeCrewMemberContent.role }} </heading-4>
          <heading-3> {{ activeCrewMemberContent.name }} </heading-3>
          <app-paragraph class="max-w-lg min-h-[150px]">
            {{ activeCrewMemberContent.bio }}
          </app-paragraph>
          <div class="flex 2xl:mt-12">
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
                h-4
                w-4
                cursor-pointer
                transition-all
                hover:bg-white/50
              "
            ></div>
          </div>
        </div>
        <img
          class="self-end xl:max-w-sm 2xl:max-w-none"
          :src="activeCrewMemberImage"
          :alt="'image of the ' + activeCrewMemberContent.name"
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
