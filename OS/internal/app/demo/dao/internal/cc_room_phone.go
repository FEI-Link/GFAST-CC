// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// CcRoomPhoneDao is the data access object for table cc_room_phone.
type CcRoomPhoneDao struct {
	table   string             // table is the underlying table name of the DAO.
	group   string             // group is the database configuration group name of current DAO.
	columns CcRoomPhoneColumns // columns contains all the column names of Table for convenient usage.
}

// CcRoomPhoneColumns defines and stores column names for table cc_room_phone.
type CcRoomPhoneColumns struct {
	Id        string // ID
	RoomId    string // 房间ID
	Phone     string // 电话号
	CreateBy  string // 创建者
	UpdateBy  string // 更新
	CreatedAt string // 创建时间
	UpdatedAt string // 修改时间
	DeletedAt string // 删除时间
}

// ccRoomPhoneColumns holds the columns for table cc_room_phone.
var ccRoomPhoneColumns = CcRoomPhoneColumns{
	Id:        "id",
	RoomId:    "room_id",
	Phone:     "phone",
	CreateBy:  "create_by",
	UpdateBy:  "update_by",
	CreatedAt: "created_at",
	UpdatedAt: "updated_at",
	DeletedAt: "deleted_at",
}

// NewCcRoomPhoneDao creates and returns a new DAO object for table data access.
func NewCcRoomPhoneDao() *CcRoomPhoneDao {
	return &CcRoomPhoneDao{
		group:   "default",
		table:   "cc_room_phone",
		columns: ccRoomPhoneColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *CcRoomPhoneDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *CcRoomPhoneDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *CcRoomPhoneDao) Columns() CcRoomPhoneColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *CcRoomPhoneDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *CcRoomPhoneDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *CcRoomPhoneDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}
