<template>
  <nav
    class="
      w-full
      flex
      justify-between
      items-center
      p-6
      lg:px-0 lg:py-8 lg:justify-around
      2xl:py-12
    "
  >
    <img
      @click="$router.push('/')"
      class="
        shrink-0
        cursor-pointer
        transition-all
        hover:scale-125
        lg:px-16
        2xl:px-32
      "
      src="~/assets/images/shared/logo.svg"
      alt="Space tourism logo"
    />
    <div class="block md:hidden" @click="showMobileMenu = true">
      <img
        src="~/assets/images/shared/icon-hamburger.svg"
        alt="mobile menu icon"
      />
    </div>
    <transition name="slide-fade">
      <div
        v-if="showMobileMenu"
        class="
          backdrop-blur-lg
          bg-white/5
          w-1/2
          fixed
          top-0
          right-0
          bottom-0
          py-6
          z-50
        "
      >
        <div
          class="flex justify-end px-6 mb-12"
          @click="showMobileMenu = false"
        >
          <img
            src="~/assets/images/shared/icon-close.svg"
            alt="mobile menu icon"
          />
        </div>
        <div class="flex flex-col pl-6">
          <div class="py-6">
            <nuxt-link
              class="
                block
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                text-white
                border-r-[3px] border-transparent
                uppercase
              "
              to="/"
            >
              <span class="font-bold">00</span> HOME
            </nuxt-link>
          </div>
          <div class="py-6">
            <nuxt-link
              class="
                block
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                text-white
                border-r-[3px] border-transparent
                uppercase
              "
              to="/destination"
            >
              <span class="font-bold">01</span> DESTINATION
            </nuxt-link>
          </div>
          <div class="py-6">
            <nuxt-link
              class="
                block
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                text-white
                border-r-[3px] border-transparent
                uppercase
              "
              to="/crew"
            >
              <span class="font-bold">02</span> CREW
            </nuxt-link>
          </div>
          <div class="py-6">
            <nuxt-link
              class="
                block
                font-sans-condensed
                text-[16px]
                tracking-[2.7px]
                text-white
                border-r-[3px] border-transparent
                uppercase
              "
              to="/technology"
            >
              <span class="font-bold">03</span> TECHNOLOGY
            </nuxt-link>
          </div>
        </div>
      </div>
    </transition>
    <div
      class="
        hidden
        bg-white
        opacity-30
        w-full
        h-px
        relative
        z-50
        -mr-4
        lg:block
        2xl:-mr-16
      "
    ></div>
    <div
      class="
        hidden
        backdrop-blur-lg
        bg-white/5
        justify-around
        items-center
        shrink-0
        w-1/2
        px-10
        md:flex
        2xl:px-20
      "
    >
      <nuxt-link
        class="
          font-sans-condensed
          text-[16px]
          tracking-[2.7px]
          text-white
          py-10
          mx-6
          border-b-[3px] border-transparent
          uppercase
          transition-all
          hover:border-white/20
        "
        to="/"
      >
        <span class="font-bold hidden xl:inline-block">00</span> HOME
      </nuxt-link>
      <nuxt-link
        class="
          font-sans-condensed
          text-[16px]
          tracking-[2.7px]
          text-white
          py-10
          mx-6
          border-b-[3px] border-transparent
          uppercase
          transition-all
          hover:border-white/20
        "
        to="/destination"
      >
        <span class="font-bold hidden xl:inline-block">01</span> DESTINATION
      </nuxt-link>
      <nuxt-link
        class="
          font-sans-condensed
          text-[16px]
          tracking-[2.7px]
          text-white
          py-10
          mx-6
          border-b-[3px] border-transparent
          uppercase
          transition-all
          hover:border-white/20
        "
        to="/crew"
      >
        <span class="font-bold hidden xl:inline-block">02</span> CREW
      </nuxt-link>
      <nuxt-link
        class="
          font-sans-condensed
          text-[16px]
          tracking-[2.7px]
          text-white
          py-10
          mx-6
          border-b-[3px] border-transparent
          uppercase
          transition-all
          hover:border-white/20
        "
        to="/technology"
      >
        <span class="font-bold hidden xl:inline-block">03</span> TECHNOLOGY
      </nuxt-link>
    </div>
  </nav>
</template>
<script>
export default {
  data() {
    return {
      showMobileMenu: false,
    };
  },
};
</script>
<style scoped>
.nuxt-link-exact-active {
  border-color: white;
}

.slide-fade-enter-active {
  transition: all 0.3s ease;
}
.slide-fade-leave-active {
  transition: all 0.3s cubic-bezier(1, 0.5, 0.8, 1);
}
.slide-fade-enter,
.slide-fade-leave-to {
  transform: translateX(10px);
  opacity: 0;
}
</style>
