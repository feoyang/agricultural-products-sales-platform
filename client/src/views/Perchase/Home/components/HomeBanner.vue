<script setup>
import { getBannerAPI } from '@/apis/Perchase/home'
import { onMounted, ref } from 'vue'

const bannerList = ref([])

const getBanner = async () => {
  // const res = await getBannerAPI()
  // console.log(res)
  // bannerList.value = res.result
  bannerList.value = [
    {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/05856e39ed8f42bfa742dd7e03fd827d.jpg',
    },
    {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/b3f130df1b1c4b4488aaa888e7320502.jpg',
     },
     {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/c15cac52034f4a5d90b9373031684db1.jpg',
     },
     {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/4def113546d94c4382b1e68f13572a90.jpg',
     },
     {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/ab7e9d470f314f3491f363b4481258cc.jpg',
     },
     {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/08/09/ea594c6435fa47bdb326dfb4bf2f5c05.jpg',
     },
     {id: 0, 
      imgUrl: 'https://image.cnhnb.com/image/jpg/miniapp/2023/03/27/e38a7d08013f439aa34cb7737f4e53b5.jpg',
     },

  ]
}

onMounted(() => getBanner())

</script>



<template>
  <div class="home-banner">
    <el-carousel height="440px">
      <el-carousel-item v-for="item in bannerList" :key="item.id">
        <img :src="item.imgUrl" alt="">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>



<style scoped lang='scss'>
.home-banner {
  width: 1240px;
  height: 500px;
  position: absolute;
  left: 0;
  top: 0;
  z-index: 98;

  img {
    width: 100%;
    height: 500px;
  }
}
</style>