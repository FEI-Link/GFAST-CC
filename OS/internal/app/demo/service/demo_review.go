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

var demoReviewService = DemoReviewImpl{}

func DemoReview() IDemoReview {
	return &demoReviewService
}

type DemoReviewImpl struct {
}
type IDemoReview interface {
	DemoReviewList(ctx context.Context, req *demo.ReviewReq) (rs gdb.Result, err error)
	DemoReviewAdd(ctx context.Context, req *demo.ReviewAddReq) (err error)
	DemoReviewEdit(ctx context.Context, req *demo.ReviewEditReq) (err error)
	DemoReviewDetele(ctx context.Context, req *demo.ReviewDeleteReq) (err error)
}

func (s *DemoReviewImpl) DemoReviewList(ctx context.Context, req *demo.ReviewReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `SELECT b.log_id,
	d.dept_name,b.title,b.neirong,b.jindu,b.create_at
	 FROM cc_bumen_renwu b
	left join sys_dept  d on b.dept_id=d.dept_id
	where d.dept_id=?
`, req.DeptId)
	return
}
func (s *DemoReviewImpl) DemoReviewAdd(ctx context.Context, req *demo.ReviewAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcBumenRenwu.Ctx(ctx).Insert(do.CcBumenRenwu{
			DeptId:   req.DeptId,
			Title:    req.Title,
			Neirong:  req.Neirong,
			Jindu:    req.Jindu,
			CreateAt: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoReviewImpl) DemoReviewEdit(ctx context.Context, req *demo.ReviewEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcBumenRenwu.Ctx(ctx).Where(dao.CcBumenRenwu.Columns().LogId, req.LogId).Update(do.CcBumenRenwu{
			Jindu: req.Jindu,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoReviewImpl) DemoReviewDetele(ctx context.Context, req *demo.ReviewDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
