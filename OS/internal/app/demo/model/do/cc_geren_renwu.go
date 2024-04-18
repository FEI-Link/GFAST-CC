// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
)

// CcGerenRenwu is the golang structure of table cc_geren_renwu for DAO operations like Where/Data.
type CcGerenRenwu struct {
	g.Meta   `orm:"table:cc_geren_renwu, do:true"`
	LogId    interface{} //
	UserId   interface{} // 个人识别号
	Title    interface{} // 标题
	Neirong  interface{} // 内容
	Jindu    interface{} // 进度
	CreateAt interface{} // 创建时间
}
