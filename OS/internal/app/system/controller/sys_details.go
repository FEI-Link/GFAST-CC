/*
* @desc:system base controller

 */

package controller

import (
	"context"

	"github.com/tiger1103/gfast/v3/api/v1/system"
	"github.com/tiger1103/gfast/v3/internal/app/system/service"
)

var Details = detailsController{}

type detailsController struct {
	BaseController
}

// Init 自动执行的初始化方法
func (c *detailsController) List(ctx context.Context, req *system.DetailsSearchReq) (res *system.DetailsSearchRes, err error) {
	res = new(system.DetailsSearchRes)
	res.DetailsList, err = service.SysDetails().GetList(ctx, req.UserName)
	return
}

// // Add 添加详细信息
// func (c *detailsController) Add(ctx context.Context, req *system.DeptAddReq) (res *system.DeptAddRes, err error) {
// 	err = service.SysDept().Add(ctx, req)
// 	return
// }

// // Edit 修改详细信息
// func (c *detailsController) Edit(ctx context.Context, req *system.DeptEditReq) (res *system.DeptEditRes, err error) {
// 	err = service.SysDept().Edit(ctx, req)
// 	return
// }

// // Delete 删除详细信息
// func (c *detailsController) Delete(ctx context.Context, req *system.DeptDeleteReq) (res *system.DeptDeleteRes, err error) {
// 	err = service.SysDept().Delete(ctx, req.Id)
// 	return
// }
