package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoExmessage = demoExmessageController{}

type demoExmessageController struct {
	BaseController
}

func (c *demoExmessageController) DemoExmassageList(ctx context.Context, req *demo.ExmessageReq) (res *demo.ExmessageRes, err error) {
	res = new(demo.ExmessageRes)
	res.List, err = service.DemoExmessage().DemoExmassageList(ctx, req)
	return
}
func (c *demoExmessageController) DemoExmassageAdd(ctx context.Context, req *demo.ExmessageAddReq) (res *demo.ExmessageAddRes, err error) {
	err = service.DemoExmessage().DemoExmassageAdd(ctx, req)
	return
}
func (c *demoExmessageController) DemoExmassageEdit(ctx context.Context, req *demo.ExmessageEditReq) (res *demo.ExmessageEditRes, err error) {
	err = service.DemoExmessage().DemoExmassageEdit(ctx, req)
	return
}
func (c *demoExmessageController) DemoExmassageDetele(ctx context.Context, req *demo.ExmessageDeleteReq) (res *demo.ExmessageDeleteRes, err error) {
	err = service.DemoExmessage().DemoExmassageDetele(ctx, req)
	return
}
