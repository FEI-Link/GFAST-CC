/*
* @desc:路由绑定
 */
//测试测试

package router

//qsdaqdqawdf
import (
	"context"
	commonRouter "gocc/internal/app/common/router"
	commonService "gocc/internal/app/common/service"
	demoRouter "gocc/internal/app/demo/router"
	systemRouter "gocc/internal/app/system/router"
	"gocc/library/libRouter"

	"github.com/gogf/gf/v2/net/ghttp"
)

var R = new(Router)

type Router struct{}

func (router *Router) BindController(ctx context.Context, group *ghttp.RouterGroup) {
	group.Group("/api/v1", func(group *ghttp.RouterGroup) {
		//跨域处理，安全起见正式环境请注释该行
		group.Middleware(commonService.Middleware().MiddlewareCORS)
		group.Middleware(ghttp.MiddlewareHandlerResponse)
		// 绑定后台路由
		systemRouter.R.BindController(ctx, group)
		// 绑定公共路由
		commonRouter.R.BindController(ctx, group)
		//绑定测试，同时也是毕设实践路由
		demoRouter.R.BindController(ctx, group)
		//自动绑定定义的模块
		if err := libRouter.RouterAutoBind(ctx, router, group); err != nil {
			panic(err)
		}
	})
}
