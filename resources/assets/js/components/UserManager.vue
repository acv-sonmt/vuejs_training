<template id="hello-template">
    <h1>{{ message }} {{ userName }}</h1>
</template>

<script>
    // export default {
    //     name: "UserManager"
    // }
    Vue.component('hello-component',{
        data: function () {
            return {
                message: 'Xin chào'
            }
        },
        props: ['userName'],
        template: '#hello-template'
    })
    new Vue({
        el: '#app',
        data: {
            userName: 'Allaravel'
        }
    });
</script>

<style scoped>

</style>