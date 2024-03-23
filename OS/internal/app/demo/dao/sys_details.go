// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"gocc/internal/app/demo/dao/internal"
)

// internalSysDetailsDao is internal type for wrapping internal DAO implements.
type internalSysDetailsDao = *internal.SysDetailsDao

// sysDetailsDao is the data access object for table sys_details.
// You can define custom methods on it to extend its functionality as you wish.
type sysDetailsDao struct {
	internalSysDetailsDao
}

var (
	// SysDetails is globally public accessible object for table sys_details operations.
	SysDetails = sysDetailsDao{
		internal.NewSysDetailsDao(),
	}
)

// Fill with you ideas below.
