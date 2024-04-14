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

var demoStudyService = DemoStudyImpl{}

func DemoStudy() IDemoStudy {
	return &demoStudyService
}

type DemoStudyImpl struct {
}
type IDemoStudy interface {
	DemoStudyList(ctx context.Context, req *demo.StudyReq) (rs gdb.Result, err error)
	DemoStudyAdd(ctx context.Context, req *demo.StudyAddReq) (err error)
	DemoStudyEdit(ctx context.Context, req *demo.StudyEditReq) (err error)
	DemoStudyDetele(ctx context.Context, req *demo.StudyDeleteReq) (err error)
}

func (s *DemoStudyImpl) DemoStudyList(ctx context.Context, req *demo.StudyReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `SELECT s.id,s.user_id,u.user_nickname,s.study,s.study_de,s.createat
	from sys_study s 
	left join sys_user u on s.user_id=u.id
	where s.user_id=?
`, req.UserId)
	return
}
func (s *DemoStudyImpl) DemoStudyAdd(ctx context.Context, req *demo.StudyAddReq) (err error) {
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
func (s *DemoStudyImpl) DemoStudyEdit(ctx context.Context, req *demo.StudyEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Update(do.SysStudy{
			Study:   req.Study,
			StudyDe: req.StudyDe,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoStudyImpl) DemoStudyDetele(ctx context.Context, req *demo.StudyDeleteReq) (err error) {
	// currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
