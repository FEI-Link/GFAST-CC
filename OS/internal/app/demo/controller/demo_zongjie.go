package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoZongjie = demoZongjieController{}

type demoZongjieController struct {
	BaseController
}

func (c *demoZongjieController) DemoZongjieList(ctx context.Context, req *demo.ZongjieReq) (res *demo.ZongjieRes, err error) {
	res = new(demo.ZongjieRes)
	res.List, err = service.DemoZongjie().DemoZongjieList(ctx, req)
	return
}
func (c *demoZongjieController) DemoZongjieAdd(ctx context.Context, req *demo.ZongjieAddReq) (res *demo.ZongjieAddRes, err error) {
	err = service.DemoZongjie().DemoZongjieAdd(ctx, req)
	return
}
func (c *demoZongjieController) DemoZongjieEdit(ctx context.Context, req *demo.ZongjieEditReq) (res *demo.ZongjieEditRes, err error) {
	err = service.DemoZongjie().DemoZongjieEdit(ctx, req)
	return
}
func (c *demoZongjieController) DemoZongjieDetele(ctx context.Context, req *demo.ZongjieDeleteReq) (res *demo.ZongjieDeleteRes, err error) {
	err = service.DemoZongjie().DemoZongjieDetele(ctx, req)
	return
}
