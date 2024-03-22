// ================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// You can delete these comments if you wish manually maintain this interface file.
// ================================================================================

package service

import (
	"context"

	"github.com/tiger1103/gfast/v3/api/v1/demo"
)

type (
	IDemoDetails interface {
		List(ctx context.Context, req *demo.DetailsSearchReq) (listRes *demo.DetailsSearchRes, err error)
		Add(ctx context.Context, req *demo.DetailsAddReq) (err error)
		Edit(ctx context.Context, id uint) (err error)
		Delete(ctx context.Context, req *demo.DetailsDeleteReq) (err error)
	}
)

var (
	localDemoDetails IDemoDetails
)

func DemoDetails() IDemoDetails {
	if localDemoDetails == nil {
		panic("implement not found for interface IDemoDetails, forgot register?")
	}
	return localDemoDetails
}

func RegisterDemoDetails(i IDemoDetails) {
	localDemoDetails = i
}
