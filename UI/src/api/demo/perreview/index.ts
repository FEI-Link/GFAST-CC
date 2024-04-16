import request from '/@/utils/request';
//对任职信息进行操作
export function getperreview(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/perreview/list',
        method: 'get',
        params:query
    })
}

export function addperreview(data:object) {
    console.log("函数增加测试接口",data);
    return request({
        url: '/api/v1/demo/perreview/add',
        method: 'post',
        data:data
    })
}


export function editperreview(data:object) {
    console.log("函数修改测试：",data);
    return request({
        url: '/api/v1/demo/perreview/edit',
        method: 'put',
        data:data
    })
}


export function deleteperreview(data:object) {
    console.log("函数删除测试：",data);
    return request({
        url: '/api/v1/demo/perreview/delete',
        method: 'delete',
        data:data
    })
}
