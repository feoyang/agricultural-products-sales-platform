<script setup>
// import HomePanel from './HomePanel.vue'
import { onMounted, ref } from 'vue'
import { useCategoryStore } from '@/stores/categoryStore'

/*
import { findNewAPI } from '@/apis/Perchase/home'

// 获取数据
const newList = ref([])

const getNewList = async () => {
  const res = await findNewAPI()
  newList.value = res.result
}

onMounted(() => getNewList())
*/

const categoryStore = useCategoryStore()

categoryStore.getCategory



console.log("123123123");
console.log(categoryStore.categoryList.slice(0,4));
console.log("123123123");

</script>

<template>
  <HomePanel title="新鲜好物" sub-title="新鲜出炉 品质靠谱">
      <ul class="goods-list">
        <li v-for="item in categoryStore.categoryList.slice(0,5)" :key="item.id">
          <RouterLink :to="`/order/detail/${item.children[0].goods[0].order_id}`">
            <img :src="item.children[0].goods[0].picture" alt="" />
            <p class="name">{{ item.children[0].goods[0].content }}</p>
            <p class="price">&yen;{{ item.children[0].goods[0].price }}</p>
          </RouterLink>
        </li>
      </ul>
  </HomePanel>
  <!-- 下面是插槽主体内容模版
  <ul class="goods-list">
    <li v-for="item in newList" :key="item.id">
      <RouterLink to="/">
        <img :src="item.picture" alt="" />
        <p class="name">{{ item.name }}</p>
        <p class="price">&yen;{{ item.price }}</p>
      </RouterLink>
    </li>
  </ul>
  -->
</template>


<style scoped lang='scss'>
.goods-list {
  display: flex;
  text-align: center;
  justify-content: space-between;
  height: 406px;
  // padding-top: 30px;


  li {
    width: 346px;
    height: 406px;
    background: #f0f9f4;
    transition: all .5s;

    &:hover {
      transform: translate3d(0, -3px, 0);
      box-shadow: 0 3px 8px rgb(0 0 0 / 20%);
    }

    img {
      width: 316px;
      height: 316px;
    }

    p {
      font-size: 22px;
      padding-top: 12px;
      text-align: center;
      text-overflow: ellipsis;
      overflow: hidden;
      white-space: nowrap;
    }

    .price {
      color: $priceColor;
    }
  }
}
</style>