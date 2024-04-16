package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoPerreview = demoPerreviewController{}

type demoPerreviewController struct {
	BaseController
}

func (c *demoPerreviewController) DemoPerreviewList(ctx context.Context, req *demo.PerreviewReq) (res *demo.PerreviewRes, err error) {
	res = new(demo.PerreviewRes)
	res.List, err = service.DemoPerreview().DemoPerreviewList(ctx, req)
	return
}
func (c *demoPerreviewController) DemoPerreviewAdd(ctx context.Context, req *demo.PerreviewAddReq) (res *demo.PerreviewAddRes, err error) {
	err = service.DemoPerreview().DemoPerreviewAdd(ctx, req)
	return
}
func (c *demoPerreviewController) DemoPerreviewEdit(ctx context.Context, req *demo.PerreviewEditReq) (res *demo.PerreviewEditRes, err error) {
	err = service.DemoPerreview().DemoPerreviewEdit(ctx, req)
	return
}
func (c *demoPerreviewController) DemoPerreviewDetele(ctx context.Context, req *demo.PerreviewDeleteReq) (res *demo.PerreviewDeleteRes, err error) {
	err = service.DemoPerreview().DemoPerreviewDetele(ctx, req)
	return
}
