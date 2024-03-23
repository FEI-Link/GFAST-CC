// ==========================================================================
// GFast自动生成dao操作代码。
// desc:定时任务
// ==========================================================================

package dao

import (
	"gocc/internal/app/system/dao/internal"
)

// sysJobDao is the manager for logic model data accessing and custom defined data operations functions management.
// You can define custom methods on it to extend its functionality as you wish.
type sysJobDao struct {
	*internal.SysJobDao
}

var (
	// SysJob is globally public accessible object for table tools_gen_table operations.
	SysJob = sysJobDao{
		internal.NewSysJobDao(),
	}
)

// Fill with you ideas below.
