// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// SysUserex is the golang structure for table sys_userex.
type SysUserex struct {
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:""`
	UserEx   string      `json:"userEx"   description:"拓展信息"`
	Createat *gtime.Time `json:"createat" description:""`
	Delete   int         `json:"delete"   description:"判断是否删除"`
}
