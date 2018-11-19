<template>
    <div>
        <div class="panel-body">
            <div class="form-group">
                <button class="btn btn-success">Create</button>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th v-for="thead in thead">{{thead}}</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody v-for="tbody, index in tbody">
                    <td><img :src="tbody.avatar" alt="Ảnh đại diện" width="100px" height="100px"></td>
                    <td>{{tbody.name}}</td>
                    <td>{{tbody.sex}}</td>
                    <td>{{tbody.dateofbirth}}</td>
                    <td>{{tbody.address}}</td>
                    <td>{{tbody.phone}}</td>
                    <td>{{tbody.active}}</td>
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

<script>
    export default {
        props: ['dataUrl'],
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
                url: this.dataUrl,
                data: {
                    //
                }
            })
                .then(function (resp) {
                    app.thead = resp.data.thead;
                    app.tbody = resp.data.tbody;
                    console.log(resp.data);
                })
                .catch(function (resp) {
                    console.log(resp);
                    alert("Could not load user list");
                });
        },
        methods: {}
    }
</script>