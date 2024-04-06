import request from '/@/utils/request';
//对任职信息进行操作
export function getstudy(query?:Object) {
    console.log("函数查询测试：",query);
    return request({
        url: '/api/v1/demo/study/list',
        method: 'get',
        params:query
    })
}

export function addstudy(data:object) {
    console.log("函数增加测试接口",data);
    return request({
        url: '/api/v1/demo/study/add',
        method: 'post',
        data:data
    })
}


export function editstudy(data:object) {
    console.log("函数修改测试：",data);
    return request({
        url: '/api/v1/demo/study/edit',
        method: 'put',
        data:data
    })
}


export function deletestudys(data:object) {
    console.log("函数删除测试：",data);
    return request({
        url: '/api/v1/demo/study/delete',
        method: 'delete',
        data:data
    })
}
