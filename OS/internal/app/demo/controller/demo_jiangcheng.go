package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoJiangCheng = demoJiangChengController{}

type demoJiangChengController struct {
	BaseController
}

func (c *demoJiangChengController) DemoJiangChengList(ctx context.Context, req *demo.JiangReq) (res *demo.JiangRes, err error) {
	res = new(demo.JiangRes)
	res.List, err = service.DemoJiangCheng().DemoJiangChengList(ctx, req)
	return
}
func (c *demoJiangChengController) DemoJiangChengAdd(ctx context.Context, req *demo.JiangAddReq) (res *demo.JiangAddRes, err error) {
	err = service.DemoJiangCheng().DemoJiangChengAdd(ctx, req)
	return
}
func (c *demoJiangChengController) DemoJiangChengEdit(ctx context.Context, req *demo.JiangEditReq) (res *demo.JiangEditRes, err error) {
	err = service.DemoJiangCheng().DemoJiangChengEdit(ctx, req)
	return
}
func (c *demoJiangChengController) DemoJiangChengDetele(ctx context.Context, req *demo.JiangDeleteReq) (res *demo.JiangDeleteRes, err error) {
	err = service.DemoJiangCheng().DemoJiangChengDetele(ctx, req)
	return
}
