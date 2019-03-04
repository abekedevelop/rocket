import Vue from 'vue'
import Router from 'vue-router'

import EntryPoint from '../components/EntryPoint'
import SinglePhoto from '../components/SinglePhoto'

Vue.use(Router)

export default new Router({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'EntryPoint',
            component: EntryPoint
        },
        {
            path: '/photo/:id',
            name: 'SinglePhoto',
            component: SinglePhoto
        },
    ]
})
