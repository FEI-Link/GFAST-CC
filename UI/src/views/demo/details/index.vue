<template>
	<div class="demo-details-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :inline="true" :model="state.param" :rules="state.rules">
					<el-form-item label="用户ID">
						<el-input size="default" v-model="state.param.keyWords" placeholder="请输入用户ID" class="w-50 m-2"
							clearable />
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
			<el-table :data="state.data" show-summary style="width: 100%">
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
export default {
	name: 'apiV1demodetails',
}
</script>
<script lang="ts" setup>
import { ElMessage } from 'element-plus';
import { onMounted, reactive } from 'vue';
import { getdetails, adddetails, editdetails, deletedetails } from '/@/api/demo/details';

interface DataState {
	data: Array<any>;
	loading: boolean;
	rules: object;
	param: {
		keyWords: String;
	};
}

const state = reactive<DataState>({
	data: [],
	loading: false,
	param: {
		keyWords: '',
	},
	rules: {
	},
});
// 

const getList = () => {
	console.log("函数触发：", state.param.keyWords)
	getdetails(state.param.keyWords).then(res => {
		state.data = res.data.list ?? [];
	})
};

</script>
