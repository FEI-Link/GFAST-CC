<template>
	<div>
		<el-card shadow="hover">
			<div class="system-user-search mb15">
				<el-form :model="tableData.param" ref="queryRef" :inline="true" label-width="68px">
					<el-form-item label="个人ID" prop="userId" style="width: 200px;">
						<el-input v-model="tableData.param.userId" placeholder="请输入ID号" clearable size="default"
							@keyup.enter.native="getList" />
					</el-form-item>
					<el-form-item>
						<el-button size="default" type="primary" class="ml10" @click="getList">
							<el-icon>
								<ele-Search />
							</el-icon>
							查询
						</el-button>
						<el-button size="default" type="success" class="ml10" @click="onZuoXiAdd">
							<el-icon>
								<ele-FolderAdd />
							</el-icon>
							新增额外信息
						</el-button>
					</el-form-item>
				</el-form>
			</div>
			<el-table :data="tableData.data" style="width: 100%">
				<!-- <el-table-column label="序号" align="center" prop="log_id" /> -->
				<el-table-column label="用户ID" align="center" prop="user_id" />
				<el-table-column label="姓名" align="center" prop="user_nickname" />
				<el-table-column label="额外信息" align="center" prop="user_ex" />
				<el-table-column label="创建时间" align="center" prop="createat" />
				<!-- <el-table-column label="入职时间" align="center" prop="creattime" /> -->
				<!-- <el-table-column label="在职状态" align="center" prop="state" /> -->
				<!-- <el-table-column label="操作号" align="center" prop="log_id" /> -->
				<el-table-column label="操作" width="100">
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
				</el-table-column>
			</el-table>
			<pagination v-show="tableData.total > tableData.param.pageSize" :total="tableData.total"
				v-model:page="tableData.param.pageNum" v-model:limit="tableData.param.pageSize" @pagination="getList" />
		</el-card>
		<Editexmassage ref="editRef" @dataList="getList" />
	</div>
</template>

<script setup lang="ts">
import { ElMessage, ElMessageBox } from 'element-plus';
import { toRefs, reactive, onMounted, ref, toRaw } from 'vue';
import { getexmessage, deleteexmessage } from '/@/api/demo/exmessage';
import Editexmassage from '/@/views/demo/exmessage/component/editDetails.vue';

// 定义接口来定义对象的类型
interface TableData {
	userName: string;
	userId:string;
	id: number;
}
interface TableDataState {
	ids: number[];
	tableData: {
		data: Array<TableData>;
		total: number;
		loading: boolean;
		param: {
			userName: string;
			userId:string;
			logId:string;
			pageNum: number;
			pageSize: number;
			id: number;
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
	getexmessage(state.tableData.param).then((res: any) => {
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

const onDel = (row: TableData) => {
	let msg = '你确定要删除所选信息？';
	// let id: string = '1';
	if (row) {
		msg = `此操作将永久删除信息，是否继续?`
		// id = row.userName
	}

	ElMessageBox.confirm(msg, '提示', {
		confirmButtonText: '确认',
		cancelButtonText: '取消',
		type: 'warning',
	})
		.then(() => {
			deleteexmessage(state.tableData.param).then(() => {
				ElMessage.success('删除成功');
				getList();
			})
		})
		.catch(() => { });
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
			id:0,
			pageNum: 1,
			pageSize: 10,
		},
	},
});

let { tableData } = toRefs(state);
</script>

<style></style>