// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysDetails is the golang structure of table sys_details for DAO operations like Where/Data.
type SysDetails struct {
	g.Meta     `orm:"table:sys_details, do:true"`
	LogId      interface{} // 表示本表记录的ID
	UserId     interface{} // 和用户表中用户号一致，用于绑定
	UserName   interface{} // 用户名
	Position   interface{} // 职位信息
	Bumen      interface{} // 所属部门
	Creattime  *gtime.Time // 创建时间
	Ruzhiat    *gtime.Time // 入职时间
	State      interface{} // 目前在职状态
	Updatetime *gtime.Time // 更新时间
	Deletetime *gtime.Time // 删除时间也是离职时间
	IsDelete   interface{} // 1为删除，不对其他数字做判断
	Updateby   interface{} // 修改人
	Deleteby   interface{} // 删除人
}
