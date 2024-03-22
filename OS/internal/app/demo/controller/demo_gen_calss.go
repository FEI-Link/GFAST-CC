package controller

import (
	systemController "github.com/tiger1103/gfast/v3/internal/app/system/controller"
)

type demoGenClassController struct {
	systemController.BaseController
}

var DemoGenClass = new(demoGenClassController)

// List 列表
// func (c *demoDetailsController) List(ctx context.Context, req *demo.DemoGenClassSearchReq) (res *demo.DemoGenClassSearchRes, err error) {
// 	res, err = service.DemoGenClass().List(ctx, req)
// 	return
// }

// // Add 添加分类信息
// func (c *demoDetailsController) Add(ctx context.Context, req *demo.DemoGenClassAddReq) (res *demo.DemoGenClassAddRes, err error) {
// 	err = service.DemoGenClass().Add(ctx, req)
// 	return
// }

// unc (c *demoGenClassController) Edit(ctx context.Context, req *demo.DemoGenClassEditReq) (res *demo.DemoGenClassEditRes, err error) {
// 	err = service.DemoGenClass().Edit(ctx, req)
// 	return
// }

// // Delete 删除分类信息
// func (c *demoGenClassController) Delete(ctx context.Context, req *demo.DemoGenClassDeleteReq) (res *demo.DemoGenClassDeleteRes, err error) {
// 	err = service.DemoGenClass().Delete(ctx, req.Ids)
// 	return
// }
// Edit 修改分类信息
