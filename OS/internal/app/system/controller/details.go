/*
* @desc:system base controller

 */

package controller

import (
	"context"

	"github.com/tiger1103/gfast/v3/api/v1/system"
	"github.com/tiger1103/gfast/v3/internal/app/system/service"
)

var Details = DetailsController{}

type DetailsController struct {
	BaseController
}

// Init 自动执行的初始化方法
func (c *DetailsController) List(ctx context.Context, req *system.DeptSearchReq) (res *system.DeptSearchRes, err error) {
	res = new(system.DeptSearchRes)
	res.DeptList, err = service.SysDept().GetList(ctx, req)
	return
}

// Add 添加部门
func (c *DetailsController) Add(ctx context.Context, req *system.DeptAddReq) (res *system.DeptAddRes, err error) {
	err = service.SysDept().Add(ctx, req)
	return
}

// Edit 修改部门
func (c *DetailsController) Edit(ctx context.Context, req *system.DeptEditReq) (res *system.DeptEditRes, err error) {
	err = service.SysDept().Edit(ctx, req)
	return
}

// Delete 删除部门
func (c *DetailsController) Delete(ctx context.Context, req *system.DeptDeleteReq) (res *system.DeptDeleteRes, err error) {
	err = service.SysDept().Delete(ctx, req.Id)
	return
}
