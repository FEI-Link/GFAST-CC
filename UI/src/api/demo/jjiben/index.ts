import request from '/@/utils/request';
//对任职信息进行操作
export function getdetails(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/jiben/list',
        method: 'get',
        params:query
    })
}

// export function adddetails(data:object) {
//     console.log("函数增加测试接口",data);
//     return request({
//         url: '/api/v1/demo/details/add',
//         method: 'post',
//         data:data
//     })
// }


// export function editdetails(data:object) {
//     console.log("函数修改测试：",data);
//     return request({
//         url: '/api/v1/demo/details/edit',
//         method: 'put',
//         data:data
//     })
// }


// export function deletedetails(data:object) {
//     console.log("函数删除测试：",data);
//     return request({
//         url: '/api/v1/demo/details/delete',
//         method: 'delete',
//         data:data
//     })
// }
