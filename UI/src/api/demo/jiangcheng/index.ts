import request from '/@/utils/request';
//奖惩信息进行操作
export function getjiangcheng(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/jiangcheng/list',
        method: 'get',
        params:query
    })
}

export function addjiangcheng(data:object) {
    console.log("函数增加功能接口测试",data);
    return request({
        url: '/api/v1/demo/jiangcheng/add',
        method: 'post',
        data:data
    })
}


export function editjiangcheng(data:object) {
    console.log("函数修改测试：",data);
    return request({
        url: '/api/v1/demo/jiangcheng/edit',
        method: 'put',
        data:data
    })
}


export function deletejiangcheng(data:object) {
    console.log("函数删除测试：",data);
    return request({
        url: '/api/v1/demo/jiangcheng/delete',
        method: 'delete',
        data:data
    })
}
