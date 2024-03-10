// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SysDetailsDao is the data access object for table sys_details.
type SysDetailsDao struct {
	table   string            // table is the underlying table name of the DAO.
	group   string            // group is the database configuration group name of current DAO.
	columns SysDetailsColumns // columns contains all the column names of Table for convenient usage.
}

// SysDetailsColumns defines and stores column names for table sys_details.
type SysDetailsColumns struct {
	LogId      string // 表示本表记录的ID
	UserId     string // 和用户表中用户号一致，用于绑定
	UserName   string // 用户名
	Position   string // 职位信息
	Bumen      string // 所属部门
	Creattime  string // 创建时间
	Ruzhiat    string // 入职时间
	State      string // 目前在职状态
	Updatetime string // 更新时间
	Deletetime string // 删除时间也是离职时间
	Delete     string // 1为删除，不对其他数字做判断
	Updateby   string // 修改人
	Deleteby   string // 删除人
}

// sysDetailsColumns holds the columns for table sys_details.
var sysDetailsColumns = SysDetailsColumns{
	LogId:      "log_id",
	UserId:     "user_id",
	UserName:   "user_name",
	Position:   "position",
	Bumen:      "bumen",
	Creattime:  "creattime",
	Ruzhiat:    "ruzhiat",
	State:      "state",
	Updatetime: "updatetime",
	Deletetime: "deletetime",
	Delete:     "delete",
	Updateby:   "updateby",
	Deleteby:   "deleteby",
}

// NewSysDetailsDao creates and returns a new DAO object for table data access.
func NewSysDetailsDao() *SysDetailsDao {
	return &SysDetailsDao{
		group:   "default",
		table:   "sys_details",
		columns: sysDetailsColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysDetailsDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SysDetailsDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SysDetailsDao) Columns() SysDetailsColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SysDetailsDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysDetailsDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysDetailsDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
