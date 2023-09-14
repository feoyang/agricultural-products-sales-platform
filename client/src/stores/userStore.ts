// pinia遵循理念: 和数据相关的所有操作 (state + action) 都放在pinia中,组件只负责出发action函数
// 管理用户数据相关

// 1. 组件出发action
// 2. action函数内部接口过去数据
// 3. 用户信息存入

import { defineStore } from 'pinia'
import { ref } from 'vue'
import { loginAPI } from '@/apis/user'
import { registerAPI } from '@/apis/user'
import { log } from 'console'
export const useUserStore = defineStore('user', () => {
    // 1. 定义管理用户数据的state
    const userInfo = ref({})
    // 2. 定义获取接口数据的action函数
    async function getUserInfo({ user_name, password, role, button_type }: { user_name: string; password: string; role: string; button_type: string} ) {
        if (button_type === 'login') {
            const res = await loginAPI({ user_name, password, role });
            const is_login: int= 1
            userInfo.value = { user_name, role, is_login }
            ElMessage({ type: 'success', message: res.message })

        } else if (button_type === 'register') {
            const res:string = await registerAPI({ user_name, password, role })
            const is_login: int = 0
            userInfo.value = { user_name, role, is_login}
            ElMessage({ type: 'success', message: res })
            // const isRegister = JSON.parse(JSON.stringify(res))
        }
    }

    // 退出时清楚用户信息
    const clearUserInfo = () => {
        userInfo.value = {}
    }
    // 3. 以对象的格式把state和action return
    return {
        userInfo,
        getUserInfo,
        clearUserInfo
    }

}, {
    persist: true
})