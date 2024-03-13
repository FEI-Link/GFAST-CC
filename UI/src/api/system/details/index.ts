import request from '/@/utils/request';
//对任职信息进行操作
export function getdetails(query?:Object) {
    return request({
        url: '/api/v1/system/details/list',
        method: 'get',
        params:query
    })
}

export function adddetails(data:object) {
    return request({
        url: '/api/v1/system/details/add',
        method: 'post',
        data:data
    })
}


export function editdetails(data:object) {
    return request({
        url: '/api/v1/system/details/edit',
        method: 'put',
        data:data
    })
}


export function deletedetails(id:number) {
    return request({
        url: '/api/v1/system/details/delete',
        method: 'delete',
        data:{id}
    })
}
