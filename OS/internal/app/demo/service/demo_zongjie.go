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

var demoZongjieService = DemoZongjieImpl{}

func DemoZongjie() IDemoZongjie {
	return &demoZongjieService
}

type DemoZongjieImpl struct {
}
type IDemoZongjie interface {
	DemoZongjieList(ctx context.Context, req *demo.ZongjieReq) (rs gdb.Result, err error)
	DemoZongjieAdd(ctx context.Context, req *demo.ZongjieAddReq) (err error)
	DemoZongjieEdit(ctx context.Context, req *demo.ZongjieEditReq) (err error)
	DemoZongjieDetele(ctx context.Context, req *demo.ZongjieDeleteReq) (err error)
}

func (s *DemoZongjieImpl) DemoZongjieList(ctx context.Context, req *demo.ZongjieReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `select z.log_id,s.user_nickname,d.dept_name,z.title,z.neirong,z.niandu,z.creatat
	from cc_zongjie z 
	left join sys_user s on z.user_id=s.id
	left join sys_dept d on s.dept_id=d.dept_id
	where z.user_id=?
`, req.UserId)
	return
}
func (s *DemoZongjieImpl) DemoZongjieAdd(ctx context.Context, req *demo.ZongjieAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcZongjie.Ctx(ctx).Insert(do.CcZongjie{
			UserId:  req.UserId,
			Title:   req.Title,
			Neirong: req.Neirong,
			Niandu:  req.Niandu,
			Creatat: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoZongjieImpl) DemoZongjieEdit(ctx context.Context, req *demo.ZongjieEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcZongjie.Ctx(ctx).Where(dao.CcZongjie.Columns().LogId, req.LogId).Update(do.CcZongjie{
			Title:   req.Title,
			Neirong: req.Neirong,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoZongjieImpl) DemoZongjieDetele(ctx context.Context, req *demo.ZongjieDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcZongjie.Ctx(ctx).Where(dao.CcZongjie.Columns().LogId, req.LogId).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
