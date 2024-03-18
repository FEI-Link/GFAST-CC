<template>
	<div class="kefu-daiban-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :inline="true" :model="state.param" :rules="state.rules">
					<el-form-item label="关键字">
						<el-input size="default" v-model="state.param.keyWords" placeholder="请输入工单描述"
							class="w-50 m-2" clearable />
					</el-form-item>
					<!-- <el-form-item label="编号查询" prop="dateRange">
						<el-date-picker v-model="state.param.dateRange" size="default" style="width: 240px"
							value-format="YYYY-MM-DD" type="daterange" range-separator="-" start-placeholder="开始日期"
							end-placeholder="结束日期" />
					</el-form-item> -->
					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="getList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询
						</el-button>
						<!-- <el-button size="default" type="primary" class="ml10" @click="addlist">
							<el-icon>
								<ele-Search />
							</el-icon>
							新增
						</el-button> -->
					</el-form-item>
				</el-form>
			</div>
			<el-table :data="state.data"  show-summary style="width: 100%">
				<el-table-column prop="xh" label="序号" width="60" align="center" />
				<el-table-column prop="xm" label="姓名" align="center"></el-table-column>
				<el-table-column prop="zwxx" label="职位信息" show-overflow-tooltip align="center"></el-table-column>
				<el-table-column prop="ssbm" label="所属部门" show-overflow-tooltip align="center"></el-table-column>
				<el-table-column prop="rzsj" label="入职时间" show-overflow-tooltip align="center"></el-table-column>
				<el-table-column prop="zzzt" label="在职状态" show-overflow-tooltip align="center"></el-table-column>
			</el-table>
		</el-card>
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
import { ElMessage } from 'element-plus';
import { onMounted, reactive } from 'vue';
import { getdetails, adddetails,editdetails,deletedetails } from '/@/api/system/details';

interface DataState {
	data: Array<any>;
	loading: boolean;
	rules: object;
	param: {
		keyWords:string[];
	};
}

const state = reactive<DataState>({
	data: [],
	loading: false,
	param:{
		keyWords:[]
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
const addlist = () => {
	adddetails(state.param).then(res => {
		state.data = res.data.list ?? [];
	})
};
// 页面加载时
onMounted(() => {
	getList();
});
</script>
