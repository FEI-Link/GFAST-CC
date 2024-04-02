package service

import (
	"context"
	"gocc/api/v1/demo"
	"gocc/internal/app/demo/dao"
	"gocc/internal/app/demo/model/do"
	"gocc/library/liberr"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

var demoDetailsService = DemoDetailsImpl{}

func DemoDetails() IDemoDetails {
	return &demoDetailsService
}

type DemoDetailsImpl struct {
}
type IDemoDetails interface {
	DemoDetails01(ctx context.Context, UserName string) (rs gdb.Result, err error)
	DemoDetailsAdd(ctx context.Context, req *demo.DetailsAddReq) (err error)
	DemoDetailsEdit(ctx context.Context, req *demo.DetailsEditReq) (err error)
	DemoDetailsDetele(ctx context.Context, req *demo.DetailsDeleteReq) (err error)
}

func (s *DemoDetailsImpl) DemoDetails01(ctx context.Context, UserName string) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `
	select 
	log_id ,
	user_name ,
	position ,
	bumen ,
	creattime,
	state
	 from  sys_details where user_id=?`, UserName)
	return
}
func (s *DemoDetailsImpl) DemoDetailsAdd(ctx context.Context, req *demo.DetailsAddReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Insert(do.SysDetails{
			UserName: req.UserName,
			Position: req.Position,
			Bumen:    req.Bumen,
			Ruzhiat:  req.Ruzhiat,
			State:    req.State,
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoDetailsImpl) DemoDetailsEdit(ctx context.Context, req *demo.DetailsEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Insert(do.SysDetails{
			UserName: req.UserName,
			Position: req.Position,
			Bumen:    req.Bumen,
			Ruzhiat:  req.Ruzhiat,
			State:    req.State,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoDetailsImpl) DemoDetailsDetele(ctx context.Context, req *demo.DetailsDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Insert(do.SysDetails{
			UserName: req.UserName,
			Position: req.Position,
			Bumen:    req.Bumen,
			Ruzhiat:  req.Ruzhiat,
			State:    req.State,
		})
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
