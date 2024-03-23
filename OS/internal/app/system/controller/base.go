/*
* @desc:system base controller

 */

package controller

import (
	commonController "gocc/internal/app/common/controller"

	"github.com/gogf/gf/v2/net/ghttp"
)

type BaseController struct {
	commonController.BaseController
}

// Init 自动执行的初始化方法
func (c *BaseController) Init(r *ghttp.Request) {
	c.BaseController.Init(r)
}
