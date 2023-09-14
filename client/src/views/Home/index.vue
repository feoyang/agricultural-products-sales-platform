<script setup>


// 表单校验（账号名+密码）

import { ref } from 'vue'

import { ElMessage } from 'element-plus'
import 'element-plus/theme-chalk/el-message.css'
import { useRouter } from 'vue-router'

import { useUserStore } from '@/stores/userStore'
import LayoutFooter from './components/LayoutFooter.vue'


const userStore = useUserStore()

// 1. 准备表单对象
const form = ref({
  account: 'heima282',
  password: 'hm#qd@23!',
  agree: true
})

// 2. 准备规则对象
const rules = {
  account: [
    { required: true, message: '用户名不能为空', trigger: 'blur' }
  ],
  password: [
    { required: true, message: '密码不能为空', trigger: 'blur' },
    { min: 6, max: 14, message: '密码长度为6-14个字符', trigger: 'blur' },
  ],
  agree: [
    {
      validator: (rule, value, callback) => {
        console.log(value)
        // 自定义校验逻辑
        // 勾选就通过 不勾选就不通过
        if (value) {
          callback()
        } else {
          callback(new Error('请勾选协议'))
        }
      }
    }
  ]
}

// 3. 获取form实例做统一校验
const formRef = ref(null)
const router = useRouter()

const confirm = () => {
  console.log('用户要退出登录了')
  // 退出登录业务逻辑实现
  // 1.清除用户信息 触发action
  userStore.clearUserInfo()
  // 2.跳转到登录页
  router.push('/login')
}

// 1. 用户名和密码 只需要通过简单的配置（看文档的方式 - 复杂功能通过多个不同组件拆解）
// 2. 同意协议  自定义规则  validator:(rule,value,callback)=>{}
// 3. 统一校验  通过调用form实例的方法 validate -> true
</script>


<template>
  <div class="background">
    <header class="header">
      <div class="container m-top-20">
        <h1 class="logo">
          <RouterLink to="/">稻香</RouterLink>
        </h1>
        <!-- <p>
          <a href="javascript:;">首页</a>
          <a href="javascript:;">帮助中心</a>
          <a href="javascript:;">售后服务</a>
          <a href="javascript:;">配送与验收</a>
          <a href="javascript:;">商务合作</a>
          <a href="javascript:;">搜索推荐</a>
          <a href="javascript:;">友情链接</a>
        </p> -->
        
        
          <div class="header-right">
            <div class="search">
              <i class="iconfont icon-search"></i>
              <input type="text" placeholder="搜一搜">
            </div>
            <template v-if="userStore.userInfo.is_login === 1">
              <div>
                <ul>
                  <li><a href="javascript:;"><i class=" iconfont icon-user"></i>{{ userStore.userInfo.account }}</a></li>
                  <li>
                    <el-popconfirm @confirm="confirm" title="确认退出吗?" confirm-button-text="确认" cancel-button-text="取消">
                      <template #reference>
                        <a href="javascript:;">退出登录</a>
                      </template>
                    </el-popconfirm>
                  </li>
                  <li><a href="javascript:;">我的订单</a></li>
                  <li><a href="javascript:;">会员中心</a></li>
                </ul>
              </div>
            </template >
            <template v-else>
              <div class="loginregister">
              <!-- <template v-if="countClick === 0 || countClick === 2"> -->
                <span class="login" onclick="setLoginCount">
                  <RouterLink to="/login" >登录</RouterLink>
                </span>
              <!-- </template> -->
              <!-- <template v-if="countClick === 0 || countClick === 1"> -->
                <span class="register" onclick="setRegisterCount">
                  <RouterLink to="/register" >注册</RouterLink>
                </span>
              <!-- </template> -->
            </div>
            </template>
            
          </div> 
      </div> 
    </header>
    <section class="section">
      <div class="enter">
        <div class="maintitle">
          <dl>
            <RouterLink to="/order">
              <dt><i class="iconfont icon-shop"></i></dt>
              <dd>采购农品</dd>
            </RouterLink>
          </dl>
          <dl>
            <RouterLink to="/require">
              <dt><i class="iconfont icon-maijiafabuxuqiu"></i></dt>
              <dd>需求发布</dd>
            </RouterLink>
          </dl>
          <dl>
            <RouterLink to="/knowledge">
             <dt><i class="iconfont icon-dianlikepu"></i></dt>
             <dd>知识科普</dd>
            </RouterLink>
          </dl>
          <dl>
            <RouterLink to="/cooperate">
              <dt><i class="iconfont icon-hezuo1"></i></dt>
              <dd>寻求合作</dd>
            </RouterLink>
          </dl>
          <template v-if="userStore.userInfo.role === 'admin'">
            <dl>
            <RouterLink to="/manage">
              <dt><i class="iconfont icon-hezuo1"></i></dt>
              <dd>后台管理</dd>
            </RouterLink>
          </dl>
          </template>
        </div>
      </div>
    </section>
  </div>
  <!-- <div>
    <footer class="footer">
      <div class="container">
        
        <p>CopyRight &copy; 稻香</p>
      </div>
    </footer>
  </div> -->
  <!-- footer -->
  <LayoutFooter />
</template>

<style scoped lang='scss'>
.background {
  background: url('@/assets/images/home-bg.png') no-repeat center / cover;
  height: calc(80vh);
}

.header {
  background: rgba(0, 0, 0, 0);
  width: calc(100vw);

  .container {
    width: calc(70vw);
    display: flex;
    align-items: flex-end;
    justify-content: space-between;

    .search {
      width: 300px;
      height: 32px;
      position: relative;
      border-bottom: 1px solid black;
      line-height: 32px;
      transition: 0.1s linear;

      .icon-search {
        font-size: 20px;
        margin-left: 5px;
      }
      input {
        width: 270px;
        font-size: 20px;
        padding-left: 10px;
        background: rgba(0, 0, 0, 0);
        
      }
    }
    .search:hover {
        text-shadow: 0px 0px 1px black;
      }

      ul {
        list-style: none;
        margin-left: 50px;
        margin: 5px auto;
        height: 20px;
        background-color:  rgba(0,0,0,0);
        font-size: 15px;
          li {
          display: inline;                
          }           
          a {
          // line-height: 40px;
          color: black;
          text-decoration: none;
          padding: 0 10px 0 10px;
          transition: 0.1s linear;

          }           
          a:hover {
            text-shadow: 0px 0px 1px black;
          }
        }      
    .loginregister{
      margin-top: 5px;
      font-size: 20px;
      text-align: right;
      .login {
        margin-right: 10px;
        transition: 0.1s linear;

      }
      .login:hover {
        text-shadow: 0px 0px 1px black;
      }
      .register {
        transition: 0.1s linear;
      }
      .register:hover {
        text-shadow: 0px 0px 1px black;
      }
    }
    
  }

  .logo {
    width: 200px;

    a {
      display: block;
      height: 132px;
      width: 100%;
      text-indent: -9999px;
      background: url("@/assets/images/logo.png") no-repeat center 18px / contain;
    }
  }

  .sub {
    flex: 1;
    font-size: 24px;
    font-weight: normal;
    margin-bottom: 38px;
    margin-left: 20px;
    color: #666;
  }

  .entry {
    color: #735440;
    width: 120px;
    text-decoration: underline;
    margin-bottom: 38px;
    font-size: 16px;

    i {
      font-size: 14px;
      color: $xtxColor;
      letter-spacing: -5px;
    }
  }
}

.section {
  width: calc(100vw);
  position: relative;
  display: flex; /**/
  justify-content: center; /*水平居中*/
  align-items: Center; /*垂直居中*/

  .enter {
    display: flex; /**/
    align-items: Center; /*垂直居中*/
    align-items: Center; /*垂直居中*/

    .maintitle {
      display: flex;
      margin-top: calc(20vh);
      dl {
        // height: 80px;
        text-align: center;
        // padding: 0 30px 0 30px;
        // border-right: 1px solid #f2f2f2;
        transition: 0.15s linear;

        &:first-child {
          padding-left: 0;
        }

        &:last-child {
          border-right: none;
          padding-right: 0;
        }
      }

      dl:hover {
        text-shadow: 0px 0px 3px #735440;
        transform: scale(1.1);
      }

      dt {
        line-height: 1;
        // padding-bottom: calc(1vw);
        color: #735440;
        // font-weight: bold;
        
        .iconfont {
          font-size: calc(12vh);
          display: block;
          color: #735440;
        }
      }

      dd {
        // margin: 15px 12px 0 0;
        // float: left;
        width: calc(15vw);
        color: #735440;
        padding-top: calc(2vh);
        font-size: calc(4.5vh);
        font-weight: bold;
        text-decoration:underline
        // border: 1px solid #ededed;
      }
    }
  }
  .wrapper {
    width: 380px;
    background: #fff;
    position: absolute;
    left: 50%;
    top: 60px;
    transform: translate3d(100px, 0, 0);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);

    #login {
      color: #735440;
    }
    nav {
      font-size: 14px;
      height: 55px;
      margin-bottom: 20px;
      border-bottom: 1px solid #f5f5f5;
      display: flex;
      padding: 0 40px;
      text-align: right;
      align-items: center;

      a {
        flex: 1;
        line-height: 1;
        display: inline-block;
        font-size: 18px;
        position: relative;
        text-align: center;
      }
    }
  }
}

.footer {
  background: #fff;
  height: 100px;
  p {
    text-align: center;
    color: #324950;
    padding-top: 20px;

    a {
      line-height: 1;
      padding: 0 10px;
      color: #324950;
      display: inline-block;

      ~a {
        border-left: 1px solid #ccc;
      }
    }
  }
}

.account-box {
  .toggle {
    padding: 15px 40px;
    text-align: right;

    a {
      color: $xtxColor;

      i {
        font-size: 14px;
      }
    }
  }

  .form {
    padding: 0 10px 20px 20px;
    &-item {
      margin-bottom: 28px;

      .input {
        position: relative;
        height: 36px;

        >i {
          width: 34px;
          height: 34px;
          background: #cfcdcd;
          color: #fff;
          position: absolute;
          left: 1px;
          top: 1px;
          text-align: center;
          line-height: 34px;
          font-size: 18px;
        }

        input {
          padding-left: 44px;
          border: 1px solid #cfcdcd;
          height: 36px;
          line-height: 36px;
          width: 100%;

          &.error {
            border-color: $priceColor;
          }

          &.active,
          &:focus {
            border-color: $xtxColor;
          }
        }

        .code {
          position: absolute;
          right: 1px;
          top: 1px;
          text-align: center;
          line-height: 34px;
          font-size: 14px;
          background: #f5f5f5;
          color: #666;
          width: 90px;
          height: 34px;
          cursor: pointer;
        }
      }

      >.error {
        position: absolute;
        font-size: 12px;
        line-height: 28px;
        color: $priceColor;

        i {
          font-size: 14px;
          margin-right: 2px;
        }
      }
    }

    .agree {
      a {
        color: #069;
      }
    }

    .btn {
      display: block;
      width: 100%;
      height: 40px;
      color: #fff;
      text-align: center;
      line-height: 40px;
      background: $xtxColor;

      &.disabled {
        background: #cfcdcd;
      }
    }
  }

  .action {
    padding: 20px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;

    .url {
      a {
        color: #999;
        margin-left: 10px;
      }
    }
  }
}

.subBtn {
  background: #57984C;
  width: 100%;
  color: #fff;
}
</style>