// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysUserex is the golang structure of table sys_userex for DAO operations like Where/Data.
type SysUserex struct {
	g.Meta   `orm:"table:sys_userex, do:true"`
	Id       interface{} //
	UserId   interface{} //
	UserEx   interface{} // 拓展信息
	Createat *gtime.Time //
	DeleteIs interface{} // 判断是否删除
}
