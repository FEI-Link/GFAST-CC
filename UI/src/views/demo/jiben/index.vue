<template>
	<div>
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :model="tableData.param" ref="queryRef" :inline="true" label-width="68px">
					<el-form-item label="个人ID号" prop="userId" style="width: 200px;">
						<el-input v-model="tableData.param.userId" placeholder="请输入ID号" clearable size="default"
							@keyup.enter.native="getList" />
					</el-form-item>
					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="getList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询基本信息
						</el-button>
						<!-- <el-button size="default" type="success" class="ml10" @click="onZuoXiAdd"> 
							<el-icon>
								<ele-FolderAdd />
							</el-icon>
							新增详细信息
						</el-button> -->
					</el-form-item>
				</el-form>
			</div>
			<el-table :data="tableData.data" style="width: 100%">
				<!-- <el-table-column label="序号" align="center" prop="log_id" /> -->
	
				<el-table-column label="用户ID" align="center" prop="id" />
				<el-table-column label="姓名" align="center" prop="user_name" />
				<el-table-column label="电话" align="center" prop="mobile" />
				<el-table-column label="邮箱" align="center" prop="userEmail" />
				<el-table-column label="性别" align="center" prop="sex" />
				<el-table-column label="备注" align="center" prop="remark" />
				<!-- <el-table-column label="操作号" align="center" prop="log_id" /> -->
				<!-- <el-table-column label="操作" width="100">
					<template #default="scope">
						<el-dropdown>
							<span class="el-dropdown-link">
								...<el-icon class="el-icon--right"><arrow-down /></el-icon>
							</span>
							<template #dropdown>
								<el-dropdown-menu>
									<el-dropdown-item @click="onEdit(scope.row)">修改</el-dropdown-item>
									<el-dropdown-item @click="onDel(scope.row)">删除</el-dropdown-item>
								</el-dropdown-menu>
							</template>
						</el-dropdown>
					</template>
				</el-table-column> -->
			</el-table>
			<pagination v-show="tableData.total > tableData.param.pageSize" :total="tableData.total"
				v-model:page="tableData.param.pageNum" v-model:limit="tableData.param.pageSize" @pagination="getList" />
		</el-card>
		<EditDetails ref="editRef" @dataList="getList" />
	</div>
</template>

<script setup lang="ts">
import { ElMessage, ElMessageBox } from 'element-plus';
import { toRefs, reactive, onMounted, ref, toRaw } from 'vue';
import { getdetails } from '/@/api/demo/jjiben';
import EditDetails from '/@/views/demo/details/component/editDetails.vue';

// 定义接口来定义对象的类型
interface TableData {
	userName: string;
	userId:string;
}
interface TableDataState {
	ids: number[];
	tableData: {
		data: Array<TableData>;
		total: number;
		loading: boolean;
		param: {
			id: number;
			userName: string;
			userId:string;
			logId:string;
			pageNum: number;
			pageSize: number;
		};
	};
}

//   onMounted(() => {
// 	initView();
//   });

//   const initView = () => {
// 	// 查询列表
// 	getList();
//   };

const getList = () => {
	getdetails(state.tableData.param).then((res: any) => {
		state.tableData.data = res.data.list;
		state.tableData.total = res.data.total;
	});
};

const editRef = ref();


const onZuoXiAdd = () => {
	editRef.value.openDialog();
}

const onEdit = (row: Object) => {
	editRef.value.openDialog(toRaw(row));
};


const state = reactive<TableDataState>({
	ids: [],
	tableData: {
		data: [],
		total: 0,
		loading: false,
		param: {
			userName: '',
			userId:'',
			logId:'',
			id: 0,
			pageNum: 1,
			pageSize: 10,
		},
	},
});

let { tableData } = toRefs(state);
</script>

<style></style>