<template>
    <div>
        <div class="panel-body">

            <table class="table table-bordered table-striped">
                <thead>
                <tr >
                    <th v-for="thead, index in thead">{{thead.COLUMN_NAME}}</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="tbody, index in tbody">
                    <td>{{tbody.id}}</td>
                    <td><img :src="tbody.avatar" alt="avatar" width="100px" height="100px"></td>
                    <td>{{tbody.name}}</td>
                    <td>{{tbody.sex}}</td>
                    <td>{{tbody.dateofbirth}}</td>
                    <td>{{tbody.address}}</td>
                    <td>{{tbody.phone}}</td>
                    <td>{{tbody.active}}</td>
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
                thead: [],
                tbody:[]
            }
        },
        mounted() {
            var app = this;
            axios({url: this.dataUrl})
                .then(function (resp) {
                    console.log(resp.data.tbody);
                    app.thead = resp.data.thead;
                    app.tbody = resp.data.tbody;
                })
                .catch(function (resp) {
                    console.log(resp);
                    alert("Could not load user list");
                });
        },
        methods: {}
    }
</script>