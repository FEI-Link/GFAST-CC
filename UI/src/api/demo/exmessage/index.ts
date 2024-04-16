import request from '/@/utils/request';
//对任职信息进行操作
export function getexmessage(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/exmessage/list',
        method: 'get',
        params:query
    })
}

export function addexmessage(data:object) {
    console.log("函数增加测试接口",data);
    return request({
        url: '/api/v1/demo/exmessage/add',
        method: 'post',
        data:data
    })
}


export function editexmessage(data:object) {
    console.log("函数修改测试：",data);
    return request({
        url: '/api/v1/demo/exmessage/edit',
        method: 'put',
        data:data
    })
}


export function deleteexmessage(data:object) {
    console.log("函数删除测试：",data);
    return request({
        url: '/api/v1/demo/exmessage/delete',
        method: 'put',
        data:data
    })
}
