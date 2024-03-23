// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"gocc/internal/app/demo/dao/internal"
)

// internalCcRoomDao is internal type for wrapping internal DAO implements.
type internalCcRoomDao = *internal.CcRoomDao

// ccRoomDao is the data access object for table cc_room.
// You can define custom methods on it to extend its functionality as you wish.
type ccRoomDao struct {
	internalCcRoomDao
}

var (
	// CcRoom is globally public accessible object for table cc_room operations.
	CcRoom = ccRoomDao{
		internal.NewCcRoomDao(),
	}
)

// Fill with you ideas below.
