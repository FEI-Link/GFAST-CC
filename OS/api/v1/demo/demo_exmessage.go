package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type ExmessageReq struct {
	g.Meta `path:"/exmessage/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type ExmessageRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type ExmessageAddReq struct {
	g.Meta   `path:"/exmessage/add" tags:"详情查询" method:"post" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:""`
	Study    string      `json:"study"    description:"学习经历"`
	StudyDe  string      `json:"studyDe"  description:"学习经历详情"`
	Createat *gtime.Time `json:"createat" description:""`
	Delete   *gtime.Time `json:"delete"   description:""`
}
type ExmessageAddRes struct {
}
type ExmessageEditReq struct {
	g.Meta  `path:"/exmessage/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	Id      uint   `json:"id"       description:""`
	UserId  int    `json:"userId"   description:""`
	Study   string `json:"study"    description:"学习经历"`
	StudyDe string `json:"studyDe"  description:"学习经历详情"`
}
type ExmessageEditRes struct {
}
type ExmessageDeleteReq struct {
	g.Meta `path:"/exmessage/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	Id     uint `json:"id"       description:""`
}
type ExmessageDeleteRes struct {
}
