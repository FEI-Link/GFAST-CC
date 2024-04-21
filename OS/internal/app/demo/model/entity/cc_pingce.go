// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

// CcPingce is the golang structure for table cc_pingce.
type CcPingce struct {
	LogId    int    `json:"logId"    description:""`
	UserId   int    `json:"userId"   description:""`
	Title    string `json:"title"    description:""`
	Neirong  string `json:"neirong"  description:""`
	CreateAt string `json:"createAt" description:""`
	CreateBy string `json:"createBy" description:""`
	DeleteIs int    `json:"deleteIs" description:"1为删除，不对其他情况做区分"`
}
