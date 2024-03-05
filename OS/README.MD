## 简介
* 基于全新Go Frame 2.3+Vue3+Element Plus开发的全栈前后端分离的管理系统
* 前端采用vue-next-admin 、Vue、Element UI。

其中gfToken配置
```yaml
gfToken:
  cacheKey: "gfToken_"   #缓存前缀
  timeOut: 10800         #token超时时间（秒）
  maxRefresh: 5400       #token自动刷新时间（秒）
  multiLogin: true       #是否允许一个账号多人同时登录
  encryptKey: "49c54195e750b04e74a8429b17896586"    #加密key (32位)
  cacheModel: "redis"    #存储引擎 （memory使用内存|redis使用redis）
  excludePaths:          #排除不做登录验证的路由地址
    - "/api/v1/system/login"
```

## 感谢(排名不分先后)
> gf框架 [https://github.com/gogf/gf](https://github.com/gogf/gf)
>
> vue-next-admin [https://gitee.com/lyt-top/vue-next-admin](https://gitee.com/lyt-top/vue-next-admin)
>
> swaggo [https://github.com/swaggo/swag](https://github.com/swaggo/swag)
>
>gtoken [https://github.com/goflyfox/gtoken](https://github.com/goflyfox/gtoken)
>
>casbin [https://github.com/casbin/casbin](https://github.com/casbin/casbin)

## 免责声明：
> 1、Gfast仅限自己学习使用，一切商业行为与Gfast无关。

> 2、用户不得利用Gfast从事非法行为，用户应当合法合规的使用，发现用户在使用产品时有任何的非法行为，Gfast有权配合有关机关进行调查或向政府部门举报，Gfast不承担用户因非法行为造成的任何法律责任，一切法律责任由用户自行承担，如因用户使用造成第三方损害的，用户应当依法予以赔偿。

> 3、所有与使用Gfast相关的资源直接风险均由用户承担。




