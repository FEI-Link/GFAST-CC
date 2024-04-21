package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoReman = demoRemanController{}

type demoRemanController struct {
	BaseController
}

func (c *demoRemanController) DemoRemanList(ctx context.Context, req *demo.RemanReq) (res *demo.RemanRes, err error) {
	res = new(demo.RemanRes)
	res.List, err = service.DemoReman().DemoRemanList(ctx, req)
	return
}
func (c *demoRemanController) DemoRemanAdd(ctx context.Context, req *demo.RemanAddReq) (res *demo.RemanAddRes, err error) {
	err = service.DemoReman().DemoRemanAdd(ctx, req)
	return
}
func (c *demoRemanController) DemoRemanEdit(ctx context.Context, req *demo.RemanEditReq) (res *demo.RemanEditRes, err error) {
	err = service.DemoReman().DemoRemanEdit(ctx, req)
	return
}
func (c *demoRemanController) DemoRemanDetele(ctx context.Context, req *demo.RemanDeleteReq) (res *demo.RemanDeleteRes, err error) {
	err = service.DemoReman().DemoRemanDetele(ctx, req)
	return
}
func (c *demoRemanController) DemoPingceList(ctx context.Context, req *demo.PingceReq) (res *demo.PinceRes, err error) {
	res = new(demo.PinceRes)
	res.List, err = service.DemoReman().DemoPingceList(ctx)
	return
}
func (c *demoRemanController) DemoPingceEdit(ctx context.Context, req *demo.PingceEditReq) (res *demo.PingceEditRes, err error) {
	err = service.DemoReman().DemoPingceEdit(ctx, req)
	return
}
