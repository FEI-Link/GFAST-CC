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

var demoPerreviewService = DemoPerreviewImpl{}

func DemoPerreview() IDemoPerreview {
	return &demoPerreviewService
}

type DemoPerreviewImpl struct {
}
type IDemoPerreview interface {
	DemoPerreviewList(ctx context.Context, req *demo.PerreviewReq) (rs gdb.Result, err error)
	DemoPerreviewAdd(ctx context.Context, req *demo.PerreviewAddReq) (err error)
	DemoPerreviewEdit(ctx context.Context, req *demo.PerreviewEditReq) (err error)
	DemoPerreviewDetele(ctx context.Context, req *demo.PerreviewDeleteReq) (err error)
}

func (s *DemoPerreviewImpl) DemoPerreviewList(ctx context.Context, req *demo.PerreviewReq) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `select 
	g.log_id,g.user_id,u.user_nickname,g.title,g.neirong,g.jindu,g.create_at  from cc_geren_renwu g
	left join sys_user u  on g.user_id=u.id
	where g.user_id=?
`, req.UserId)
	return
}
func (s *DemoPerreviewImpl) DemoPerreviewAdd(ctx context.Context, req *demo.PerreviewAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcGerenRenwu.Ctx(ctx).Insert(do.CcGerenRenwu{
			LogId:    req.LogId,
			UserId:   req.UserId,
			Title:    req.Title,
			Neirong:  req.Neirong,
			Jindu:    req.Jindu,
			CreateAt: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoPerreviewImpl) DemoPerreviewEdit(ctx context.Context, req *demo.PerreviewEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcGerenRenwu.Ctx(ctx).Where(dao.CcGerenRenwu.Columns().LogId, req.LogId).Update(do.CcGerenRenwu{
			Jindu: req.Jindu,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoPerreviewImpl) DemoPerreviewDetele(ctx context.Context, req *demo.PerreviewDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.CcGerenRenwu.Ctx(ctx).Where(dao.CcGerenRenwu.Columns().LogId, req.LogId).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
