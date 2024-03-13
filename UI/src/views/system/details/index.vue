<template>
	<div class="systme-details-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :inline="true">
					<el-form-item label="工单号">
						<el-input size="default" v-model="tableData.param.liuShuiHao" placeholder="请输入工单号" class="w-50 m-2"
							clearable />
					</el-form-item>
					<el-form-item label="受理人">
						<el-select v-model="tableData.param.huaWuYuan" size="default">
							<el-option :label="'全部'" :value="0" />
							<el-option v-for="item in state.paiDanRenList" :key="item.id" :label="item.userNickname"
								:value="item.id" />
						</el-select>
					</el-form-item>
					<el-form-item label="所属部门">
						<el-select v-model="tableData.param.fgsmap" multiple size="default">
							<el-option v-for="item in state.FgsList" :key="item.id" :label="item.name" :value="item.id" />
						</el-select>
					</el-form-item>
					<el-form-item label="处理部门">
						<el-select v-model="tableData.param.deptId" multiple size="default">
							<el-option v-for="item in state.chuLiBuMenList" :key="item.deptId" :label="item.deptName"
								:value="item.deptId" />
						</el-select>
					</el-form-item>
					<el-form-item label="处理人">
						<el-select v-model="tableData.param.chuLiRen" filterable class="header-item-inner-long"  size="default">
							<el-option :label="'全部'" :value="0" />
							<el-option v-for="item in state.chuLiRenList" :key="item.id" :label="item.userNickname"
								:value="item.id" />
						</el-select>
					</el-form-item>
					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="gongDanList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询
						</el-button>
						<el-button size="default" type="success" class="ml10" @click="exportList">
							<el-icon>
								<ele-Download />
							</el-icon>
							导出
						</el-button>
						<el-button size="default" @click="onResetForm">
							<el-icon>
								<ele-RefreshRight />
							</el-icon>
							重置
						</el-button>
					</el-form-item>
				</el-form>
			</div>
			<el-table :data="tableData.data" style="width: 100%" border @selection-change="handleSelectionChange"
				@sort-change="handleSortChange">
				<el-table-column type="index" label="序号" width="60" />
				<el-table-column label="操作" min-width="110" align="center">
					<template #default="scope">
						<el-link type="info" style="margin-right: 10px;" @click="onOpenChaKan(scope.row)">查看</el-link>
						<el-link type="info" style="margin-right: 10px;" @click="onYanShi(scope.row)">延时</el-link>
						<!-- <el-link type="info" style="margin-right: 10px;" @click="onYanShiWCL(scope.row)">未处理延时</el-link> -->
						<el-link type="info" v-auth="'gongdan.zuofei'" style="margin-right: 10px;"
							@click="onZuoFei(scope.row)">作废</el-link>
						<el-link type="info" v-auth="'gongdan.delete'" style="margin-right: 10px;"
							@click="onDelete(scope.row)">删除</el-link>
					</template>
				</el-table-column>
				<el-table-column prop="gongDanZhuangTai" min-width="110" sortable="custom" label="工单状态">
					<template #default="scope">
						<el-tag type="warning" v-if="scope.row.zuoFei === 1">已作废</el-tag>
						<el-tag type="warning" v-else-if="scope.row.gongDanZhuangTai === 1">待接收</el-tag>
						<el-tag type="error" v-else-if="scope.row.gongDanZhuangTai === 2">处理中</el-tag>
						<el-tag type="" v-else-if="scope.row.gongDanZhuangTai === 3">待回访</el-tag>
						<el-tag type="info" v-else-if="scope.row.gongDanZhuangTai === 4">挂起</el-tag>
						<el-tag type="success" v-else-if="scope.row.gongDanZhuangTai === 5">完结</el-tag>
					</template>
				</el-table-column>
				<el-table-column prop="liuShuiHao" label="工单编号" min-width="120" sortable="custom"></el-table-column>
				<el-table-column prop="paiDanShiJian" label="受理时间" min-width="155" sortable="custom"></el-table-column>
				<el-table-column prop="paiDanRenName" label="受理人" min-width="110" sortable="custom"></el-table-column>
				
				<el-table-column prop="gongDanLeiBie" label="工单类别" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="kaHao" label="用户卡号" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="diZhi" label="地址" min-width="210" sortable="custom"></el-table-column>
				<el-table-column prop="lianXiRen" label="联系人" min-width="110" sortable="custom"
					show-overflow-tooltip></el-table-column>
				<el-table-column prop="gongDanNeiRong" label="工单内容" min-width="310" sortable="custom" show-overflow-tooltip>
				</el-table-column>
				<el-table-column prop="juTiQingKuang" label="具体情况" min-width="310" sortable="custom" show-overflow-tooltip>
				</el-table-column>
				<el-table-column prop="chuLiJieGuo" label="处理结果" min-width="310" sortable="custom"></el-table-column>
				<el-table-column prop="huanReZhan" label="换热站" min-width="110" sortable="custom"></el-table-column>
				
				<el-table-column prop="lianXiDianHua" label="联系电话" min-width="210" sortable="custom"></el-table-column>
				<!-- <el-table-column prop="fgs" min-width="110" sortable="custom" label="所属分公司">
					<template #default="scope">
						<span v-if="scope.row.fgs === 'hx'">华兴</span>
						<span v-else-if="scope.row.fgs === 'hy'">华亚</span>
						<span v-else-if="scope.row.fgs === 'ht'">华通</span>
					</template>
				</el-table-column> -->
				<el-table-column prop="fgsorg" min-width="110" sortable="custom" label="所属分公司"></el-table-column>
				<el-table-column prop="chuLiBuMen" label="处理部门" min-width="180" sortable="custom"></el-table-column>
				<el-table-column prop="chuLiRenName" label="处理人" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="wanChengShiJian" label="完成时间" min-width="155" sortable="custom"></el-table-column>
				<el-table-column prop="weiXiuGongShi" label="维修工时" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="shiFouChaoShi" label="是否超时" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="huiFangBeiZhu" label="回访情况" min-width="110" sortable></el-table-column>
				<el-table-column prop="erCiDan" label="二次单" min-width="110" sortable></el-table-column>
				<el-table-column prop="cuiDanCiShu" label="催单次数" min-width="110" sortable></el-table-column>
				<el-table-column prop="xinXiLaiYuan" label="工单来源" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="gongDanLeiXing" label="工单类型" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="xq" label="小区" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="dl" label="大楼" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="dy" label="单元" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="fj" label="房间号" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="chuLiJieGuoPingJia" label="处理结果评价" min-width="110" sortable="custom"></el-table-column>
				<el-table-column prop="fuWuTaiDu" label="服务态度评价" min-width="110" sortable="custom"></el-table-column>
			
			</el-table>
			<pagination v-show="tableData.total > 0" :total="tableData.total" v-model:page="tableData.param.pageNum"
				v-model:limit="tableData.param.pageSize" @pagination="gongDanList" />
		</el-card>
		<ChaKanDialog ref="chaKanGongDanRef" />
		<YanShiWCLDialog ref="yanShiWCLRef" />
	</div>
</template>

<script lang="ts">
// 用于切换页面时，缓存，跟菜单的缓存配合使用
// setup语法糖，需要设置一个名称，否则缓存不生效
export default {
	name: 'apiV1systemdetails',
}
</script>
<script lang="ts" setup>
import { ElMessage, ElMessageBox } from 'element-plus';
import { onMounted, reactive, ref, toRaw, toRefs } from 'vue';
import { getdetails, adddetails, editdetails, deletedetails } from "/@/api/system/details";
