// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// SysJiangcheng is the golang structure for table sys_jiangcheng.
type SysJiangcheng struct {
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:"这个ID和个人相关联"`
	Switch   int         `json:"switch"   description:"0为惩罚，1为奖励"`
	Title    string      `json:"title"    description:"奖惩标题名"`
	Neirong  string      `json:"neirong"  description:"详细内容"`
	Createat *gtime.Time `json:"createat" description:""`
	Deleteat *gtime.Time `json:"deleteat" description:""`
	Createby int         `json:"createby" description:""`
	Deleteby int         `json:"deleteby" description:""`
}
