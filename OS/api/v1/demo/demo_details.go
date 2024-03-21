package demo

import (
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// 搜查功能
type DetailsSearchReq struct {
	g.Meta   `path:"/details/list" tags:"个人信息详情" method:"get" summary:"功能"`
	UserName string `json:"userName"   description:"用户名"`
}
type DetailsSearchRes struct {
	g.Meta `mime:"application/json"`
	List   gdb.Result `json:"list"`
}

type DetailsAddReq struct {
	g.Meta    `path:"/details/add" tags:"个人信息详情" method:"post" summary:"添加公告"`
	UserId    int64       `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
	UserName  string      `json:"userName"   description:"用户名"`
	Position  string      `json:"position"   description:"职位信息"`
	Bumen     string      `json:"bumen"      description:"所属部门"`
	Creattime *gtime.Time `json:"creattime"  description:"创建时间"`
	Ruzhiat   *gtime.Time `json:"ruzhiat"    description:"入职时间"`
	State     string      `json:"state"      description:"目前在职状态"`
}

type DetailsAddRes struct {
}

type DetailsEditReq struct {
	g.Meta    `path:"/details/edit" tags:"个人信息详情" method:"put" summary:"修改公告"`
	UserId    int64       `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
	UserName  string      `json:"userName"   description:"用户名"`
	Position  string      `json:"position"   description:"职位信息"`
	Bumen     string      `json:"bumen"      description:"所属部门"`
	Creattime *gtime.Time `json:"creattime"  description:"创建时间"`
	Ruzhiat   *gtime.Time `json:"ruzhiat"    description:"入职时间"`
	State     string      `json:"state"      description:"目前在职状态"`
}

type DetailsEditRes struct {
}

type DetailsDeleteReq struct {
	g.Meta   `path:"/details/delete" tags:"个人信息详情" method:"delete" summary:"删除公告"`
	UserId   int64  `json:"userId"     description:"和用户表中用户号一致，用于绑定"`
	UserName string `json:"userName"   description:"用户名"`
}

type DetailsDeleteRes struct {
}
