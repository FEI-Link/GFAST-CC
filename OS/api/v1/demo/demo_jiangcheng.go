package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type JiangReq struct {
	g.Meta `path:"/jiangcheng/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserId int `json:"userId"   description:"这个ID和个人相关联"`
}
type JiangRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
type JiangAddReq struct {
	g.Meta   `path:"/jiangcheng/add" tags:"详情查询" method:"post" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:"这个ID和个人相关联"`
	Switch   int         `json:"switch"   description:"0为惩罚，1为奖励"`
	Title    string      `json:"title"    description:"奖惩标题名"`
	Neirong  string      `json:"neirong"  description:"详细内容"`
	Createat *gtime.Time `json:"createat" description:""`
	Deleteat *gtime.Time `json:"deleteat" description:""`
	Createby int         `json:"createby" description:""`
	Deleteby int         `json:"deleteby" description:""`
}
type JiangAddRes struct {
}
type JiangEditReq struct {
	g.Meta   `path:"/jiangcheng/edit" tags:"详情查询" method:"put" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:"这个ID和个人相关联"`
	Switch   int         `json:"switch"   description:"0为惩罚，1为奖励"`
	Title    string      `json:"title"    description:"奖惩标题名"`
	Neirong  string      `json:"neirong"  description:"详细内容"`
	Createat *gtime.Time `json:"createat" description:""`
	Deleteat *gtime.Time `json:"deleteat" description:""`
	Createby int         `json:"createby" description:""`
	Deleteby int         `json:"deleteby" description:""`
}
type JiangEditRes struct {
}
type JiangDeleteReq struct {
	g.Meta   `path:"/jiangcheng/delete" tags:"详情查询" method:"delete" summary:"详情查询"`
	Id       uint        `json:"id"       description:""`
	UserId   int         `json:"userId"   description:"这个ID和个人相关联"`
	Switch   int         `json:"switch"   description:"0为惩罚，1为奖励"`
	Title    string      `json:"title"    description:"奖惩标题名"`
	Neirong  string      `json:"neirong"  description:"详细内容"`
	Createat *gtime.Time `json:"createat" description:""`
	Deleteat *gtime.Time `json:"deleteat" description:""`
	Createby int         `json:"createby" description:""`
	Deleteby int         `json:"deleteby" description:""`
}
type JiangDeleteRes struct {
}
