<style>
  * {
    font-family: Calibri, sans-serif;
  }
</style>

<template>
  <component :is="$route.meta.layout || 'div'">
    <router-view />
  </component>
</template>
<script setup>
  //
</script>