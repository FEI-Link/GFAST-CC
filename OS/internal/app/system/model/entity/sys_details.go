// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// SysDetails is the golang structure for table sys_details.
type SysDetails struct {
	LogId      int         `json:"logId"      description:"表示本表记录的ID"`
	UserId     int64       `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
	UserName   string      `json:"userName"   description:"用户名"`
	Position   string      `json:"position"   description:"职位信息"`
	Bumen      string      `json:"bumen"      description:"所属部门"`
	Creattime  *gtime.Time `json:"creattime"  description:"创建时间"`
	Ruzhiat    *gtime.Time `json:"ruzhiat"    description:"入职时间"`
	State      string      `json:"state"      description:"目前在职状态"`
	Updatetime *gtime.Time `json:"updatetime" description:"更新时间"`
	Deletetime *gtime.Time `json:"deletetime" description:"删除时间也是离职时间"`
	Delete     int64       `json:"delete"     description:"1为删除，不对其他数字做判断"`
	Updateby   int         `json:"updateby"   description:"修改人"`
	Deleteby   int         `json:"deleteby"   description:"删除人"`
}
