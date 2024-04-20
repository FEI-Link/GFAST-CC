// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// CcZongjieDao is the data access object for table cc_zongjie.
type CcZongjieDao struct {
	table   string           // table is the underlying table name of the DAO.
	group   string           // group is the database configuration group name of current DAO.
	columns CcZongjieColumns // columns contains all the column names of Table for convenient usage.
}

// CcZongjieColumns defines and stores column names for table cc_zongjie.
type CcZongjieColumns struct {
	LogId   string //
	UserId  string //
	Title   string //
	Neirong string //
	Creatat string //
	Niandu  string //
}

// ccZongjieColumns holds the columns for table cc_zongjie.
var ccZongjieColumns = CcZongjieColumns{
	LogId:   "log_id",
	UserId:  "user_id",
	Title:   "title",
	Neirong: "neirong",
	Creatat: "creatat",
	Niandu:  "niandu",
}

// NewCcZongjieDao creates and returns a new DAO object for table data access.
func NewCcZongjieDao() *CcZongjieDao {
	return &CcZongjieDao{
		group:   "default",
		table:   "cc_zongjie",
		columns: ccZongjieColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *CcZongjieDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *CcZongjieDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *CcZongjieDao) Columns() CcZongjieColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *CcZongjieDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *CcZongjieDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *CcZongjieDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
