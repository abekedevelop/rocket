<template>
    <div id="app">
        <navigation/>
        <router-view></router-view>
    </div>
</template>

<script>
import Navigation from './components/Header'
export default {
    name: "App",
    components: {
        Navigation
    }
}
</script>

<style lang="scss"scoped>
    #app {
        background-color: lightgray;
    }
</style>