import request from '/@/utils/request';
export function getFEI2(query?:Object) {
    return request({
        url: '/api/v1/system/FEI2/list',
        method: 'get',
        params:query
    })
}
//只有一个get函数，还差很多呢