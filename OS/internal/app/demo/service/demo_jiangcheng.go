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
	rs, err = g.DB().GetAll(ctx, `select 
	j.user_id as userId,u.user_nickname as userNickname,d.dept_name as deptName,
	(case when j.switch=1 then '奖励' else '惩罚' end )as switch,
	j.title as title,j.neirong as neirong
	from sys_jiangcheng  j 
	left join sys_user  u on j.user_id=u.id
	left join sys_dept d on u.dept_id=d.dept_id
	left join sys_user u1 on j.createby=u1.id
	where j.user_id=?
`, req.UserId)
	return
}
func (s *DemoJiangChengImpl) DemoJiangChengAdd(ctx context.Context, req *demo.JiangAddReq) (err error) {
	currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysJiangcheng.Ctx(ctx).Insert(do.SysJiangcheng{
			UserId:   req.UserId,
			Switch:   req.Switch,
			Title:    req.Title,
			Neirong:  req.Neirong,
			Createat: gtime.New(currentTime),
		})
		liberr.ErrIsNil(ctx, err, "添加失败")
	})
	return
}
func (s *DemoJiangChengImpl) DemoJiangChengEdit(ctx context.Context, req *demo.JiangEditReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysJiangcheng.Ctx(ctx).Where(dao.SysJiangcheng.Columns().UserId, req.UserId).Update(do.SysJiangcheng{
			Title:   req.Title,
			Neirong: req.Neirong,
		})
		liberr.ErrIsNil(ctx, err, "修改失败")
	})
	return
}
func (s *DemoJiangChengImpl) DemoJiangChengDetele(ctx context.Context, req *demo.DetailsDeleteReq) (err error) {
	// currentTime := time.Now() // 获取当前时间
	err = g.Try(ctx, func(ctx context.Context) {
		_, err = dao.SysDetails.Ctx(ctx).Where(dao.SysDetails.Columns().UserId, req.UserId).Delete()
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
