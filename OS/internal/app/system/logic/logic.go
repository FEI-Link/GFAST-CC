package logic

import (
	_ "gocc/internal/app/system/logic/context"
	_ "gocc/internal/app/system/logic/middleware"

	_ "gocc/internal/app/system/logic/personal"

	_ "gocc/internal/app/system/logic/sysAuthRule"

	_ "gocc/internal/app/system/logic/sysDept"

	_ "gocc/internal/app/system/logic/sysLoginLog"

	_ "gocc/internal/app/system/logic/sysOperLog"

	_ "gocc/internal/app/system/logic/sysPost"

	_ "gocc/internal/app/system/logic/sysRole"

	_ "gocc/internal/app/system/logic/sysUser"

	_ "gocc/internal/app/system/logic/sysUserOnline"

	_ "gocc/internal/app/system/logic/token"
)
