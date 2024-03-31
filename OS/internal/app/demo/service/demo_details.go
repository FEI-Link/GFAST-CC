package service

import (
	"context"
	"gocc/api/v1/demo"

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
	DemoDetailsAdd(ctx context.Context, req *demo.DetailsReqAdd) (res *demo.DetailsResAdd, err error)
}

func (s *DemoDetailsImpl) DemoDetails01(ctx context.Context, UserName string) (rs gdb.Result, err error) {
	rs, err = g.DB().GetAll(ctx, `
	select 
	log_id as xh,
	user_name as xm,
	position as zwxx,
	bumen as ssbm,
	creattime as rzsj,
	state as zzzt
	 from  sys_details where user_id=?`, UserName)
	return
}
func (s *DemoDetailsImpl) DemoDetailsAdd(ctx context.Context, req *demo.DetailsReqAdd) (res *demo.DetailsResAdd, err error) {

	return
}
