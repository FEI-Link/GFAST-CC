package controller

import (
	"context"

	"github.com/tiger1103/gfast/v3/internal/app/demo/service"
)

var DemoDetails = demoDetailsController{}

type demoDetailsController struct {
	BaseController
}

func (c *demoDetailsController) DetailsRequest(ctx context.Context, req *kefu.BxhzReport01Req) (
	res *kefu.BxhzReport01Res, err error) {
	res = new(kefu.BxhzReport01Res)
	res.List1, res.List2, err = service.BxhzReport().BxhzReport01(ctx, req.DateRange)
	return
}
