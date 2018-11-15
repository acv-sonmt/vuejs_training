<template>
    <div>
        <div class="panel-body">
            <div class="form-group">
                <router-link :to="{name: ''}" class="btn btn-success">Create</router-link>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Avatar</th>
                    <th>Name</th>
                    <th>Sex</th>
                    <th>Date of Birth</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Active</th>
                    <th width="100">Action</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="user, index in user">
                    <td>
                        <img :src="user.avatar" alt="avatar" width="100px" height="100px">
                    </td>
                    <td>{{ user.name }}</td>
                    <td>{{ user.sex }}</td>
                    <td>{{ user.dateofbirth }}</td>
                    <td>{{ user.address }}</td>
                    <td>{{ user.phone }}</td>
                    <td>{{ user.active }}</td>
                    <td>
                        <router-link :to="{name: '', params: {id: user.id}}"
                                     class="btn btn-xs btn-default">
                            Edit
                        </router-link>
                        <a href="#"
                           class="btn btn-xs btn-danger"
                           v-on:click="deleteEntry(user.id, index)">
                            Delete
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
    export default {
        props:['dataUrl'],
        data: function () {
            return {
                user: []
            }
        },
        mounted() {
            var app = this;
            axios({url: this.dataUrl})
                .then(function (resp) {
                    //console.log(resp.data);
                    app.user = resp.data;
                })
                .catch(function (resp) {
                    console.log(resp);
                    alert("Could not load user list");
                });
        },
        methods: {}
    }
</script>