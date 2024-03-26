package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type DetailsReq struct {
	g.Meta   `path:"/details/list" tags:"详情查询" method:"get" summary:"详情查询"`
	UserName string `json:"userName"   description:"用户名"`
}
type DetailsRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
