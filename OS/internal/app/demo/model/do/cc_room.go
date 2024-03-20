// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// CcRoom is the golang structure of table cc_room for DAO operations like Where/Data.
type CcRoom struct {
	g.Meta          `orm:"table:cc_room, do:true"`
	Id              interface{} //
	BuildingId      interface{} // 大楼
	KaHao           interface{} // 卡号
	RoomCode        interface{} // 房屋编号
	OwnerName       interface{} // 房屋户主
	Yearnum         interface{} //
	Workaddress     interface{} //
	DanYuan         interface{} // 单元
	LouCeng         interface{} // 楼层
	MenPaiHao       interface{} // 门牌号
	DianHua         interface{} // 电话
	LanPaiDiZhi     interface{} // 蓝牌地址
	DiZhi           interface{} // 房间地址
	FangZhengMianJi interface{} // 房证面积
	CengGao         interface{} // 层高
	ChaoGaoMianJi   interface{} // 超高面积
	ShouFeiMianJi   interface{} // 收费面积
	SiJieMianJi     interface{} // 私接面积
	YongReZhuangTai interface{} // 用热状态
	FenHuZhuangTai  interface{} // 分户状态
	ShiFouBaShan    interface{} // 是否把山
	ShiFouWeiJian   interface{} // 是否违建
	ShiFouDiLou     interface{} // 是否底楼
	ShiFouDingLou   interface{} // 是否顶楼
	ShiFouDiXiaShi  interface{} // 是否地下室
	FangJianHao     interface{} // 房间号
	YongHuLeiXing   interface{} // 用户类型
	ShouFeiXiangMu  interface{} // 收费项目
	OldId           interface{} // 原始ID
	BeiZhu          interface{} // 备注
	Rzname          interface{} //
	DeletedAt       *gtime.Time //
}
