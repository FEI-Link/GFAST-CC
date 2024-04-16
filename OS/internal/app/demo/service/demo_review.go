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
	rs, err = g.DB().GetAll(ctx, `SELECT s.id,s.user_id,u.user_nickname,s.study,s.study_de,s.createat
	from sys_study s 
	left join sys_user u on s.user_id=u.id
	where s.user_id=?
`, req.UserId)
	return
}
func (s *DemoReviewImpl) DemoReviewAdd(ctx context.Context, req *demo.ReviewAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Insert(do.SysStudy{
			UserId:   req.UserId,
			Study:    req.Study,
			StudyDe:  req.StudyDe,
			Createat: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoReviewImpl) DemoReviewEdit(ctx context.Context, req *demo.ReviewEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Update(do.SysStudy{
			Study:   req.Study,
			StudyDe: req.StudyDe,
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
