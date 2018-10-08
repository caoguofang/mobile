<template>
  <div class="head_box">
    <div class="box">
      <!--head 开始-->
      <!--广告图-->
      <p class="pos_r" id="sy_img1">
        <a href="#"><img src="../../../static/images/guang.png" width="1190" height="80" alt="" /></a>
        <span class="sy_imggb"><img src="../../../static/images/icon_close.jpg" width="15" height="16" alt="关闭" /></span>
      </p>
      <!--搜索部分-->
      <div>
        <!--logo图-->
        <p class="left mt20 ml10">
          <a href="#"><img src="../../../static/images/logo.jpg" width="270" height="60" alt="中国移动" /></a>
        </p>
        <!--中部搜索框-->
        <div class="left">
          <div class="head_ssbox1">
            <a href="#" @click="search(kw)" class="head_ssan"></a>
            <input  type="text" autofocus class="head_ss" @keyup.13="search(kw)" v-model="kw" list="listuu" style="width:473px;" />
            <datalist id="listuu">
              <option>华为</option>
              <option>OPPO</option>
              <option>vivo</option>
              <option>小米</option>
              <option>苹果手机</option>
            </datalist>
            <div class="clear"></div>
            <p class="head_rmss">
              热门搜索：
              <a href="#">LG</a>
              <a href="#">Flex</a>
              <a href="#">魅族mx2</a>
              <a href="#">红辣椒SIII</a>
              <a href="#">I9300</a>
              <a href="#">0元购机</a>
              <a href="#">捷波朗</a>
            </p>
          </div>
        </div>
        <!--我的和包-->
        <div class="head_tan" style="width:130px;">
          <div class="head_wdhb">
            <s></s>
            <div class="head_wdhb_ycc">
              <p class="wdhb_ycc_1">
                <span class="left">Sylvia_fs</span>
                <a href="/hb/wdhsd.html" class="right">去我的和包首页 ></a>
              </p>
              <div class="wdhb_ycc_2">
                <ul class="wdhb_ycc_2_l">
                  <li><a href="#">等待处理订单</a><strong>（10）</strong></li>
                  <li><a href="#">咨询回复</a>（0）</li>
                  <li><a href="#">降价商品</a>（0）</li>
                  <li><a href="#">优惠券</a>（0）</li>
                </ul>
                <ul class="wdhb_ycc_2_r">
                  <li><a href="#">我的订单 ></a></li>
                  <li><a href="#">我的收藏 ></a></li>
                  <li><a href="#">我的积分 ></a></li>
                  <li><a href="#">为我推荐 ></a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
      <!--全部商品分类侧导航栏及路由嵌套nav-->
      <div class="nav">
        <!--侧边导航-->
        <div class="nav_1 sy_nav_1">
          <p class="nav_1_wz">全部商品分类</p>
          <div class="nav_all">
            <!--手机品牌-->
            <div class="nav_all_li">
              <p class="nav_tit">·手机品牌</p>
              <p class="nav_nr">
                <a href="#">中国移动</a>
                <a href="#">苹果</a>
                <a href="#">三星</a>
                <a href="#">华为</a>
                <s></s>
              </p>
              <div class="nav_r" style="border-top:1px solid #f40;">
                <ul>
                  <li>
                    <a href="#" class="nav_r_tit">国产品牌</a>
                    |
                    <a href="#">中国移动</a>
                    |
                    <a href="#">天语</a>
                    |
                    <a href="#">万事通</a>
                    |
                    <a href="#">百立丰</a>
                    |
                    <a href="#">魅族</a>
                    |
                    <a href="#">TCL</a>
                    |
                    <a href="#">海信</a>
                    |
                    <a href="#">德赛</a>
                    |
                    <a href="#">波导</a>
                    |
                    <a href="#">酷诺</a>
                    |
                    <a href="#">新邮通</a>
                    |
                    <a href="#">金立</a>
                    |
                    <a href="#">夏新</a>
                    |
                    <a href="#">华森酷比</a>
                    |
                    <a href="#">宇龙酷派</a>
                    |
                    <a href="#">联想</a>
                    |
                    <a href="#">天迈</a>
                    |
                    <a href="#">海尔</a>
                    |
                    <a href="#">康佳</a>
                    |
                    <a href="#">中兴</a>
                    |
                    <a href="#">华为</a>
                    |
                    <a href="#">大唐电信</a>
                    |
                    <a href="#">小米</a>
                  </li>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">国际品牌</a>
                    |
                    <a href="#">三星</a>
                    |
                    <a href="#">苹果</a>
                    |
                    <a href="#">飞利浦</a>
                    |
                    <a href="#">HTC</a>
                    |
                    <a href="#">宏基</a>
                    |
                    <a href="#">诺基亚</a>
                    |
                    <a href="#">摩托罗拉</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--价格区间-->
            <div class="nav_all_li">
              <p class="nav_tit">·价格区间</p>
              <p class="nav_nr">
                <a href="#">1-499</a>
                <a href="#">500-999</a>
                <a href="#">1000-1999</a>
                <s></s>
              </p>
              <div class="nav_r">
                <ul>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">价格区间</a>
                    |
                    <a href="#">全部</a>
                    |
                    <a href="#">0-199元</a>
                    |
                    <a href="#">200-499元</a>
                    |
                    <a href="#">500-999元</a>
                    |
                    <a href="#">1000-1999元</a>
                    |
                    <a href="#">2000-2999元</a>
                    |
                    <a href="#">3000-3999元</a>
                    |
                    <a href="#">4000元以上</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--手机店铺-->
            <div class="nav_all_li">
              <p class="nav_tit">·手机店铺</p>
              <p class="nav_nr">
                <a href="#">中国移动通信集团终端有...</a>
                <s></s>
              </p>
              <div class="nav_r">
                <ul>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">手机店铺</a>
                    |
                    <a href="#">北京百纳威尔科技有限公司</a>
                    |
                    <a href="#">天音通信有限公司安徽分公司</a>
                    |
                    <a href="#">德赛电子</a>
                    |
                    <a href="#">合肥松联通讯器材有限公司</a>
                    |
                    <a href="#">中邮普泰</a>
                    |
                    <a href="#">深圳爱施德</a>
                    |
                    <a href="#">安徽鸿讯</a>
                    |
                    <a href="#">中国移动通信集团终端有限公司安徽分公司</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--屏幕尺寸-->
            <div class="nav_all_li">
              <p class="nav_tit">·屏幕尺寸</p>
              <p class="nav_nr">
                <a href="#">3.5寸</a>
                <a href="#">4.0-4.5寸</a>
                <a href="#">4.7-5.5寸</a>
                <s></s>
              </p>
              <div class="nav_r">
                <ul>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">屏幕尺寸</a>
                    |
                    <a href="#">5.6英寸及以上</a>
                    |
                    <a href="#">5.5-5.0英寸</a>
                    |
                    <a href="#">4.9-4.1英寸</a>
                    |
                    <a href="#">4.0-3.1英寸</a>
                    |
                    <a href="#">3.0英寸及以下</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--手机配件-->
            <div class="nav_all_li">
              <p class="nav_tit">·手机配件</p>
              <p class="nav_nr">
                <a href="#">存储卡</a>
                <a href="#">手机</a>
                <a href="#">电池</a>
                <a href="#">保护套</a>
                <s></s>
              </p>
              <div class="nav_r">
                <ul>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">手机配件</a>
                    |
                    <a href="#">电池</a>
                    |
                    <a href="#">蓝牙耳机</a>
                    |
                    <a href="#">充电器</a>
                    |
                    <a href="#">数据线</a>
                    |
                    <a href="#">手机耳机</a>
                    |
                    <a href="#">贴膜</a>
                    |
                    <a href="#">存储卡</a>
                    |
                    <a href="#">保护套</a>
                    |
                    <a href="#">iPhone配件</a>
                    |
                    <a href="#">便携/无线音箱</a>
                    |
                    <a href="#">手机饰品</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--号卡中心-->
            <div class="nav_all_li">
              <p class="nav_tit">·号卡中心</p>
              <p class="nav_nr">
                <a href="#">SIM卡</a>
                <a href="#">充值卡</a>
                <a href="#">家园卡</a>
                <s></s>
              </p>
              <div class="nav_r">
                <ul>
                  <li class="navlast">
                    <a href="#" class="nav_r_tit">号卡中心</a>
                    |
                    <a href="#">SIM卡</a>
                    |
                    <a href="#">充值卡</a>
                    |
                    <a href="#">家园卡</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!--路由导航栏-->
        <ul class="nav_2">
          <li class="navhover"><a href="#">首页</a></li>
          <li><a href="#">买手机</a></li>
          <li><a href="#">选号卡</a></li>
          <li><a href="#">旗舰店</a></li>
          <li><a href="#">团购</a></li>
        </ul>
        <div class="clear"></div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data:function(){
      return{
        kw:""
      }
    },
    methods:{
      search(kw){
        if(this.kw.trim()!==""){
          this.$router.push("/list/"+kw);
        }
      }
    }
  }
</script>

<style scoped>

</style>