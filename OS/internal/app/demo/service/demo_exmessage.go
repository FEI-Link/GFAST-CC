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
	rs, err = g.DB().GetAll(ctx, `SELECT s.id,s.user_id,u.user_nickname,s.study,s.study_de,s.createat
	from sys_study s 
	left join sys_user u on s.user_id=u.id
	where s.user_id=?
`, req.UserId)
	return
}
func (s *DemoExmessageImpl) DemoExmassageAdd(ctx context.Context, req *demo.ExmessageAddReq) (err error) {
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
func (s *DemoExmessageImpl) DemoExmassageEdit(ctx context.Context, req *demo.ExmessageEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Update(do.SysStudy{
			Study:   req.Study,
			StudyDe: req.StudyDe,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoExmessageImpl) DemoExmassageDetele(ctx context.Context, req *demo.ExmessageDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysStudy.Ctx(ctx).Where(dao.SysStudy.Columns().Id, req.Id).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
