/*
* @desc:细节管理
 */

package sysDetails

import (
	"context"

	"github.com/gogf/gf/v2/frame/g"
	"github.com/tiger1103/gfast/v3/api/v1/system"
	"github.com/tiger1103/gfast/v3/internal/app/system/model/entity"
	"github.com/tiger1103/gfast/v3/internal/app/system/service"
)

func init() {
	service.RegisterSysDetails(New())
}

func New() *sSysDetails {
	return &sSysDetails{}
}

type sSysDetails struct {
}

func (s *sSysDetails) GetList(ctx context.Context, req *system.DetailsSearchReq) (list []*entity.SysDetails, err error) {
	db := g.DB()
	err = db.Model(&entity.SysDetails{}).Where("user_name=?", req.UserName).All(&list)
	if err != nil {
		// 处理错误
	}
	return
}
