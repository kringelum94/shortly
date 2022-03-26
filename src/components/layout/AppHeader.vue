<template>
  <nav class="w-full flex justify-around items-center py-8 2xl:py-12">
    <img
      @click="$router.push('/')"
      class="
        shrink-0
        cursor-pointer
        transition-all
        hover:scale-125
        px-16
        2xl:px-32
      "
      src="~/assets/images/shared/logo.svg"
      alt="Space tourism logo"
    />
    <div
      class="bg-white opacity-30 w-full h-px relative z-50 -mr-4 2xl:-mr-16"
    ></div>
    <div
      class="
        backdrop-blur-lg
        bg-white/5
        flex
        justify-around
        items-center
        shrink-0
        w-1/2
        px-10
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
<style scoped>
.nuxt-link-exact-active {
  border-color: white;
}
</style>
