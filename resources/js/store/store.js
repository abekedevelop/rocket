import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const state = {
    chosenPhoto: sessionStorage.getItem('chosenPhoto') ? JSON.parse(sessionStorage.getItem('chosenPhoto')) : [],
    images: sessionStorage.getItem('images') ? JSON.parse(sessionStorage.getItem('images')): '',
    searchWord: sessionStorage.getItem('searchWord') ? JSON.parse(sessionStorage.getItem('searchWord')) : '',
    currentPage: sessionStorage.getItem('currentPage') ? sessionStorage.getItem('currentPage') : 1,
    totalPages: sessionStorage.getItem('totalPages') ? sessionStorage.getItem('totalPages') : 0
}

const mutations = {
    setChosenPhoto(state, data) {
        state.chosenPhoto = data
    },
    setImages(state, data) {
        state.images = data
    },
    setSearchWord(state, data) {
        state.searchWord = data
    },
    setCurrentPage (state, data) {
        state.currentPage = data
    },
    setTotalPages (state, data) {
        state.totalPages = data
    }
}

const actions = {
    setChosenPhoto ({commit}, data) {
        commit('setChosenPhoto', data)
        sessionStorage.setItem('chosenPhoto', JSON.stringify(data))
    },
    setImages ({commit}, data) {
        commit('setImages', data)
        sessionStorage.setItem('images', JSON.stringify(data))
    },
    setSearchWord ({commit}, data) {
        commit('setSearchWord', data)
        sessionStorage.setItem('searchWord', JSON.stringify(data))
    },
    setCurrentPage ({commit}, data) {
        commit('setCurrentPage', data)
        sessionStorage.setItem('currentPage', data)
    },
    setTotalPages({commit}, data) {
        commit('setTotalPages', data)
        sessionStorage.setItem('totalPages', data)
    }
}

export default new Vuex.Store({
    state,
    mutations,
    actions
})