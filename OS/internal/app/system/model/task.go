/*
* @desc:定时任务

 */

package model

import "context"

type TimeTask struct {
	FuncName string
	Param    []string
	Run      func(ctx context.Context)
}
