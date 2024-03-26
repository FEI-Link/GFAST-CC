package controller

import (
	"context"
	"fmt"
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
	fmt.Println("在这里测试：", req.UserName, "：库库")
	return
}
