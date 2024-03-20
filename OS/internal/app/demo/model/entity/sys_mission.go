// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// SysMission is the golang structure for table sys_mission.
type SysMission struct {
	Id        uint64      `json:"id"        description:"工作目标发布ID，自增序"`
	IdUser    int         `json:"idUser"    description:"和个人关联ID"`
	IdBumen   int         `json:"idBumen"   description:"和部门关联ID"`
	Mission   string      `json:"mission"   description:"目标内容"`
	CreateAt  *gtime.Time `json:"createAt"  description:"创建时间"`
	DeleteAt  *gtime.Time `json:"deleteAt"  description:"删除时间"`
	Delete    int         `json:"delete"    description:"是否删除，只识别1为删除，其它无效"`
	State     int         `json:"state"     description:"目前状态"`
	Publisher int         `json:"publisher" description:"发布人的ID"`
	Deleteby  int         `json:"deleteby"  description:"删除人的ID"`
}
