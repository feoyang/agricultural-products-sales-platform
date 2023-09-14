// axios 基础的封装
import axios from 'axios'
import 'element-plus/es/components/message/style/css'
import { ElMessage } from 'element-plus'
import { useUserStore } from '@/stores/userStore'
import router from '@/router';
import useStore from 'element-plus/es/components/table/src/store/index.mjs'

// 创建axios实例
const httpInstance = axios.create({
    baseURL: 'http://localhost:9090', // 测试用
    timeout: 5000
  })
  
// axios请求拦截器
// httpInstance.interceptors.request.use(config => {
//   // 1. 从pinia获取token数据
//   const userStore = useUserStore()
//   // 2. 按照后端的要求拼接token数据
//   const token = userStore.userInfo.token
//   if (token) {
//     config.headers.Authorization = `Bearer ${token}`
//   }
//   return config
// }, e => Promise.reject(e))
  

// axios响应式拦截器
httpInstance.interceptors.response.use(res => res.data, e => {

  // 统一错误提示
  ElMessage({
    type: 'warning',
    message: e.response.data
  })
  return Promise.reject(e)
})

  
export default httpInstance