// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SysMissionDao is the data access object for table sys_mission.
type SysMissionDao struct {
	table   string            // table is the underlying table name of the DAO.
	group   string            // group is the database configuration group name of current DAO.
	columns SysMissionColumns // columns contains all the column names of Table for convenient usage.
}

// SysMissionColumns defines and stores column names for table sys_mission.
type SysMissionColumns struct {
	Id        string // 工作目标发布ID，自增序
	IdUser    string // 和个人关联ID
	IdBumen   string // 和部门关联ID
	Mission   string // 目标内容
	CreateAt  string // 创建时间
	DeleteAt  string // 删除时间
	Delete    string // 是否删除，只识别1为删除，其它无效
	State     string // 目前状态
	Publisher string // 发布人的ID
	Deleteby  string // 删除人的ID
}

// sysMissionColumns holds the columns for table sys_mission.
var sysMissionColumns = SysMissionColumns{
	Id:        "id",
	IdUser:    "id_user",
	IdBumen:   "id_bumen",
	Mission:   "mission",
	CreateAt:  "create_at",
	DeleteAt:  "delete_at",
	Delete:    "delete",
	State:     "state",
	Publisher: "publisher",
	Deleteby:  "deleteby",
}

// NewSysMissionDao creates and returns a new DAO object for table data access.
func NewSysMissionDao() *SysMissionDao {
	return &SysMissionDao{
		group:   "default",
		table:   "sys_mission",
		columns: sysMissionColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SysMissionDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SysMissionDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SysMissionDao) Columns() SysMissionColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SysMissionDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SysMissionDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SysMissionDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
