<template>
	<div class="demo-details-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :inline="true" :model="state.param" :rules="state.rules">
					<el-form-item label="用户ID">
						<el-input size="default" v-model="state.param.userName" placeholder="使用ID来查询" class="w-50 m-2"
							clearable />
					</el-form-item>
					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="getList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询
						</el-button>
						<el-button size="default" type="success" class="ml10" @click="onAdd">
							<el-icon>
								<ele-FolderAdd />
							</el-icon>
							新增个人信息
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
				<el-table-column label="操作" width="200">
					<template #default="scope">
						<el-button size="small" text type="primary" @click="onEdit(scope.row)">修改</el-button>
						<el-button size="small" text type="primary" @click="onDelete(scope.row)">删除</el-button>
					</template>
				</el-table-column>
			</el-table>
		</el-card>
		<EditDetails ref="editRef" @getList="getList" />
	</div>
</template>
<script lang="ts">
export default {
	name: 'apiV1demodetails',
}
</script>
<script lang="ts" setup>
import { ElMessage ,ElMessageBox} from 'element-plus';
import {toRefs, reactive, onMounted, ref, toRaw } from 'vue';
import { getdetails, deletedetails } from '/@/api/demo/details';
import EditDetails from  '/@/views/demo/details/component/editDetails.vue';

interface DataState {
	data: Array<any>;
	loading: boolean;
	rules: object;
	param: {
		userName: String;
	};
}
const editRef = ref();
const onAdd = () => {
	console.log("打开弹窗")
	editRef.value.openDialog();
}
const onEdit = (row: Object) => {
	console.log("函数触发测试修改")
  editRef.value.openDialog(toRaw(row));
};
const state = reactive<DataState>({
	data: [],
	loading: false,
	param: {
		userName: '',
	},
	rules: {
	},
});
// 
const getList = () => {
	console.log("函数触发：", state.param)
	getdetails(state.param).then(res => {
		state.data = res.data.list ?? [];
	})
};
</script>
