<template>
    <div id="single-photo">
        <div class="container">
            <h1>{{ id }}</h1>
            <!--<div class="row">-->
                <!--<div class="col s12">-->
                    <!--<h5 class="author">Author: <img class=" circle responsive-img" :src="photo.user.profile_image.small"> {{photo.user.name}}</h5>-->
                    <!--<div class="social" v-if="isSocial">-->
                        <!--<i class="fab fa-instagram fa-lg"></i>-->
                        <!--<a :href="'https://www.instagram.com/' + photo.user.instagram_username" target="_blank">Follow on Instagram</a>-->
                    <!--</div>-->
                    <!--<div class="copy">-->
                        <!--<button class="btn" @click="copy">Copy link</button>-->
                        <!--<input type="text" :value=photo.links.html id="share">-->
                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->
            <!--<h1>{{$route.params}}</h1>-->
            <!--<div class="row">-->
                <!--<div class="col s12">-->
                    <!--<img :src="photo.urls.regular" alt="image">-->
                <!--</div>-->
            <!--</div>-->
        </div>
    </div>
</template>

<script>
import {mapState} from 'vuex'
import axios from 'axios'
export default {
    name: "SinglePhoto",
    data () {
        return {
            // id: this.$route.params.id,
            photo: false
        }
    },
    methods: {
        copy () {
            let text = $('#share')
            text.select()
            document.execCommand('copy')
            M.toast({
                html: 'copied'
            })
        },
        searchPhotoById () {
            axios.get('/api/get-photo-by-id', {
                params: {
                    photoId: this.id
                }
            }).then(response => {
                console.log(response)
                this.photo = response.data.photo
            }).catch(error => {
                console.log(error)
            })
        }
    },
    computed: {
        id () {
            return this.$route.params.id
        },
        ...mapState({
            // photo: state => state.chosenPhoto
        }),
        isSocial () {
            return this.photo.user.instagram_username !== null && this.photo.user.instagram_username !== ''
        }
    },
    watch: {
        id (val) {
            console.log(val)
            this.searchPhotoById(val)
        }
    },
    mounted () {
        this.searchPhotoById(this.id)
    }
}
</script>

<style lang="scss" scoped>
    #single-photo {
       .container {
           color: black;
           .row {
               .col {
                   .author {
                       display: flex;
                       img {
                           margin: 0 .5em;
                       }
                   }
                   .social {
                       a {
                           color: black;
                       }
                   }
                   .copy {
                       .btn {
                           background-color: #015293;
                       }
                       #share {
                           width: 30%;
                       }
                   }
               }
           }
       }
    }
</style>