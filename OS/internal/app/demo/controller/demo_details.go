package controller

import (
	"context"

	"github.com/tiger1103/gfast/v3/api/v1/demo"
	"github.com/tiger1103/gfast/v3/internal/app/demo/service"

	systemController "github.com/tiger1103/gfast/v3/internal/app/system/controller"
)

type demoDetailsController struct {
	systemController.BaseController
}

var DemoDetails = new(demoDetailsController)

// List 列表
func (c *demoDetailsController) List(ctx context.Context, req *demo.DetailsSearchReq) (listRes *demo.DetailsSearchRes, err error) {
	listRes, err = service.DemoDetails().List(ctx, req)
	return
}

// Add 添加分类信息
func (c *demoDetailsController) Add(ctx context.Context, req *demo.DetailsAddReq) (err error) {
	err = service.DemoDetails().Add(ctx, req)
	return
}

// Edit 修改分类信息
func (c *demoDetailsController) Edit(ctx context.Context, id uint) (err error) {
	err = service.DemoDetails().Edit(ctx, id)
	return
}

// Delete 删除分类信息
func (c *demoDetailsController) Delete(ctx context.Context, req *demo.DetailsDeleteReq) (err error) {
	err = service.DemoDetails().Delete(ctx, req)
	return
}
