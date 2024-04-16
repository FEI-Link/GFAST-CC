import request from '/@/utils/request';
//对任职信息进行操作
export function getreview(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/review/list',
        method: 'get',
        params:query
    })
}

export function addreview(data:object) {
    console.log("函数增加测试接口",data);
    return request({
        url: '/api/v1/demo/review/add',
        method: 'post',
        data:data
    })
}


export function editreview(data:object) {
    console.log("函数修改测试：",data);
    return request({
        url: '/api/v1/demo/review/edit',
        method: 'put',
        data:data
    })
}


export function deletereview(data:object) {
    console.log("函数删除测试：",data);
    return request({
        url: '/api/v1/demo/review/delete',
        method: 'delete',
        data:data
    })
}
