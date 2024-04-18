package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type ReviewReq struct {
	g.Meta `path:"/review/list" tags:"详情查询" method:"get" summary:"详情查询"`
	DeptId int `json:"deptId"   description:""`
}
type ReviewRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type ReviewAddReq struct {
	g.Meta   `path:"/review/add" tags:"详情查询" method:"post" summary:"详情查询"`
	LogId    int    `json:"logId"    description:""`
	DeptId   int    `json:"deptId"   description:""`
	Title    string `json:"title"    description:""`
	Neirong  string `json:"neirong"  description:""`
	Jindu    string `json:"jindu"    description:""`
	CreateAt string `json:"createAt" description:""`
}
type ReviewAddRes struct {
}
type ReviewEditReq struct {
	g.Meta   `path:"/review/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	LogId    int    `json:"logId"    description:""`
	DeptId   int    `json:"deptId"   description:""`
	Title    string `json:"title"    description:""`
	Neirong  string `json:"neirong"  description:""`
	Jindu    string `json:"jindu"    description:""`
	CreateAt string `json:"createAt" description:""`
}
type ReviewEditRes struct {
}
type ReviewDeleteReq struct {
	g.Meta `path:"/review/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	Id     uint `json:"id"       description:""`
}
type ReviewDeleteRes struct {
}
