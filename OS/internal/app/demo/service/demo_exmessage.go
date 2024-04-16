package service

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/dao"
	"gocc/internal/app/demo/model/do"
	"gocc/library/liberr"
	"time"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

var demoExmessageService = DemoExmessageImpl{}

func DemoExmessage() IDemoExmessage {
	return &demoExmessageService
}

type DemoExmessageImpl struct {
}
type IDemoExmessage interface {
	DemoExmassageList(ctx context.Context, req *demo.ExmessageReq) (rs gdb.Result, err error)
	DemoExmassageAdd(ctx context.Context, req *demo.ExmessageAddReq) (err error)
	DemoExmassageEdit(ctx context.Context, req *demo.ExmessageEditReq) (err error)
	DemoExmassageDetele(ctx context.Context, req *demo.ExmessageDeleteReq) (err error)
}

func (s *DemoExmessageImpl) DemoExmassageList(ctx context.Context, req *demo.ExmessageReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `select ex.id,ex.user_id,u.user_nickname, ex.user_ex,ex.createat from sys_userex  ex
	left join sys_user u on ex.user_id=u.id
	where u.id=? and  delete_is=0 or delete_is is null
`, req.UserId)
	return
}
func (s *DemoExmessageImpl) DemoExmassageAdd(ctx context.Context, req *demo.ExmessageAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysUserex.Ctx(ctx).Insert(do.SysUserex{
			UserId:   req.UserId,
			UserEx:   req.UserEx,
			Createat: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoExmessageImpl) DemoExmassageEdit(ctx context.Context, req *demo.ExmessageEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysUserex.Ctx(ctx).Where(dao.SysUserex.Columns().Id, req.Id).Update(do.SysUserex{
			UserEx: req.UserEx,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoExmessageImpl) DemoExmassageDetele(ctx context.Context, req *demo.ExmessageDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysUserex.Ctx(ctx).Where(dao.SysUserex.Columns().Id, req.Id).Update(do.SysUserex{
			DeleteIs: 1,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
