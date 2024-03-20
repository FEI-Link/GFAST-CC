// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysStudy is the golang structure of table sys_study for DAO operations like Where/Data.
type SysStudy struct {
	g.Meta   `orm:"table:sys_study, do:true"`
	Id       interface{} //
	UserId   interface{} //
	Study    interface{} // 学习经历
	StudyDe  interface{} // 学习经历详情
	Createat *gtime.Time //
	Delete   *gtime.Time //
}
