// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SysStudyDao is the data access object for table sys_study.
type SysStudyDao struct {
	table   string          // table is the underlying table name of the DAO.
	group   string          // group is the database configuration group name of current DAO.
	columns SysStudyColumns // columns contains all the column names of Table for convenient usage.
}

// SysStudyColumns defines and stores column names for table sys_study.
type SysStudyColumns struct {
	Id       string //
	UserId   string //
	Study    string // 学习经历
	StudyDe  string // 学习经历详情
	Createat string //
	Delete   string //
}

// sysStudyColumns holds the columns for table sys_study.
var sysStudyColumns = SysStudyColumns{
	Id:       "id",
	UserId:   "user_id",
	Study:    "study",
	StudyDe:  "study_de",
	Createat: "createat",
	Delete:   "delete",
}

// NewSysStudyDao creates and returns a new DAO object for table data access.
func NewSysStudyDao() *SysStudyDao {
	return &SysStudyDao{
		group:   "default",
		table:   "sys_study",
		columns: sysStudyColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysStudyDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SysStudyDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SysStudyDao) Columns() SysStudyColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SysStudyDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysStudyDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysStudyDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
