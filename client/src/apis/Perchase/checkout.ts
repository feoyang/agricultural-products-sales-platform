import request from '@/utils/http'


// 获取详情接口
export const getCheckInfoAPI = () => {
  return request({
    url: '/member/order/pre'
  })
}


// 创建订单
export const createOrderAPI = ({purchase_id,own_name,purchase_type,total_price,address,purchase_status} : {purchase_id: int, own_name: string, purchase_type: int, total_price: float, address: string, purchase_status: int}) => {
  return request({
    url: '/member/cart/createPurchase',
    method: 'POST',
    data: {
      purchase_id,
      own_name,
      purchase_type,
      total_price,
      address,
      purchase_status,
    }
  })
}