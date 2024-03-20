// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// CcRoom is the golang structure for table cc_room.
type CcRoom struct {
	Id              uint64      `json:"id"              description:""`
	BuildingId      uint64      `json:"buildingId"      description:"大楼"`
	KaHao           string      `json:"kaHao"           description:"卡号"`
	RoomCode        string      `json:"roomCode"        description:"房屋编号"`
	OwnerName       string      `json:"ownerName"       description:"房屋户主"`
	Yearnum         string      `json:"yearnum"         description:""`
	Workaddress     string      `json:"workaddress"     description:""`
	DanYuan         int         `json:"danYuan"         description:"单元"`
	LouCeng         int         `json:"louCeng"         description:"楼层"`
	MenPaiHao       int         `json:"menPaiHao"       description:"门牌号"`
	DianHua         string      `json:"dianHua"         description:"电话"`
	LanPaiDiZhi     string      `json:"lanPaiDiZhi"     description:"蓝牌地址"`
	DiZhi           string      `json:"diZhi"           description:"房间地址"`
	FangZhengMianJi float64     `json:"fangZhengMianJi" description:"房证面积"`
	CengGao         float64     `json:"cengGao"         description:"层高"`
	ChaoGaoMianJi   float64     `json:"chaoGaoMianJi"   description:"超高面积"`
	ShouFeiMianJi   float64     `json:"shouFeiMianJi"   description:"收费面积"`
	SiJieMianJi     float64     `json:"siJieMianJi"     description:"私接面积"`
	YongReZhuangTai string      `json:"yongReZhuangTai" description:"用热状态"`
	FenHuZhuangTai  string      `json:"fenHuZhuangTai"  description:"分户状态"`
	ShiFouBaShan    string      `json:"shiFouBaShan"    description:"是否把山"`
	ShiFouWeiJian   string      `json:"shiFouWeiJian"   description:"是否违建"`
	ShiFouDiLou     string      `json:"shiFouDiLou"     description:"是否底楼"`
	ShiFouDingLou   string      `json:"shiFouDingLou"   description:"是否顶楼"`
	ShiFouDiXiaShi  string      `json:"shiFouDiXiaShi"  description:"是否地下室"`
	FangJianHao     string      `json:"fangJianHao"     description:"房间号"`
	YongHuLeiXing   string      `json:"yongHuLeiXing"   description:"用户类型"`
	ShouFeiXiangMu  string      `json:"shouFeiXiangMu"  description:"收费项目"`
	OldId           string      `json:"oldId"           description:"原始ID"`
	BeiZhu          string      `json:"beiZhu"          description:"备注"`
	Rzname          string      `json:"rzname"          description:""`
	DeletedAt       *gtime.Time `json:"deletedAt"       description:""`
}
