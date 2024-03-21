package model

import (
	"github.com/gogf/gf/v2/os/gtime"
	"github.com/tiger1103/gfast/v3/internal/app/demo/model/entity"
)

type DetailsReq struct {
	*entity.SysDetails
	UserName string `json:"userName"   description:"用户名"`
}
type DetailsRes struct {
	UserId    int64       `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
	UserName  string      `json:"userName"   description:"用户名"`
	Position  string      `json:"position"   description:"职位信息"`
	Bumen     string      `json:"bumen"      description:"所属部门"`
	Creattime *gtime.Time `json:"creattime"  description:"创建时间"`
	Ruzhiat   *gtime.Time `json:"ruzhiat"    description:"入职时间"`
	State     string      `json:"state"      description:"目前在职状态"`
}
