// 封装banner轮播图相关的业务代码
import { ref, onMounted } from 'vue'
import { getBannerAPI } from '@/apis/Perchase/home'

export function useBanner () {
  const bannerList = ref([])

  const getBanner = async () => {
    console.log("i m coming")
    const res = await getBannerAPI({
      distributionSite: '2'
    })
    bannerList.value = res.result
  }

  onMounted(() => getBanner())

  return {
    bannerList
  }
}