<template>
  <button
    class="
      before:absolute
      before:rounded-full
      before:h-40
      before:w-40
      before:bg-white
      before:bg-opacity-10
      before:transition-all
      md:before:h-72 md:before:w-72
      rounded-full
      bg-white
      text-neutral-900
      font-serif
      uppercase
      flex
      items-center
      justify-center
      h-40
      w-40
      md:h-72 md:w-72
      hover:before:h-96 hover:before:w-96
      text-[20px]
      md:text-[32px]
    "
  >
    <slot></slot>
  </button>
</template>
