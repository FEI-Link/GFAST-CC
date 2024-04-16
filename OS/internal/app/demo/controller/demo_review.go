package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoReview = demoReviewController{}

type demoReviewController struct {
	BaseController
}

func (c *demoReviewController) DemoReviewList(ctx context.Context, req *demo.ReviewReq) (res *demo.ReviewRes, err error) {
	res = new(demo.ReviewRes)
	res.List, err = service.DemoReview().DemoReviewList(ctx, req)
	return
}
func (c *demoReviewController) DemoReviewAdd(ctx context.Context, req *demo.ReviewAddReq) (res *demo.ReviewAddRes, err error) {
	err = service.DemoReview().DemoReviewAdd(ctx, req)
	return
}
func (c *demoReviewController) DemoReviewEdit(ctx context.Context, req *demo.ReviewEditReq) (res *demo.ReviewEditRes, err error) {
	err = service.DemoReview().DemoReviewEdit(ctx, req)
	return
}
func (c *demoReviewController) DemoReviewDetele(ctx context.Context, req *demo.ReviewDeleteReq) (res *demo.ReviewDeleteRes, err error) {
	err = service.DemoReview().DemoReviewDetele(ctx, req)
	return
}
