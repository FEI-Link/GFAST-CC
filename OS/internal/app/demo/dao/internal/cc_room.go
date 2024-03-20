// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// CcRoomDao is the data access object for table cc_room.
type CcRoomDao struct {
	table   string        // table is the underlying table name of the DAO.
	group   string        // group is the database configuration group name of current DAO.
	columns CcRoomColumns // columns contains all the column names of Table for convenient usage.
}

// CcRoomColumns defines and stores column names for table cc_room.
type CcRoomColumns struct {
	Id              string //
	BuildingId      string // 大楼
	KaHao           string // 卡号
	RoomCode        string // 房屋编号
	OwnerName       string // 房屋户主
	Yearnum         string //
	Workaddress     string //
	DanYuan         string // 单元
	LouCeng         string // 楼层
	MenPaiHao       string // 门牌号
	DianHua         string // 电话
	LanPaiDiZhi     string // 蓝牌地址
	DiZhi           string // 房间地址
	FangZhengMianJi string // 房证面积
	CengGao         string // 层高
	ChaoGaoMianJi   string // 超高面积
	ShouFeiMianJi   string // 收费面积
	SiJieMianJi     string // 私接面积
	YongReZhuangTai string // 用热状态
	FenHuZhuangTai  string // 分户状态
	ShiFouBaShan    string // 是否把山
	ShiFouWeiJian   string // 是否违建
	ShiFouDiLou     string // 是否底楼
	ShiFouDingLou   string // 是否顶楼
	ShiFouDiXiaShi  string // 是否地下室
	FangJianHao     string // 房间号
	YongHuLeiXing   string // 用户类型
	ShouFeiXiangMu  string // 收费项目
	OldId           string // 原始ID
	BeiZhu          string // 备注
	Rzname          string //
	DeletedAt       string //
}

// ccRoomColumns holds the columns for table cc_room.
var ccRoomColumns = CcRoomColumns{
	Id:              "id",
	BuildingId:      "building_id",
	KaHao:           "ka_hao",
	RoomCode:        "room_code",
	OwnerName:       "owner_name",
	Yearnum:         "yearnum",
	Workaddress:     "workaddress",
	DanYuan:         "dan_yuan",
	LouCeng:         "lou_ceng",
	MenPaiHao:       "men_pai_hao",
	DianHua:         "dian_hua",
	LanPaiDiZhi:     "lan_pai_di_zhi",
	DiZhi:           "di_zhi",
	FangZhengMianJi: "fang_zheng_mian_ji",
	CengGao:         "ceng_gao",
	ChaoGaoMianJi:   "chao_gao_mian_ji",
	ShouFeiMianJi:   "shou_fei_mian_ji",
	SiJieMianJi:     "si_jie_mian_ji",
	YongReZhuangTai: "yong_re_zhuang_tai",
	FenHuZhuangTai:  "fen_hu_zhuang_tai",
	ShiFouBaShan:    "shi_fou_ba_shan",
	ShiFouWeiJian:   "shi_fou_wei_jian",
	ShiFouDiLou:     "shi_fou_di_lou",
	ShiFouDingLou:   "shi_fou_ding_lou",
	ShiFouDiXiaShi:  "shi_fou_di_xia_shi",
	FangJianHao:     "fang_jian_hao",
	YongHuLeiXing:   "yong_hu_lei_xing",
	ShouFeiXiangMu:  "shou_fei_xiang_mu",
	OldId:           "old_id",
	BeiZhu:          "bei_zhu",
	Rzname:          "rzname",
	DeletedAt:       "deleted_at",
}

// NewCcRoomDao creates and returns a new DAO object for table data access.
func NewCcRoomDao() *CcRoomDao {
	return &CcRoomDao{
		group:   "default",
		table:   "cc_room",
		columns: ccRoomColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *CcRoomDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *CcRoomDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *CcRoomDao) Columns() CcRoomColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *CcRoomDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *CcRoomDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *CcRoomDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
