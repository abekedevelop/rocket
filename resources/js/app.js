require('./bootstrap');

window.Vue = require('vue');


// Vue.component('entry-point', require('./components/EntryPoint.vue').default);

import App from './App'
import router from './routes'
import store from './store/store'
import M from 'materialize-css'
import 'materialize-css/dist/js/materialize.min'
import 'materialize-css/dist/css/materialize.min.css'
import 'vue-social-sharing/dist/vue-social-sharing.min'

let SocialSharing = require('vue-social-sharing');

Vue.use(SocialSharing)

Vue.use(M)

new Vue({
    el: '#app',
    router,
    store,
    components: { App },
    template: '<App/>'
});
