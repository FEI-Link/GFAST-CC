// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysMission is the golang structure of table sys_mission for DAO operations like Where/Data.
type SysMission struct {
	g.Meta    `orm:"table:sys_mission, do:true"`
	Id        interface{} // 工作目标发布ID，自增序
	IdUser    interface{} // 和个人关联ID
	IdBumen   interface{} // 和部门关联ID
	Mission   interface{} // 目标内容
	CreateAt  *gtime.Time // 创建时间
	DeleteAt  *gtime.Time // 删除时间
	Delete    interface{} // 是否删除，只识别1为删除，其它无效
	State     interface{} // 目前状态
	Publisher interface{} // 发布人的ID
	Deleteby  interface{} // 删除人的ID
}
