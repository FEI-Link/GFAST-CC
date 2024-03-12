import request from '/@/utils/request';
export function getreview(query?:Object) {
    return request({
        url: '/api/v1/system/review/list',
        method: 'get',
        params:query
    })
}
//只有一个get函数，还差很多呢