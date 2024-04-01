package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoDetails = demoDetailsController{}

type demoDetailsController struct {
	BaseController
}

func (c *demoDetailsController) DemoDetails01(ctx context.Context, req *demo.DetailsReq) (res *demo.DetailsRes, err error) {
	res = new(demo.DetailsRes)
	res.List, err = service.DemoDetails().DemoDetails01(ctx, req.UserName)
	return
}
func (c *demoDetailsController) DemoDetailsAdd(ctx context.Context, req *demo.DetailsAddReq) (err error) {
	err = service.DemoDetails().DemoDetailsAdd(ctx, req)
	return
}
