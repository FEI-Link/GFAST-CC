// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"github.com/tiger1103/gfast/v3/internal/app/system/dao/internal"
)

// sysPostDao is the data access object for table sys_post.
// You can define custom methods on it to extend its functionality as you wish.
type sysPostDao struct {
	*internal.SysPostDao
}

var (
	// SysPost is globally public accessible object for table sys_post operations.
	SysPost = sysPostDao{
		internal.NewSysPostDao(),
	}
)

// Fill with you ideas below.
