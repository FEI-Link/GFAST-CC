package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

type DetailsReq struct {
	g.Meta `path:"/details/list" tags:"详情查询" method:"get" summary:"详情查询"`
	Fgs    string `json:"fgs" dc:"分公司"`
}
type DetailsRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}
