import request from '/@/utils/request';
export function getstudy(query?:Object) {
    return request({
        url: '/api/v1/system/study/list',
        method: 'get',
        params:query
    })
}
//只有一个get函数，还差很多呢