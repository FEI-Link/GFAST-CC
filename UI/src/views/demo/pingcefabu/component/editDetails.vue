
<template>
	<div class="system-edit-post-container">
		<el-dialog :title="(formData.id !== 0 ? '归档' : '添加') + '评测'" v-model="isShowDialog" width="400px">
			<el-form ref="formRef" :model="formData" :rules="rules" size="default" label-width="90px">
				<el-form-item v-if="formData.id === 0"  label="用户ID" prop="user_id">
					<el-input v-model="formData.user_id" placeholder="请输入唯一用户ID" />
				</el-form-item>
				<el-form-item label="评测标题" prop="title">
					<el-input v-model="formData.title" placeholder="请输入标题" />
				</el-form-item>
				<el-form-item label="评测内容" prop="neirong">
					<el-input v-model="formData.neirong" placeholder="请输入内容" />
				</el-form-item>
				<el-form-item label="发布人ID" prop="createBy">
					<el-input v-model="formData.createBy" placeholder="请输入内容" />
				</el-form-item>
			</el-form>
			<template #footer>
				<span class="dialog-footer">
					<el-button @click="onCancel" size="default">取 消</el-button>
					<el-button type="primary" @click="onSubmit" size="default" :loading="loading">{{ formData.id !== 0 ?
			'归 档' : '发 布' }}
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>

<script setup lang="ts">
import { reactive, toRefs, ref, unref } from 'vue';
import {addpingce, deletepingce } from '/@/api/demo/pingce';
import { ElMessage } from "element-plus";

interface FormState {
	id: number;
	study: string;
	niandu: string;
	user_id: string;
	title: string;
	neirong: string;
	createBy: string;
}
interface ZhiShiKuState {
	isShowDialog: boolean;
	loading: boolean;
	formData: FormState;
	rules: {}
}

const formRef = ref<HTMLElement | null>(null);
const state = reactive<ZhiShiKuState>({
	loading: false,
	isShowDialog: false,
	formData: {
		id: 0,
		study:'',
		user_id: '',
		niandu: '',
		title: '',
		neirong: '',
		createBy: '',
	},
	// 表单校验
	rules: {
		userName: [
			{ required: true, message: "姓名不能为空", trigger: "blur" }
		],
		position: [
			{ required: true, message: "职务不能为空", trigger: "blur" }
		],
	}
})

const resetForm = () => {
	state.formData = {
		id: 0,
		study:'',
		user_id: '',
		niandu: '',
		title: '',
		neirong: '',
		createBy: '',
	}
};

const emit = defineEmits<{
	(e: "dataList"): void;
}>();

const openDialog = (row: FormState | null) => {
	resetForm();
	if (row) {
		state.formData = row;
	}
	state.isShowDialog = true;
};

// 关闭弹窗
const closeDialog = () => {
	state.isShowDialog = false;
};
// 取消
const onCancel = () => {
	closeDialog();
};

// 新增
const onSubmit = () => {
	const formWrap = unref(formRef) as any;
	if (!formWrap) return;
	formWrap.validate((valid: boolean) => {
		if (valid) {
			state.loading = true;
			// 发送到后台
			if (state.formData.id === 0) {
				// 发送到后台
				console.log("测试是否调用了添加函数");
				addpingce(state.formData).then(() => {
					ElMessage.success('添加成功');
					closeDialog(); // 关闭弹窗
					emit('dataList');// 给父窗口发送事件
				}).finally(() => {
					state.loading = false;
				})
			} else {
				// 发送到后台
				deletepingce(state.formData).then(() => {
					ElMessage.success('修改成功');
					closeDialog(); // 关闭弹窗
					emit('dataList');// 给父窗口发送事件
				}).finally(() => {
					state.loading = false;
				})
			}
		}
	});
};

let { loading, isShowDialog, formData, rules } = toRefs(state);

defineExpose({
	openDialog,
})
</script>

<style></style>