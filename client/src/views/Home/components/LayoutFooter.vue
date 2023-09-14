<script setup>
import { useUserStore } from '@/stores/userStore'
import { useRouter } from 'vue-router'
const userStore = useUserStore()
const router = useRouter()
</script>

<template>
  <footer class="app_footer">
    <div class="extra">
      <div class="container">
        <div class="slogan">
          <a href="javascript:;">
            <i class="iconfont icon-footer01"></i>
            <span>价格亲民</span>
          </a>
          <a href="javascript:;">
            <i class="iconfont icon-footer02"></i>
            <span>物流快捷</span>
          </a>
          <a href="javascript:;">
            <i class="iconfont icon-footer03"></i>
            <span>品质新鲜</span>
          </a>
        </div>
      </div>
    </div>
    <!-- 联系我们 -->
    <div class="contact">
      <div class="container">
        <dl>
          <dt>客户服务</dt>
          <dd><i class="iconfont icon-kefu"></i> 在线客服</dd>
          <dd><i class="iconfont icon-question"></i> 问题反馈</dd>
        </dl>
        <dl>
          <dt>关注我们</dt>
          <dd><i class="iconfont icon-weixin"></i> 公众号</dd>
          <dd><i class="iconfont icon-weibo"></i> 微博</dd>
        </dl>
        <dl>
          <dt>下载APP</dt>
          <dd class="qrcode"><img src="@/assets/images/qrcode.jpg" /></dd>
          <dd class="download">
            <span>扫描二维码</span>
            <span>立马下载APP</span>
            <a href="javascript:;">下载页面</a>
          </dd>
        </dl>
        <dl>
          <dt>服务热线</dt>
          <dd class="hotline">400-0000-000 <small>周一至周日 8:00-18:00</small></dd>
        </dl>
      </div>
    </div>
    <!-- 其它 -->
    <div class="extra">
      <div class="container">
        <!-- 版权信息 -->
        <div class="copyright">
          <p>CopyRight © 稻香</p>
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped lang='scss'>
.app_footer {
  // overflow: hidden;
  background-color: #f5f5f5;

  .contact {
    // width: 1000px;
    background: #2D3F45;

    .container {
      display: flex;
      justify-content: space-between;
      // align-items: center;

    }

    dl {
      margin-top: calc(1.2vh);
      margin-bottom: calc(1.2vh);

      // padding: calc(1vh);
      text-align: center;
      // padding: 72px;
      border-right: 1px solid #f2f2f2;
      color: #999;
      // background-color: rebeccapurple;

      &:first-child {
        padding-left: 0;
      }

      &:last-child {
        border-right: none;
        padding-right: 0;
      }
    }

    dt {
      height: calc(3vh);
      // line-height: 2;
      font-size: calc(1.8vh);
    }

    dd {
      margin: 15px 12px 0 0;
      float: left;
      width: 70px;
      height: 70px;
      padding-top: 10px;
      border: 1px solid #ededed;

      .iconfont {
        font-size: 25px;
        display: block;
        color: #666;
      }

      &:hover {
        .iconfont {
          color: $xtxColor;
        }
      }

      &:last-child {
        margin-right: 0;
      }
    }

    .qrcode {
      width: 70px;
      height: 70px;
      padding: 7px;
      border: 1px solid #ededed;
    }

    .download {
      // padding-top: 5px;
      font-size: 12px;
      width: auto;
      height: auto;
      border: none;

      span {
        display: block;
      }

      a {
        display: block;
        line-height: 1;
        padding: 10px 25px;
        margin-top: 5px;
        color: #fff;
        border-radius: 2px;
        background-color: $xtxColor;
      }
    }

    .hotline {
      padding-top: 20px;
      font-size: 22px;
      color: #666;
      width: auto;
      height: auto;
      border: none;

      small {
        display: block;
        font-size: 15px;
        color: #999;
      }
    }
  }

  .extra {
    background-color: #333;
  }

  .slogan {
    height: calc(15vh);
    // line-height: 28px;
    padding: 60px 110px;
    // border-bottom: 1px solid #434343;
    display: flex;
    justify-content: center; /*水平居中*/
    align-items: Center; /*垂直居中*/

    a {
      width: 31133px;
      color: #fff;
      font-size: 28px;
      // background-color: violet;
      text-align: center;
      // background-color: pink;

      i {
        font-size: 50px;
        vertical-align: middle;
        margin-right: 20px;
        font-weight: 100;
        // background: red;

      }

      span {
        vertical-align: middle;
        text-shadow: 0 0 1px #333;
        // background: red;
      }
    }
  }

  .copyright {
    height: 40px;
    padding-top: 10px;
    text-align: center;
    color: #999;
    font-size: 15px;
    background-color: #324950;

    p {
      line-height: 1;
      margin-bottom: 20px;
    }

    a {
      color: #999;
      line-height: 1;
      padding: 0 10px;
      border-right: 1px solid #999;

      &:last-child {
        border-right: none;
      }
    }
  }
}
</style>