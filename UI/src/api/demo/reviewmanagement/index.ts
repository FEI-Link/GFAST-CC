import request from '/@/utils/request';
export function getmanage(query?:Object) {
    return request({
        url: '/api/v1/system/manage/list',
        method: 'get',
        params:query
    })
}
//只有一个get函数，还差很多呢