package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type DetailsSearchReq struct {
	g.Meta   `path:"/details/list" tags:"本溪衡泽报表" method:"get" summary:"日汇总表"`
	UserName string `json:"userName"   description:"用户名"`
}
type DetailsSearchRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
