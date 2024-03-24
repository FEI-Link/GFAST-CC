package service

import (
	"context"
	"fmt"

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
	DemoDetails(ctx context.Context, UserId int64) (rs gdb.Result, err error)
}

func (s *DemoDetailsImpl) DemoDetails(ctx context.Context, UserId int64) (rs gdb.Result, err error) {
	fmt.Println("！！！！！！！！！！！！！！！！！！！！！！！！测试数据是否传达：", UserId)
	rs, err = g.DB().GetAll(ctx, `
	select 
	log_id as xh,
	user_name as xm,
	position as zuxx,
	bumen as ssbm,
	creattime as rzsj,
	state as zzzt
	 from  sys_details where user_id=?`, UserId)
	return
}
