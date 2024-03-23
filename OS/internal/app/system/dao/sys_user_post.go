// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"gocc/internal/app/system/dao/internal"
)

// internalSysUserPostDao is internal type for wrapping internal DAO implements.
type internalSysUserPostDao = *internal.SysUserPostDao

// sysUserPostDao is the data access object for table sys_user_post.
// You can define custom methods on it to extend its functionality as you wish.
type sysUserPostDao struct {
	internalSysUserPostDao
}

var (
	// SysUserPost is globally public accessible object for table sys_user_post operations.
	SysUserPost = sysUserPostDao{
		internal.NewSysUserPostDao(),
	}
)

// Fill with you ideas below.
