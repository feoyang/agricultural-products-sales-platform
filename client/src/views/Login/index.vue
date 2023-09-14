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
  user_name: '',
  password: '',
  role: ''
})

// 2. 准备规则对象
const rules = {
  user_name: [
    { required: true, message: '用户名不能为空', trigger: 'blur' }
  ],
  password: [
    { required: true, message: '密码不能为空', trigger: 'blur' },
    { min: 6, max: 14, message: '密码长度为6-14个字符', trigger: 'blur' },
  ]
}

// 3. 获取form实例做统一校验
const formRef = ref(null)
const router = useRouter()

const doLogin = () => {
  const { user_name, password, role } = form.value
  // 调用实例方法
  formRef.value.validate(async (valid) => {
    // valid: 所有表单都通过校验  才为true
    console.log(valid)
    // 以valid做为判断条件 如果通过校验才执行登录逻辑
    if (valid) {
      // TODO LOGIN
      const button_type = 'login'
      await userStore.getUserInfo({ user_name, password, role, button_type })
      // 1. 提示用户 改到 userstore 里面去了
      // 2. 跳转首页
      router.replace({ path: '/' })
    }
  })
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
          <div class="loginregister">
            <span class="login">
              <RouterLink to="/login" >登录</RouterLink>
            </span>
            <span class="register">
              <RouterLink to="/register" >注册</RouterLink>
            </span>
          </div>
        </div>   
      </div> 
    </header>
    <section class="section">
      <div class="wrapper">
        <nav class="box-logintitle">
          <a href="javascript:;" id="login">登录</a>
        </nav>
        <div class="account-box">
          <div class="form">
            <el-form ref="formRef" :model="form" :rules="rules" status-icon>
              <el-form-item prop="user_name" style="width: calc(280px);">
                <el-input v-model="form.user_name" placeholder="手机号"/>
              </el-form-item>
              <el-form-item prop="password" style="width: calc(280px);">
                <el-input v-model="form.password" placeholder="密码"/>
              </el-form-item>
              <el-form-item prop="role">
                <el-select v-model="form.role" placeholder="请选择角色" style="width: calc(280px);">
                  <el-option label="用户" value="user"></el-option>
                  <el-option label="专家" value="expert"></el-option>
                  <el-option label="管理员" value="admin"></el-option> 
                </el-select>
              </el-form-item>
              <!-- <el-form-item prop="agree" label-width="22px">
                <el-checkbox size="large" v-model="form.agree">
                  我已同意隐私条款和服务条款
                </el-checkbox>
              </el-form-item> -->
              <el-button size="large" class="subBtn" @click="doLogin" >点击登录</el-button>
              <div class="loginfooter">
                <RouterLink to="/" style="color: green">找回密码</RouterLink>
                <span>  |  </span>
                <RouterLink to="/register" style="color: green">快速注册</RouterLink>
              </div>
            </el-form>
          </div>
        </div>
      </div>
    </section>
  </div>
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
    // .logo {
    // }
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

    .loginregister{
      margin-top: 5px;
      font-size: 20px;
      color: rgba(0, 0, 0, 0);
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
  z-index: 999;
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
        text-shadow: 0px 0px 3px black;
        transform: scale(1.1);
      }

      dt {
        line-height: 1;
        font-size: 60px;
        color: #735440;
        // font-weight: bold;
        
        .iconfont {
          font-size: 100px;
          display: block;
          color: #735440;
        }
      }

      dd {
        // margin: 15px 12px 0 0;
        // float: left;
        width: 230px;
        height: 70px;
        color: #735440;
        padding-top: 10px;
        font-size: 40px;
        font-weight: bold;
        text-decoration:underline
        // border: 1px solid #ededed;
      }
    }
  }
  .wrapper {
    border-radius: calc(3vh);

    margin-top: calc(10vh);
    background: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;

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
        margin-top: 50px;
        font-size: 30px;
        position: relative;
        text-align: center;
      }
    }
    .account-box {
      padding: 20px 35px 10px 35px;
      .form {
        padding: 20px 20px 10px 20px;
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
        .loginfooter {
          margin-top: 20px;
          text-align: center;
        }
      }
      .subBtn {
        margin-top: 10px;

        color: #fff;
        background: center center #4A54FF;
        background-image: linear-gradient(315deg,#6772FF 0,#00F9E5 100%);
        background-size: 104% 104%;
        width: 100%;
        

        display: inline-flex;
        align-items: center;
        justify-content: center;
        vertical-align: middle;
        text-align: center;
        border: none;
        line-height: 1.5;
        border-radius: 999px;
        overflow: hidden;
        touch-action: manipulation;
        white-space: nowrap;
        transition: border-color .26s,background-color .26s;
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



</style>