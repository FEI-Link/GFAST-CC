package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type ZongjieReq struct {
	g.Meta `path:"/zongjie/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type ZongjieRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type ZongjieAddReq struct {
	g.Meta  `path:"/zongjie/add" tags:"详情查询" method:"post" summary:"详情查询"`
	LogId   int    `json:"logId"   description:""`
	UserId  int    `json:"userId"  description:""`
	Title   string `json:"title"   description:""`
	Neirong string `json:"neirong" description:""`
	Creatat string `json:"creatat" description:""`
	Niandu  string `json:"niandu"  description:""`
}
type ZongjieAddRes struct {
}
type ZongjieEditReq struct {
	g.Meta  `path:"/zongjie/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	LogId   int    `json:"logId"   description:""`
	UserId  int    `json:"userId"  description:""`
	Title   string `json:"title"   description:""`
	Neirong string `json:"neirong" description:""`
	Creatat string `json:"creatat" description:""`
	Niandu  string `json:"niandu"  description:""`
}
type ZongjieEditRes struct {
}
type ZongjieDeleteReq struct {
	g.Meta `path:"/zongjie/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	LogId  int `json:"logId"    description:""`
}
type ZongjieDeleteRes struct {
}
