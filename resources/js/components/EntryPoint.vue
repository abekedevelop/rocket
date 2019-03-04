<template>
    <div class="container">
        <div class="row">
            <div class="col s12">
                <div class="card">
                    <div class="card-content">
                        <div class="search">
                            <i class="material-icons">search</i>
                            <input type="text" id="search" placeholder="Search" v-model="term" @keyup.enter="search" required>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <p>current page: {{currentPage}}</p>
                <p>Total pages by your search word: {{totalPages}}</p>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <div class="card col s4" v-for="image in images" :key="image.key" @click="setPhoto(image.id)">
                    <div class="card-image">
                        <img class="responsive-img" width="650" :src="image.urls.small">
                        <span class="card-title action">
                            <a href="javascript:void(0)">See full pic</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" v-if="images !== ''">
            <div class="col s12">
                <div class="buttons center">
                    <button class="btn" @click="search('prev')" :disabled="isPrev">Prev</button>
                    <button class="btn" @click="search('next')" :disabled="isNext">Next</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
import {mapState, mapActions} from 'vuex'
export default {
    name: 'EntryPoint',
    data() {
        return {
            images: '',
            pageNum: 1,
            term: '',
        }
    },
    methods: {
        ...mapActions(['setChosenPhoto', 'setImages', 'setSearchWord', 'setCurrentPage', 'setTotalPages']),
        setPhoto (id) {
            this.$router.push('/photo/' + id)
        },
        search (move = false) {

            if (move !== 'next' && move !== 'prev' && this.term.trim() === '') {
                M.toast({
                    html: 'Please, type-in search criteria'
                })
                return false
            }
            if(this.term.trim() !== '' && (this.term.trim() !== this.searchWord.trim())) {
                this.setSearchWord(this.term)
                this.pageNum = 1
            }
            if (this.term.trim() === '' && this.searchWord.trim() !== '') {
                this.setSearchWord(this.searchWord)
            }


            if (move === 'next') {
                this.pageNum = parseInt(this.pageNum) + 1
            } else if (move === 'prev') {
                this.pageNum = this.pageNum > 1 ? this.pageNum -= 1 : 1
            }
            this.setCurrentPage(this.pageNum)

            axios.get('/api/search-photos', {
                params: {
                    term: this.searchWord,
                    pageNum: this.pageNum
                }
            })
                .then(response => {
                    if(response.data.status === 'success') {
                        if (response.data.data.results.length > 0) {
                            this.setImages(response.data.data.results)
                            this.setTotalPages(response.data.total)
                            this.images = response.data.data.results
                        } else {
                            M.toast({
                                html: 'Nothing found by your search criteria'
                            })
                        }
                    } else {
                        M.toast({
                            html: 'Error occurred. Please, try again later.'
                        })
                        return false
                    }
                }).catch(err => {
                    console.log(err)
            })
        },
    },
    computed: {
        ...mapState({
            searchWord: state => state.searchWord,
            loadedImages: state => state.images,
            currentPage: state => state.currentPage,
            totalPages: state => state.totalPages
        }),
        isPrev() {
            return this.currentPage === 1
        },
        isNext() {
            return this.totalPages === this.currentPage
        }
    },
    mounted () {
        if (this.images === '' && this.loadedImages !== '') {
            this.images = this.loadedImages
        }
        if (this.pageNum !== this.currentPage) {
            this.pageNum = this.currentPage
        }
    }
}
</script>
<style lang="scss" scoped>
    .container {
        .row {
            .col {
                .card {
                    padding: 0;
                    .card-image {
                        .action {
                            font-size: 1em;
                            width: 100%;
                            padding: 0;
                            justify-content: center;
                            background-color: white;
                            opacity: 0.6;
                            display: none;
                            a {
                                font-size: 1em;
                                color: black;
                                font-weight: 700;
                                width: 100%;
                                text-align: center;
                            }
                        }
                        &:hover {
                            cursor: pointer;
                            .action {
                                display: flex;
                            }
                        }
                    }
                    .search {
                        position: relative;
                        i {
                            position: absolute;
                            top: 34%;
                            left: 97%;
                        }
                    }
                }
            }
        }
    }
</style>