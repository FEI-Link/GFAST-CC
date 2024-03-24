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

func (c *demoDetailsController) DetailsRequest(ctx context.Context, req *demo.DetailsReq) (
	res *demo.DetailsRes, err error) {
	res = new(demo.DetailsRes)
	res.List, err = service.DemoDetails().DemoDetails(ctx, req.UserId)
	return
}
