<template>
	<div class="kefu-daiban-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :inline="true" :model="state.param" :rules="state.rules">
					<el-form-item label="统计周期" prop="dateRange">
						<el-date-picker v-model="state.param.dateRange" size="default" style="width: 240px"
							value-format="YYYY-MM-DD" type="daterange" range-separator="-" start-placeholder="开始日期"
							end-placeholder="结束日期" />
					</el-form-item>

					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="getList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询
						</el-button>
					</el-form-item>
				</el-form>
			</div>
			<el-table :data="state.data"  show-summary style="width: 100%">
				<el-table-column prop="xh" label="序号" width="60" align="center" />
				<el-table-column prop="xm" label="姓名" align="center"></el-table-column>
				<el-table-column label="呼入分类" show-overflow-tooltip align="center">
					<el-table-column prop="hrzx" label="咨询" show-overflow-tooltip align="center">
					</el-table-column>
					<el-table-column prop="hrpd" label="派单" show-overflow-tooltip align="center">
					</el-table-column>
					<el-table-column prop="hrts" label="投诉" show-overflow-tooltip align="center">
					</el-table-column>
				</el-table-column>
				<el-table-column prop="hrzl" label="呼入接通总量" align="center">
				</el-table-column>

				<el-table-column label="派单分类" show-overflow-tooltip align="center">
					<el-table-column prop="khld" label="客户来电" show-overflow-tooltip align="center">
					</el-table-column>
					<el-table-column prop="qtpd" label="其它派单" show-overflow-tooltip align="center">
					</el-table-column>
				</el-table-column>
				<el-table-column prop="jdzl" label="工单总量" show-overflow-tooltip align="center">
				</el-table-column>
				<el-table-column label="工单状态" show-overflow-tooltip align="center">
					<el-table-column prop="clwb" label="处理完毕" show-overflow-tooltip align="center">
					</el-table-column>
					<el-table-column prop="dcl" label="待处理" show-overflow-tooltip align="center">
					</el-table-column>
				</el-table-column>
				<el-table-column label="回访" show-overflow-tooltip align="center">
					<el-table-column prop="yhf" label="已回访" show-overflow-tooltip align="center">
					</el-table-column>
					<el-table-column prop="dhf" label="待回访" show-overflow-tooltip align="center">
					</el-table-column>
				</el-table-column>
				<el-table-column prop="hflv" label="回访率%" show-overflow-tooltip align="center"></el-table-column>
			</el-table>
		</el-card>
	</div>
</template>
<script lang="ts">
// 用于切换页面时，缓存，跟菜单的缓存配合使用
// setup语法糖，需要设置一个名称，否则缓存不生效
export default {
	name: 'apiV1KefuReportHuaxing01',
}
</script>
<script lang="ts" setup>
import { ElMessage } from 'element-plus';
import { onMounted, reactive } from 'vue';
import { getdetails, adddetails,editdetails,deletedetails } from '/@/api/system/details';

interface DataState {
	data: Array<any>;
	loading: boolean;
	rules: object;
	param: {
		dateRange: string[];
	};
}

const state = reactive<DataState>({
	data: [],
	loading: false,
	param:{
		dateRange:[]
	},
	rules: {
	},
});
// 

const getList = () => {
	getdetails(state.param).then(res => {
		state.data = res.data.list ?? [];
	})
};

// 页面加载时
onMounted(() => {
	getList();
});

</script>
