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

var demoDetailsService = DemoDetailsImpl{}

func DemoDetails() IDemoDetails {
	return &demoDetailsService
}

type DemoDetailsImpl struct {
}
type IDemoDetails interface {
	DemoDetails01(ctx context.Context, UserId int64) (rs gdb.Result, err error)
	DemoJiben(ctx context.Context, UserId int64) (rs gdb.Result, err error)
	DemoGanbu(ctx context.Context, req *demo.GanbuReq) (rs gdb.Result, err error)
	DemoDetailsAdd(ctx context.Context, req *demo.DetailsAddReq) (err error)
	DemoDetailsEdit(ctx context.Context, req *demo.DetailsEditReq) (err error)
	DemoDetailsDetele(ctx context.Context, req *demo.DetailsDeleteReq) (err error)
}

func (s *DemoDetailsImpl) DemoDetails01(ctx context.Context, UserId int64) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `
	select 
*
	 from  sys_details where user_id=?`, UserId)
	return
}
func (s *DemoDetailsImpl) DemoJiben(ctx context.Context, UserId int64) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `
	select 
*
	 from  sys_user where id=?`, UserId)
	return
}
func (s *DemoDetailsImpl) DemoGanbu(ctx context.Context, req *demo.GanbuReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `select s.id,s.user_nickname,d.dept_name,s.created_at  from  sys_user s
	left join sys_dept d 
	on s.dept_id=d.dept_id`)
	return
}
func (s *DemoDetailsImpl) DemoDetailsAdd(ctx context.Context, req *demo.DetailsAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Insert(do.SysDetails{
			UserId:    req.UserId,
			UserName:  req.UserName,
			Position:  req.Position,
			Bumen:     req.Bumen,
			Ruzhiat:   gtime.New(currentTime),
			State:     req.State,
			Creattime: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoDetailsImpl) DemoDetailsEdit(ctx context.Context, req *demo.DetailsEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Where(dao.SysDetails.Columns().UserId, req.UserId).Update(do.SysDetails{
			UserName: req.UserName,
			Position: req.Position,
			Bumen:    req.Bumen,
			State:    req.State,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoDetailsImpl) DemoDetailsDetele(ctx context.Context, req *demo.DetailsDeleteReq) (err error) {
	// currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Where(dao.SysDetails.Columns().UserId, req.UserId).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
