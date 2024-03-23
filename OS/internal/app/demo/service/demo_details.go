package service

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
)

var demoDetailsService = DemoDetailsImpl{}

func DemoDetails() IDemoDetails {
	return &demoDetailsService
}

type DemoDetailsImpl struct {
}
type IDemoDetails interface {
	DemoDetails(ctx context.Context, KaHao string) (rs2 gdb.Result, err error)
}

func (s *DemoDetailsImpl) DemoDetails(ctx context.Context, kaHao string) (rs2 gdb.Result, err error) {

	return
}
