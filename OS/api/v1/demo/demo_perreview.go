package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
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
	LogId    int    `json:"logId"    description:""`
	UserId   int    `json:"userId"   description:"个人识别号"`
	Title    string `json:"title"    description:"标题"`
	Neirong  string `json:"neirong"  description:"内容"`
	Jindu    string `json:"jindu"    description:"进度"`
	CreateAt string `json:"createAt" description:"创建时间"`
}
type PerreviewAddRes struct {
}
type PerreviewEditReq struct {
	g.Meta   `path:"/perreview/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	LogId    int    `json:"logId"    description:""`
	UserId   int    `json:"userId"   description:"个人识别号"`
	Title    string `json:"title"    description:"标题"`
	Neirong  string `json:"neirong"  description:"内容"`
	Jindu    string `json:"jindu"    description:"进度"`
	CreateAt string `json:"createAt" description:"创建时间"`
}
type PerreviewEditRes struct {
}
type PerreviewDeleteReq struct {
	g.Meta `path:"/perreview/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	LogId  int `json:"logId"    description:""`
}
type PerreviewDeleteRes struct {
}
