import request from '/@/utils/request';
export function getFEI1(query?:Object) {
    return request({
        url: '/api/v1/system/FEI1/list',
        method: 'get',
        params:query
    })
}
//只有一个get函数，还差很多呢