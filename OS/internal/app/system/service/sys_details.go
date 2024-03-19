package service

import (
	"context"

	"github.com/tiger1103/gfast/v3/api/v1/system"
	"github.com/tiger1103/gfast/v3/internal/app/system/model/entity"
)

type IDetails interface {
	GetList(ctx context.Context, req *system.DetailsSearchReq) (list []*entity.SysDetails, err error)
	// Init(r *ghttp.Request, customCtx *model.Context)
	// Get(ctx context.Context) *model.Context
	// SetUser(ctx context.Context, ctxUser *model.ContextUser)
	// GetLoginUser(ctx context.Context) *model.ContextUser
	// GetUserId(ctx context.Context) uint64
}

var localIDetails IDetails

func SysDetails() IDetails {
	return localIDetails
}
