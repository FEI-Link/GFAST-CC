package router

import (
	"context"

	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/tiger1103/gfast/v3/internal/app/demo/controller"
)

func (router *Router) BindDetailsController(ctx context.Context, group *ghttp.RouterGroup) {
	group.Group("/demoDetails", func(group *ghttp.RouterGroup) {
		group.Bind(
			controller.DemoDetails,
		)
	})
}
