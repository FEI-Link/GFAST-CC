package system

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/tiger1103/gfast/v3/internal/app/system/model/entity"
)

// 这里就是搜索界面请求的路径
type DetailsSearchReq struct {
	g.Meta   `path:"/details/list" tags:"分类信息" method:"get" summary:"职务信息"`
	UserName string `json:"userName"   description:"用户名"`
}

// DemoGenClassSearchRes 列表返回结果
type DetailsSearchRes struct {
	g.Meta      `mime:"application/json"`
	DetailsList []*entity.SysDetails `json:"detailslist"`
}

// // DemoGenClassAddReq 添加操作请求参数
// type DetailsAddReq struct {
// 	g.Meta `path:"/add" tags:"分类信息" method:"post" summary:"分类信息添加"`
// 	commonApi.Author
// 	ClassName string `p:"className" v:"required#分类名不能为空"`
// }

// // DemoGenClassAddRes 添加操作返回结果
// type DetailsAddRes struct {
// 	commonApi.EmptyRes
// }

// // DemoGenClassEditReq 修改操作请求参数
// type DetailsEditReq struct {
// 	g.Meta `path:"/edit" tags:"分类信息" method:"put" summary:"分类信息修改"`
// 	commonApi.Author
// 	Id        uint   `p:"id" v:"required#主键ID不能为空"`
// 	ClassName string `p:"className" v:"required#分类名不能为空"`
// }

// // DemoGenClassEditRes 修改操作返回结果
// type DetailsEditRes struct {
// 	commonApi.EmptyRes
// }

// // DemoGenClassGetReq 获取一条数据请求
// type DetailsGetReq struct {
// 	g.Meta `path:"/get" tags:"分类信息" method:"get" summary:"获取分类信息信息"`
// 	commonApi.Author
// 	Id uint `p:"id" v:"required#主键必须"` //通过主键获取
// }

// // DemoGenClassGetRes 获取一条数据结果
// type DetailsGetRes struct {
// 	g.Meta `mime:"application/json"`
// 	*model.DemoGenClassInfoRes
// }

// // DemoGenClassDeleteReq 删除数据请求
// type DetailsDeleteReq struct {
// 	g.Meta `path:"/delete" tags:"分类信息" method:"delete" summary:"删除分类信息"`
// 	commonApi.Author
// 	Ids []uint `p:"ids" v:"required#主键必须"` //通过主键删除
// }

// // DemoGenClassDeleteRes 删除数据返回
// type DetailsDeleteRes struct {
// 	commonApi.EmptyRes
// }
