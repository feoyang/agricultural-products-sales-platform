<script setup>

import GoodsItem from '../Home/components/GoodsItem.vue'
import { ref } from 'vue'
import { useBanner } from './composables/useBanner'
import { useCategory } from './composables/useCategory'
// const { bannerList } = useBanner()
const bannerList = ref()
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


const { categoryData } = useCategory()
console.log("1231123")

console.log(categoryData)
console.log("1231123")





</script>

<template>
  <div class="top-category">
    <div class="container m-top-20">
      <!-- 面包屑 -->
      <div class="bread-container">
        <el-breadcrumb separator=">">
          <el-breadcrumb-item :to="{ path: '/order' }">首页</el-breadcrumb-item>
          <el-breadcrumb-item>{{ categoryData.name }}</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <!-- 轮播图 -->
      <div class="home-banner">
        <el-carousel height="500px">
          <el-carousel-item v-for="item in bannerList" :key="item.id">
            <img :src="item.imgUrl" alt="">
          </el-carousel-item>
        </el-carousel>
      </div>
      <div class="sub-list">
        <h3>全部分类</h3>
        <ul>
          <li v-for="i in categoryData.children" :key="i.id">
            <RouterLink :to="`/order/getCategory/sub/${i.id}`">
              <img :src="i.goods[0].picture" />
              <p>{{ i.name }}</p>
            </RouterLink>
          </li>
        </ul>
      </div>
      <div class="ref-goods" v-for="item in categoryData.children" :key="item.id">
        <div class="head">
          <h3>- {{ item.name }}-</h3>
        </div>
        <div class="body">
          <GoodsItem v-for="good in item.goods" :goods="good" :key="good.id" />
        </div>
      </div>
    </div>
  </div>
</template>


<style scoped lang="scss">
.top-category {
  h3 {
    font-size: 28px;
    color: #666;
    font-weight: normal;
    text-align: center;
    line-height: 100px;
  }

  .sub-list {
    margin-top: 20px;
    background-color: #fff;

    ul {
      display: flex;
      padding: 0 32px;
      flex-wrap: wrap;

      li {
        width: 168px;
        height: 160px;


        a {
          text-align: center;
          display: block;
          font-size: 16px;

          img {
            width: 100px;
            height: 100px;
          }

          p {
            line-height: 40px;
          }

          &:hover {
            color: $xtxColor;
          }
        }
      }
    }
  }

  .ref-goods {
    background-color: #fff;
    margin-top: 20px;
    position: relative;

    .head {
      .xtx-more {
        position: absolute;
        top: 20px;
        right: 20px;
      }

      .tag {
        text-align: center;
        color: #999;
        font-size: 20px;
        position: relative;
        top: -20px;
      }
    }

    .body {
      display: flex;
      justify-content: space-around;
      padding: 0 40px 30px;
    }
  }

  .bread-container {
    padding: 25px 0;
  }
}

.home-banner {
  width: 1240px;
  height: 500px;
  margin: 0 auto;


  img {
    width: 100%;
    height: 500px;
  }
}
</style>