<template>
    <div id="header">
        <nav class="z-depth-2">
            <div class="nav-wrapper">
                <router-link to="/" class="brand-logo">Gimmepic</router-link>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Sass</a></li>
                    <li><a href="badges.html">Components</a></li>
                    <li><a href="collapsible.html">JavaScript</a></li>
                </ul>
            </div>
        </nav>
    </div>
</template>

<script>
    export default {
        name: "Header"
    }
</script>

<style lang="scss" scoped>
    #header {
        nav {
            background-color: #015293;
            .nav-wrapper {
                a {
                    margin-left: 1em;
                    font-weight: 600;
                    color: white;
                }
                ul {
                    li {
                        a {
                            font-weight: 600;
                            color: white;
                        }
                    }
                }
            }
        }
    }
</style>