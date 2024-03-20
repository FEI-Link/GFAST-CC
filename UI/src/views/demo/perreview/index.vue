<template>
	<div class="system-dic-container">
		<el-card shadow="hover">
			<div class="system-user-search mb15">
        <el-form :model="tableData.param" ref="queryRef" :inline="true" label-width="68px">
          <el-form-item label="字典名称" prop="dictName">
            <el-input
                v-model="tableData.param.dictName"
                placeholder="请输入字典名称"
                clearable
                size="default"
                style="width: 240px"
                @keyup.enter.native="typeList"
            />
          </el-form-item>

        </el-form>
			</div>
		</el-card>
		<EditDic ref="editDicRef" @typeList="typeList"/>
	</div>
</template>

<script lang="ts">
import { toRefs, reactive, onMounted, ref, defineComponent } from 'vue';
import { ElMessageBox, ElMessage,FormInstance} from 'element-plus';
import EditDic from '/@/views/system/dict/component/editDic.vue';
import {deleteType, getTypeList} from "/@/api/system/dict/type";


// 定义接口来定义对象的类型
interface TableDataRow {
  dictId:number;
  dictName: string;
  dictType: string;
  status: number;
  remark:string;
  createdAt:string;
}
interface TableDataState {
  ids:number[];
	tableData: {
		data: Array<TableDataRow>;
		total: number;
		loading: boolean;
		param: {
			pageNum: number;
			pageSize: number;
      dictName: string;
      dictType: string;
      status: string;
      dateRange:string[];
		};
	};
}

export default defineComponent({
	name: 'systemDic',
	components: { EditDic },
	setup() {
		const addDicRef = ref();
		const editDicRef = ref();
    const queryRef = ref();
		const state = reactive<TableDataState>({
      ids:[],
			tableData: {
				data: [],
				total: 0,
				loading: false,
				param: {
					pageNum: 1,
					pageSize: 10,
          dictName:'',
          dictType:'',
          status:'',
          dateRange:[],
				},
			},
		});
		// 初始化表格数据
		const initTableData = () => {
      typeList()
		};
    const typeList=()=>{
      getTypeList(state.tableData.param).then((res:any)=>{
        state.tableData.data = res.data.dictTypeList;
        state.tableData.total = res.data.total;
      });
    };
		// 打开新增字典弹窗
		const onOpenAddDic = () => {
      editDicRef.value.openDialog();
		};
		// 打开修改字典弹窗
		const onOpenEditDic = (row: TableDataRow) => {
			editDicRef.value.openDialog(row);
		};
		// 删除字典
		const onRowDel = (row: TableDataRow) => {
      let msg = '你确定要删除所选数据？';
      let ids:number[] = [] ;
      if(row){
        msg = `此操作将永久删除用户：“${row.dictName}”，是否继续?`
        ids = [row.dictId]
      }else{
        ids = state.ids
      }
      if(ids.length===0){
        ElMessage.error('请选择要删除的数据。');
        return
      }
			ElMessageBox.confirm(msg, '提示', {
				confirmButtonText: '确认',
				cancelButtonText: '取消',
				type: 'warning',
			})
				.then(() => {
          deleteType(ids).then(()=>{
            ElMessage.success('删除成功');
            typeList();
          })
				})
				.catch(() => {});
		};
		// 页面加载时
		onMounted(() => {
			initTableData();
		});
    /** 重置按钮操作 */
    const resetQuery = (formEl: FormInstance | undefined) => {
      if (!formEl) return
      formEl.resetFields()
      typeList()
    };
    // 多选框选中数据
    const handleSelectionChange = (selection:TableDataRow[])=> {
      state.ids = selection.map(item => item.dictId)
    };
		return {
			addDicRef,
			editDicRef,
      queryRef,
			onOpenAddDic,
			onOpenEditDic,
			onRowDel,
      typeList,
      resetQuery,
      handleSelectionChange,
			...toRefs(state),
		};
	},
});
</script>
