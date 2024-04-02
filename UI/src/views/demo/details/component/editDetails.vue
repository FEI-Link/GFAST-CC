
<template>
	<div class="system-edit-post-container">
		<el-dialog :title="(formData.id !== 0 ? '修改' : '添加') + '坐席'" v-model="isShowDialog" width="400px">
			<el-form ref="formRef" :model="formData" :rules="rules" size="default" label-width="90px">
				<el-form-item label="姓名" prop="user_name">
					<el-input v-model="formData.user_name" placeholder="请输入姓名" />
				</el-form-item>
				<el-form-item label="职位信息" prop="position">
					<el-input v-model="formData.position" placeholder="请输入职位信息" />
				</el-form-item>
				<el-form-item label="所属部门" prop="bumen">
					<el-input v-model="formData.bumen" placeholder="请输入所属部门" />
				</el-form-item>
				<el-form-item label="入职时间" prop="creattime">
					<el-input v-model="formData.creattime" placeholder="请输入入职时间" />
				</el-form-item>
				<el-form-item label="在职状态" prop="state">
					<el-input v-model="formData.state" placeholder="请输入在职状态" />
				</el-form-item>
			</el-form>
			<template #footer>
				<span class="dialog-footer">
					<el-button @click="onCancel" size="default">取 消</el-button>
					<el-button type="primary" @click="onSubmit" size="default" :loading="loading">{{ formData.id !== 0 ?
			'修 改' : '添 加' }}
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>

<script setup lang="ts">
import { reactive, toRefs, ref, unref } from 'vue';
import { getdetails, adddetails, editdetails, deletedetails } from '/@/api/demo/details';
import { ElMessage } from "element-plus";

interface FormState {
	id: number;
	fenJiHao: string;
	group: string;
	domain: string;
	fenJiLeiXing: string;
	address: string;
	user_name: string;
	position: string;
	bumen: string;
	creattime: string;
	state: string;
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
		fenJiHao: '',
		group: '',
		domain: '',
		fenJiLeiXing: '',
		address: '',
		user_name: '',
		position: '',
		bumen: '',
		creattime: '',
		state: '',
	},
	// 表单校验
	rules: {
		userName: [
			{ required: true, message: "姓名不能为空", trigger: "blur" }
		],
		position: [
			{ required: true, message: "职务不能为空", trigger: "blur" }
		],
		// address: [
		// 	{ required: true, message: "服务地址不能为空", trigger: "blur" }
		// ],
	}
})

const resetForm = () => {
	state.formData = {
		id: 0,
		fenJiHao: '',
		group: '',
		domain: '',
		fenJiLeiXing: '',
		address: '',
		user_name: '',
		position: '',
		bumen: '',
		creattime: '',
		state: '',
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
				adddetails(state.formData).then(() => {
					ElMessage.success('坐席添加成功');
					closeDialog(); // 关闭弹窗
					emit('dataList');// 给父窗口发送事件
				}).finally(() => {
					state.loading = false;
				})
			} else {
				// 发送到后台
				editdetails(state.formData).then(() => {
					ElMessage.success('坐席修改成功');
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