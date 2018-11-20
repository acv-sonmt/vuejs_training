<template>
    <div>
        <div class="panel-body">
            <div class="form-group">
                <button class="btn btn-success">Create</button>
            </div>
            <table id="tbl_list_roles" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th v-for="thead in thead">{{thead}}</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody v-for="tbody, index in tbody">
                <td>{{tbody.name}}</td>
                <td>{{tbody.description}}</td>
                <td>
                    <button class="btn btn-xs btn-default">
                        Edit
                    </button>
                    <a href="#" class="btn btn-xs btn-danger">
                        Delete
                    </a>
                </td>
                </tbody>
            </table>
        </div>
    </div>
</template>
<style>

</style>
<script>
    export default {
        data: function () {
            return {
                thead: [],
                tbody: [],
            }
        },
        mounted() {
            var app = this;
            axios({
                method: 'post',
                url:'roles_list',
                data: {
                    //
                }
            })
                .then(function (resp) {
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