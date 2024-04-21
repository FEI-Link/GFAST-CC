package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type RemanReq struct {
	g.Meta `path:"/reviewmanagement/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type RemanRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type RemanAddReq struct {
	g.Meta   `path:"/reviewmanagement/add" tags:"详情查询" method:"post" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:""`
	Study    string      `json:"study"    description:"学习经历"`
	StudyDe  string      `json:"studyDe"  description:"学习经历详情"`
	Createat *gtime.Time `json:"createat" description:""`
	Delete   *gtime.Time `json:"delete"   description:""`
}
type RemanAddRes struct {
}
type RemanEditReq struct {
	g.Meta  `path:"/reviewmanagement/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	Id      uint   `json:"id"       description:""`
	UserId  int    `json:"userId"   description:""`
	Study   string `json:"study"    description:"学习经历"`
	StudyDe string `json:"studyDe"  description:"学习经历详情"`
}
type RemanEditRes struct {
}
type RemanDeleteReq struct {
	g.Meta `path:"/reviewmanagement/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	Id     uint `json:"id"       description:""`
}
type RemanDeleteRes struct {
}
type PingceReq struct {
	g.Meta `path:"/pingce/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type PinceRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type PingceEditReq struct {
	g.Meta   `path:"/pingce/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	LogId    int    `json:"logId"    description:""`
	UserId   int    `json:"userId"   description:""`
	Title    string `json:"title"    description:""`
	Neirong  string `json:"neirong"  description:""`
	CreateAt string `json:"createAt" description:""`
	CreateBy string `json:"createBy" description:""`
	DeleteIs int    `json:"deleteIs" description:"1为删除，不对其他情况做区分"`
}
type PingceEditRes struct {
}
