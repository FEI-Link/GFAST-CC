// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
)

// CcPingce is the golang structure of table cc_pingce for DAO operations like Where/Data.
type CcPingce struct {
	g.Meta   `orm:"table:cc_pingce, do:true"`
	LogId    interface{} //
	UserId   interface{} //
	Title    interface{} //
	Neirong  interface{} //
	CreateAt interface{} //
	CreateBy interface{} //
	DeleteIs interface{} // 1为删除，不对其他情况做区分
}
