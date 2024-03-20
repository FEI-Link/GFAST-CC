// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SysJiangchengDao is the data access object for table sys_jiangcheng.
type SysJiangchengDao struct {
	table   string               // table is the underlying table name of the DAO.
	group   string               // group is the database configuration group name of current DAO.
	columns SysJiangchengColumns // columns contains all the column names of Table for convenient usage.
}

// SysJiangchengColumns defines and stores column names for table sys_jiangcheng.
type SysJiangchengColumns struct {
	Id       string //
	UserId   string // 这个ID和个人相关联
	Switch   string // 0为惩罚，1为奖励
	Title    string // 奖惩标题名
	Neirong  string // 详细内容
	Createat string //
	Deleteat string //
	Createby string //
	Deleteby string //
}

// sysJiangchengColumns holds the columns for table sys_jiangcheng.
var sysJiangchengColumns = SysJiangchengColumns{
	Id:       "id",
	UserId:   "user_id",
	Switch:   "switch",
	Title:    "title",
	Neirong:  "neirong",
	Createat: "createat",
	Deleteat: "deleteat",
	Createby: "createby",
	Deleteby: "deleteby",
}

// NewSysJiangchengDao creates and returns a new DAO object for table data access.
func NewSysJiangchengDao() *SysJiangchengDao {
	return &SysJiangchengDao{
		group:   "default",
		table:   "sys_jiangcheng",
		columns: sysJiangchengColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysJiangchengDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SysJiangchengDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SysJiangchengDao) Columns() SysJiangchengColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SysJiangchengDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysJiangchengDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysJiangchengDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
