<template>
    <div>
        <div class="panel-body">
            <div class="form-group">
                <button class="btn btn-success">Create</button>
            </div>
            <table id="tbl_list_user" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th v-for="thead in headers">{{thead}}</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="item in items">
                    <td v-for="tdata in item">{{tdata}}</td>
                    <!--<td><img :src="row.avatar" alt="Ảnh đại diện" width="100px" height="100px"></td>-->
                    <!--<td>{{row.name}}</td>-->
                    <!--<td>{{tbody.sex ==0 ? 'Nam' : 'Nữ'}} </td>-->
                    <!--<td>{{tbody.dateofbirth}}</td>-->
                    <!--<td>{{tbody.address}}</td>-->
                    <!--<td>{{tbody.phone}}</td>-->
                    <!--<td>{{tbody.active==1?'Active':'No active'}}</td>-->
                    <td>
                        <button class="btn btn-xs btn-default">
                            Edit
                        </button>
                        <a href="#" class="btn btn-xs btn-danger">
                            Delete
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>
<style>

</style>
<script>
    export default {
        props: [],
        data: function () {
            return {
                headers: [],
                items: [],
            }
        },
        mounted() {
            var app = this;
            console.log(this.dataUrl);
            axios({
                method: 'post',
                url: 'user_list',
                data: {
                    //
                }
            })
                .then(function (resp) {
                    app.headers = resp.data.headers;
                    app.items = resp.data.items;
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