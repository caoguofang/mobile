<template>
  <div>
    <nav id="bs-nav">
      <div class="w">
        <ul class="fl">
          <li class="mr-4 p-0">
            <i class="glyphicon glyphicon-home"></i>
            <router-link to="/">移动首页</router-link>
          </li>
          <li class="dropdown" v-on="{mouseover:Show1,mouseout:hide1}">
            <i class="glyphicon glyphicon-map-marker"></i>
            <a>北京
            </a>
            <!--省份-->
            <div  class="dt"  :style="toggle1">
              <ul class="addr">
                <li>
                  <a href="#" class="active">北京</a>
                  <a href="#">上海</a>
                  <a href="#">天津</a>
                  <a href="#">重庆</a>
                  <a href="#">河北</a>
                </li>
                <li>
                  <a href="#">山西</a>
                  <a href="#">河南</a>
                  <a href="#">辽宁</a>
                  <a href="#">吉林</a>
                  <a href="#">黑龙江</a>
                </li>
                <li>
                  <a href="#">浙江</a>
                  <a href="#">江苏</a>
                  <a href="#">山东</a>
                  <a href="#">安徽</a>
                  <a href="#">内蒙古</a>
                </li>
                <li>
                  <a href="#">福建</a>
                  <a href="#">湖北</a>
                  <a href="#">湖南</a>
                  <a href="#">广东</a>
                  <a href="#">广西</a>
                </li>
                <li>
                  <a href="#">江西</a>
                  <a href="#">四川</a>
                  <a href="#">海南</a>
                  <a href="#">贵州</a>
                  <a href="#">云南</a>
                </li>
                <li>
                  <a href="#">西藏</a>
                  <a href="#">陕西</a>
                  <a href="#">甘肃</a>
                  <a href="#">青海</a>
                  <a href="#">宁夏</a>
                </li>
                <li>
                  <a href="#">新疆</a>
                  <a href="#">港澳</a>
                  <a href="#">台湾</a>
                  <a href="#">海外</a>
                  <a href="#">钓鱼岛</a>
                </li>
                <!--其它国家-->
                <li class="border-top">
                  <a href="#">Japan</a>
                  <a href="#">America</a>
                </li>
                <li>
                  <a href="#">Japan</a>
                  <a href="#">Korea</a>
                </li>
                <li>
                  <a href="#">Korea</a>
                  <a href="#">Russia</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
        <ul class="fr float-right m-0 p-0">
          <li>
            <a href="#" class="login" :style="show" @click="login">您好，请登录</a>
            <a href="#" :style="show"  @click="register" class="la">免费注册</a>
            <span :style="hide" class="la">{{name}}</span>
            <a href="#"  id="signOut" :style="hide" @click="signOut">注销</a>
          </li>
          <li class="li-1">|</li>
          <li><router-link to="/cart">我的购物车&nbsp;<b style="color:red;">{{cartCount}}</b></router-link></li>
          <li class="li-1">|</li>
          <li class="dropdown" v-on="{mouseover:Show2,mouseout:hide2}">
            <a href="#">个人中心</a>
            <div class="dt" :style="toggle2" >
              <ul class="msg">
                <li>
                  <a href="#">消息列表</a>
                  <a href="#">待处理订单</a>
                </li>
                <li>
                  <a href="#">我的问答</a>
                  <a href="#">返修退换货</a>
                </li>
                <li>
                  <a href="#">降价商品</a>
                  <a href="#">我的关注</a>
                </li>
              </ul>
              <ul>
                <li class="border-top">
                  <a href="#">我的熟豆</a>
                  <a href="#">我的优惠劵</a>
                </li>
                <li>
                  <a href="#">我的白条</a>
                  <a href="#">我的理财</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="li-1">|</li>
          <li><a href="#">移动会员</a></li>
          <li class="li-1">|</li>
          <li class="dropdown" v-on="{mouseover:Show3,mouseout:hide3}">
            <a href="#">企业采购</a>
            <i class="glyphicon glyphicon-menu-down"></i>
            <div  :style="toggle3" class="dt">
              <ul class="cai">
                <li>
                  <a href="#">企业购</a>
                  <a href="#">商用场景馆</a>
                </li>
                <li>
                  <a href="#">工业品</a>
                  <a href="#">礼品卡</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="li-1">|</li>
          <li class="dropdown" v-on="{mouseover:Show4,mouseout:hide4}">
            <a href="#">客户服务</a>
            <i class="glyphicon glyphicon-menu-down"></i>
            <div  :style="toggle4" class="dt">
              <ul class="shou">
                <li>
                  <a href="#" class="font-weight-bold text-dark">客户</a>
                </li>
                <li>
                  <a href="#">帮助中心</a>
                  <a href="#">售后服务</a>
                </li>
                <li>
                  <a href="#">在线客服</a>
                  <a href="#">意见建议</a>
                </li>
                <li>
                  <a href="#">电话客服</a>
                  <a href="#">客服邮箱</a>
                </li>
                <li>
                  <a href="#">金融咨询</a>
                  <a href="#">全球售客服</a>
                </li>
              </ul>
              <ul class="pt-0">
                <li class="border-top">
                  <a href="#" class="font-weight-bold text-dark">商户</a>
                </li>
                <li>
                  <a href="#">合作招商</a>
                  <a href="#">学习中心</a>
                </li>
                <li>
                  <a href="#">商家后台</a>
                  <a href="#">博书工作台</a>
                </li>
                <li>
                  <a href="#">商家帮助</a>
                  <a href="#">规则平台</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="li-1">|</li>
          <li>
            <a href="#">网址导航</a>
          </li>
          <li class="li-1">|</li>
          <li><a href="#">手机移动</a></li>
        </ul>
        <div class="alert">
          <span class="close">×</span>
          <h3>功能开发中，敬请期待！！！</h3>
        </div>
      </div>
    </nav>
    <!--top 结束-->
  </div>
</template>

<script>
  import '../../assets/css/header.css'
  import '@/assets/js/header.js'
  export default {
    data:function(){
      return {
        cartCount:0,
        toggle1:{"display":"none"},
        toggle2:{"display":"none"},
        toggle3:{"display":"none"},
        toggle4:{"display":"none"},
        id:window.sessionStorage.id,
        name:"",
        show:{"display":"inline-block"},
        hide:{"display":"none"}
      }
    },
    mounted(){this.isLogin();this.carCount()},
    methods:{
      Show1(){this.toggle1["display"]="block"},
      Show2(){this.toggle2["display"]="block"},
      Show3(){this.toggle3["display"]="block"},
      Show4(){this.toggle4["display"]="block"},
      hide1(){this.toggle1["display"]="none"},
      hide2(){this.toggle2["display"]="none"},
      hide3(){this.toggle3["display"]="none"},
      hide4(){this.toggle4["display"]="none"},
      login(){
        location.href="/login?back="+decodeURIComponent(location.href);
      },
      //登录注册
      register(){
        location.href="/register?back="+decodeURIComponent(location.href);
      },
      isLogin(){
        if(this.id==undefined){
          this.show["display"]="inline-block";
          this.hide["display"]="none";
        }else{
          this.$http.get("qUser/isLogin?id="+this.id).then(result=>{
            if(result.body.code==1){
              var name=result.body.uName;
              this.name=`${name} 欢迎登录`;
              this.show["display"]="none";
              this.hide["display"]="inline-block";
            }
          });
        }
      },
      signOut(){
        if(confirm("确认注销后，将返回首页！")){
          window.sessionStorage.clear(Storage.id);
          location.href="/index"
        }
      },
      //购物车数量显示
      carCount(){
        if(this.id!==undefined){
          this.$http.get("qCart/list?uid="+this.id).then(result=>{
            if(result.body.code==1){
              this.cartCount=result.body.msg.length;
            }
          });
        }else{
          this.cartCount=0;
        }
      }
    }
  }

</script>

<style scoped>
  #signOut{color:#ccc}
</style>
