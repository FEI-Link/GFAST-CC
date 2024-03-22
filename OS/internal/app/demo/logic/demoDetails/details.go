package demoDetails

import (
	"context"

	"github.com/gogf/gf/v2/frame/g"
	"github.com/tiger1103/gfast/v3/api/v1/demo"
	"github.com/tiger1103/gfast/v3/internal/app/demo/service"
	"github.com/tiger1103/gfast/v3/library/liberr"
)

func init() {
	service.RegisterDemoDetails(New())
}
func New() *sDemoDetails {
	return &sDemoDetails{}
}

type sDemoDetails struct {
}

func (s *sDemoDetails) List(ctx context.Context, req *demo.DetailsSearchReq) (listRes *demo.DetailsSearchRes, err error) {
	err = g.Try(ctx, func(ctx context.Context) {

	})
	return
}

func (s *sDemoDetails) Add(ctx context.Context, req *demo.DetailsAddReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {

	})
	return
}
func (s *sDemoDetails) Edit(ctx context.Context, id uint) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {

		liberr.ErrIsNil(ctx, err, "获取信息失败")
	})
	return
}
func (s *sDemoDetails) Delete(ctx context.Context, req *demo.DetailsDeleteReq) (err error) {
	err = g.Try(ctx, func(ctx context.Context) {
		liberr.ErrIsNil(ctx, err, "删除失败")
	})
	return
}
