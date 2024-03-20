// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// CcRoomPhone is the golang structure of table cc_room_phone for DAO operations like Where/Data.
type CcRoomPhone struct {
	g.Meta    `orm:"table:cc_room_phone, do:true"`
	Id        interface{} // ID
	RoomId    interface{} // 房间ID
	Phone     interface{} // 电话号
	CreateBy  interface{} // 创建者
	UpdateBy  interface{} // 更新
	CreatedAt *gtime.Time // 创建时间
	UpdatedAt *gtime.Time // 修改时间
	DeletedAt *gtime.Time // 删除时间
}
