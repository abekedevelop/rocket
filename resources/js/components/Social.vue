<template>
    <social-sharing :url="url"
                    :title="title"
                    :media="media"
                    :description="description"
                    :hashtags="hashtags"
                    twitter-user="vuejs"
                    inline-template
                    >
        <div>
            <network network="facebook">
                <i class="fa fa-facebook"></i> Facebook
            </network>
            <network network="googleplus">
                <i class="fa fa-google-plus"></i> Google +
            </network>
            <network network="linkedin">
                <i class="fa fa-linkedin"></i> LinkedIn
            </network>
            <network network="odnoklassniki">
                <i class="fa fa-odnoklassniki"></i> Odnoklassniki
            </network>
            <network network="skype">
                <i class="fa fa-skype"></i> Skype
            </network>
            <network network="telegram">
                <i class="fa fa-telegram"></i> Telegram
            </network>
            <network network="twitter">
                <i class="fa fa-twitter"></i> Twitter
            </network>
            <network network="vk">
                <i class="fa fa-vk"></i> VKontakte
            </network>
            <network network="whatsapp">
                <i class="fa fa-whatsapp"></i> Whatsapp
            </network>
        </div>
    </social-sharing>
</template>
<script>
    export default {
        name: "Social",
        props: ['url', 'title', 'media', 'description', 'hashtags'],
    }
</script>

<style scoped>

</style>