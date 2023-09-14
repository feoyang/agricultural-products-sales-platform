// 封装所有和用户相关的接口函数
import request from '@/utils/http'

export const loginAPI = ({ user_name, password, role} : { user_name: string, password: string, role: string}) => {  
  return request({
    url: '/login',
    method: 'POST',
    data: {
      user_name,
      password,
      role,
    }
  })
}

export const registerAPI = ({ user_name, password, role} : { user_name: string, password: string, role: string}) => {
  return request({
    url: '/register',
    method: 'POST',
    data: {
      user_name,
      password,
      role
    }
  })
}

export const getLikeListAPI = ({ limit = 4 }) => {
  return request({
    url: '/goods/relevant',
    params: {
      limit
    }
  })
}