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

// func (r *DetailsReq) DetailsReqTest() {
// 	// 添加测试代码以确认此方法是否被触发。
// 	fmt.Println("DetailsReq 方法被触发了！")
// 	fmt.Println("测试前端传输过的数据为:", r.DeptName)
// }
