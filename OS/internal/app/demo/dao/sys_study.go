// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"gocc/internal/app/demo/dao/internal"
)

// internalSysStudyDao is internal type for wrapping internal DAO implements.
type internalSysStudyDao = *internal.SysStudyDao

// sysStudyDao is the data access object for table sys_study.
// You can define custom methods on it to extend its functionality as you wish.
type sysStudyDao struct {
	internalSysStudyDao
}

var (
	// SysStudy is globally public accessible object for table sys_study operations.
	SysStudy = sysStudyDao{
		internal.NewSysStudyDao(),
	}
)

// Fill with you ideas below.
