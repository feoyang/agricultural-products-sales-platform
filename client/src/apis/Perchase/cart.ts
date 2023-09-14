// 封装购物车相关接口
import request from '@/utils/http'

// 加入购物车
export const insertCartAPI = ({ order_id, count, own_name }) => {
  console.log("herer4")
  return request({
    url: '/member/cart/add',
    method: 'POST',
    data: {
      order_id, 
      count,
      own_name
    }
  })
}

// 获取最新的购物车列表
export const findNewCartListAPI = (own_name) => {
  return request({
    url: `/member/cart/items/${own_name}`
  })
}

// 删除购物车
export const delCartAPI = (shopping_id) => {
  return request({
    url: `/member/cart/remove/${shopping_id}`,
    method: 'DELETE',
  })
}

// 合并购物车

export const mergeCartAPI = (data) => {
  return request({
    url: '/member/cart/merge',
    method: 'POST',
    data
  })
}