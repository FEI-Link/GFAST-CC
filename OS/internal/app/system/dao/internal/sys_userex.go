// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SysUserexDao is the data access object for table sys_userex.
type SysUserexDao struct {
	table   string           // table is the underlying table name of the DAO.
	group   string           // group is the database configuration group name of current DAO.
	columns SysUserexColumns // columns contains all the column names of Table for convenient usage.
}

// SysUserexColumns defines and stores column names for table sys_userex.
type SysUserexColumns struct {
	Id       string //
	UserId   string //
	UserEx   string // 拓展信息
	Createat string //
	Delete   string // 判断是否删除
}

// sysUserexColumns holds the columns for table sys_userex.
var sysUserexColumns = SysUserexColumns{
	Id:       "id",
	UserId:   "user_id",
	UserEx:   "user_ex",
	Createat: "createat",
	Delete:   "delete",
}

// NewSysUserexDao creates and returns a new DAO object for table data access.
func NewSysUserexDao() *SysUserexDao {
	return &SysUserexDao{
		group:   "default",
		table:   "sys_userex",
		columns: sysUserexColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysUserexDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SysUserexDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SysUserexDao) Columns() SysUserexColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SysUserexDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysUserexDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysUserexDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
