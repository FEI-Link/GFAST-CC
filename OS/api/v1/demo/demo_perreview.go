package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type PerreviewReq struct {
	g.Meta `path:"/perreview/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type PerreviewRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type PerreviewAddReq struct {
	g.Meta   `path:"/perreview/add" tags:"详情查询" method:"post" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:""`
	Study    string      `json:"study"    description:"学习经历"`
	StudyDe  string      `json:"studyDe"  description:"学习经历详情"`
	Createat *gtime.Time `json:"createat" description:""`
	Delete   *gtime.Time `json:"delete"   description:""`
}
type PerreviewAddRes struct {
}
type PerreviewEditReq struct {
	g.Meta  `path:"/perreview/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	Id      uint   `json:"id"       description:""`
	UserId  int    `json:"userId"   description:""`
	Study   string `json:"study"    description:"学习经历"`
	StudyDe string `json:"studyDe"  description:"学习经历详情"`
}
type PerreviewEditRes struct {
}
type PerreviewDeleteReq struct {
	g.Meta `path:"/perreview/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	Id     uint `json:"id"       description:""`
}
type PerreviewDeleteRes struct {
}
