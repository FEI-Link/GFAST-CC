// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysJiangcheng is the golang structure of table sys_jiangcheng for DAO operations like Where/Data.
type SysJiangcheng struct {
	g.Meta   `orm:"table:sys_jiangcheng, do:true"`
	Id       interface{} //
	UserId   interface{} // 这个ID和个人相关联
	Switch   interface{} // 0为惩罚，1为奖励
	Title    interface{} // 奖惩标题名
	Neirong  interface{} // 详细内容
	Createat *gtime.Time //
	Deleteat *gtime.Time //
	Createby interface{} //
	Deleteby interface{} //
}
