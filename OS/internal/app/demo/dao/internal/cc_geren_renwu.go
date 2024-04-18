// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// CcGerenRenwuDao is the data access object for table cc_geren_renwu.
type CcGerenRenwuDao struct {
	table   string              // table is the underlying table name of the DAO.
	group   string              // group is the database configuration group name of current DAO.
	columns CcGerenRenwuColumns // columns contains all the column names of Table for convenient usage.
}

// CcGerenRenwuColumns defines and stores column names for table cc_geren_renwu.
type CcGerenRenwuColumns struct {
	LogId    string //
	UserId   string // 个人识别号
	Title    string // 标题
	Neirong  string // 内容
	Jindu    string // 进度
	CreateAt string // 创建时间
}

// ccGerenRenwuColumns holds the columns for table cc_geren_renwu.
var ccGerenRenwuColumns = CcGerenRenwuColumns{
	LogId:    "log_id",
	UserId:   "user_id",
	Title:    "title",
	Neirong:  "neirong",
	Jindu:    "jindu",
	CreateAt: "create_at",
}

// NewCcGerenRenwuDao creates and returns a new DAO object for table data access.
func NewCcGerenRenwuDao() *CcGerenRenwuDao {
	return &CcGerenRenwuDao{
		group:   "default",
		table:   "cc_geren_renwu",
		columns: ccGerenRenwuColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *CcGerenRenwuDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *CcGerenRenwuDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *CcGerenRenwuDao) Columns() CcGerenRenwuColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *CcGerenRenwuDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *CcGerenRenwuDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *CcGerenRenwuDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
