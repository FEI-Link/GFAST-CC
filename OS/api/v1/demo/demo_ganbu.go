package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type GanbuReq struct {
	g.Meta   `path:"/ganbu/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserName string `json:"userName"   description:"用户名"`
	UserId   int64  `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
}
type GanbuRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
