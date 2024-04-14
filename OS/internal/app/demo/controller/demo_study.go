package controller

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/service"
)

var DemoStudy = demoStudyController{}

type demoStudyController struct {
	BaseController
}

func (c *demoStudyController) DemoStudyList(ctx context.Context, req *demo.StudyReq) (res *demo.StudyRes, err error) {
	res = new(demo.StudyRes)
	res.List, err = service.DemoStudy().DemoStudyList(ctx, req)
	return
}
func (c *demoStudyController) DemoStudyAdd(ctx context.Context, req *demo.StudyAddReq) (res *demo.StudyAddRes, err error) {
	err = service.DemoStudy().DemoStudyAdd(ctx, req)
	return
}
func (c *demoStudyController) DemoStudyEdit(ctx context.Context, req *demo.StudyEditReq) (res *demo.StudyEditRes, err error) {
	err = service.DemoStudy().DemoStudyEdit(ctx, req)
	return
}
func (c *demoStudyController) DemoStudyDetele(ctx context.Context, req *demo.StudyDeleteReq) (res *demo.StudyDeleteRes, err error) {
	err = service.DemoStudy().DemoStudyDetele(ctx, req)
	return
}
