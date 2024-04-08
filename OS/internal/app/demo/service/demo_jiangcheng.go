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

var demoJiangChengService = DemoJiangChengImpl{}

func DemoJiangCheng() IDemoJiangCheng {
	return &demoJiangChengService
}

type DemoJiangChengImpl struct {
}
type IDemoJiangCheng interface {
	DemoJiangChengList(ctx context.Context, req *demo.JiangReq) (rs gdb.Result, err error)
	DemoJiangChengAdd(ctx context.Context, req *demo.JiangAddReq) (err error)
	DemoJiangChengEdit(ctx context.Context, req *demo.JiangEditReq) (err error)
	DemoJiangChengDetele(ctx context.Context, req *demo.JiangDeleteReq) (err error)
}

func (s *DemoJiangChengImpl) DemoJiangChengList(ctx context.Context, req *demo.JiangReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `
`, req.UserId)
	return
}
func (s *DemoJiangChengImpl) DemoJiangChengAdd(ctx context.Context, req *demo.JiangAddReq) (err error) {
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
func (s *DemoJiangChengImpl) DemoJiangChengEdit(ctx context.Context, req *demo.JiangEditReq) (err error) {
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
func (s *DemoJiangChengImpl) DemoJiangChengDetele(ctx context.Context, req *demo.JiangDeleteReq) (err error) {
	// currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Where(dao.SysDetails.Columns().UserId, req.UserId).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
