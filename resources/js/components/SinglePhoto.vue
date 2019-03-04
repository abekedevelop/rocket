<template>
    <div id="single-photo">
        <div class="container" v-if="photo !== false">
            <div class="row">
                <div class="col s12">
                    <h5 class="author">Author: <img class=" circle responsive-img" :src="photo.user.profile_image.small"> {{photo.user.name}}</h5>
                    <div class="social" v-if="isSocial">
                        <i class="fab fa-instagram fa-lg"></i>
                        <a :href="'https://www.instagram.com/' + photo.user.instagram_username" target="_blank">Follow on Instagram</a>
                    </div>
                    <div class="copy">
                        <button class="btn" @click="copy">Copy link</button>
                        <input type="text" :value="'gimmepic.com' + $route.fullPath" id="share">
                    </div>
                    <div id="social">
                        <social :url="'http://gimmepic.com' + $route.fullPath"
                                title="Awesome image by gimmepic.com"
                                :media="'http://gimmepic.com' + $route.fullPath"
                                :description="photo.description"
                                hastags="unsplash.com"
                        />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <img :src="photo.urls.regular" alt="image">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import {mapState, mapActions} from 'vuex'
import axios from 'axios'
import Social from './Social'
export default {
    name: "SinglePhoto",
    data () {
        return {
            // id: this.$route.params.id,
            photo: false
        }
    },
    components: {
        Social
    },
    methods: {
        ...mapActions(['setChosenPhoto']),
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
                if (response.data.status === 'success') {
                    this.setChosenPhoto(response.data.data)
                    this.photo = response.data.data
                } else {
                    M.toast({
                        html: 'Error occurred or image not found.'
                    })
                }
            }).catch(error => {
                console.log(error)
            })
        },
        open() {
            alert('KASTA!!!')
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