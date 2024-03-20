// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// CcRoomPhone is the golang structure for table cc_room_phone.
type CcRoomPhone struct {
	Id        uint64      `json:"id"        description:"ID"`
	RoomId    uint64      `json:"roomId"    description:"房间ID"`
	Phone     string      `json:"phone"     description:"电话号"`
	CreateBy  uint64      `json:"createBy"  description:"创建者"`
	UpdateBy  uint64      `json:"updateBy"  description:"更新"`
	CreatedAt *gtime.Time `json:"createdAt" description:"创建时间"`
	UpdatedAt *gtime.Time `json:"updatedAt" description:"修改时间"`
	DeletedAt *gtime.Time `json:"deletedAt" description:"删除时间"`
}
