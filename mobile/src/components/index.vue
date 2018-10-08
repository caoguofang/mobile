<template>
  <div>
    <Header></Header>
    <Header1></Header1>
    <!--cont 内容开始-->
    <div class="box">
      <div class="cont">
        <!--1.轮播层-->
        <div class="sy_cont_1">
          <!--轮播图-->
          <div class="sy_cont_1_l">
            <div class="shops-focus" id="shops-focus1">
             <Swipe :wid="670" :hei="327" :slider="swipe1"></Swipe>
            </div>
          </div>
          <!--右侧活动公告栏-->
          <div class="sy_cont_1_r">
            <div class="sy_hdm_1">
              <!--头-->
              <ul class="sy_hdm_1_tit">
                <li style="width:138px;" class="hover" id="syone1">促销活动</li>
                <li id="syone2">公告资讯</li>
              </ul>
              <!--促销活动列表-->
              <ul class="sy_hdm_1_nr" id="con_syone_1">
                <li><a href="#">苹果iphone5s移动版直降180元</a></li>
                <li><a href="#">三星N9008直降500元</a></li>
                <li><a href="#">华为A954 全场5折给力优惠</a></li>
                <li><a href="#">苹果iphone5s移动版直降180元</a></li>
                <li><a href="#">三星N9008直降500元</a></li>
              </ul>
              <!--公告咨询列表-->
              <ul class="sy_hdm_1_nr none" id="con_syone_2">
                <li><a href="#">苹果iphone5s移动版直降180元2</a></li>
                <li><a href="#">三星N9008直降500元2</a></li>
                <li><a href="#">华为A954 全场5折给力优惠2</a></li>
                <li><a href="#">苹果iphone5s移动版直降180元2</a></li>
                <li><a href="#">三星N9008直降500元2</a></li>
              </ul>
              <!--促销轮播图-->
              <div class="shops-focus2" id="shops-focus2">
                <Swipe :wid="278" :hei="134" :slider="swipe2"></Swipe>
              </div>
            </div>
          </div>
        </div>
        <!--2.劲爆特价层-->
        <div class="sy_cont_2">
          <div class="sy_cont_2_l">
            <p class="overflow">
              <span class="left">
                <img src="../../static/images/icon_jbtj.gif" width="128" height="38" alt="劲爆特价" />
              </span>
              <a href="#" class="right mr10 mt15">更多</a>
            </p>
            <div class="sy_jbtjbox">
              <ul>
                <li v-for="bargain in bargains" @click="goDetails(bargain.id,'bargains')" :key="bargain.id">
                  <span class="sy_jbtj_cx">热卖</span>
                  <p class="sy_jbtj_tp">
                    <a href="#">
                      <img :src="bargain.img_url"  v-on="{mouseover:rotate,mouseout:rotateOut}" width="160" height="160" />
                    </a>
                  </p>
                  <p class="sy_jbtj_js">{{bargain.title}}</p>
                  <p class="cc7c7c7">原价：<del class="font14">￥{{bargain.price_old.toFixed(2)}}</del></p>
                  <p class="sy_ljgm">
                    <span class="sy_jbtj_jg">￥{{bargain.price_new.toFixed(2)}}</span>
                    <a href="#"><img src="../../static/images/icon_ljgm.gif" width="159" height="27" alt="立即购买" /></a>
                  </p>
                </li>
              </ul>
            </div>
          </div>
          <div class="sy_cont_2_r">
            <p class="sy_qjd_tit">旗舰店</p>
            <div class="sy_qjd_nr">
              <ul id="qijian">
                <li v-for="qijian in qijians" :key="qijian.id">
                  <a href="list.html"><img v-lazy="qijian.img_url"/></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!--夹层广告图-->
        <div class="mt10"><a href="#"><img src="../../static/images/sy_gg1.jpg" width="1190" height="70" /></a></div>
        <!--3.新品推荐标题-->
        <div class="sy_title">
          <span class="sy_louc">1F</span>
          <span class="sy_title_l">新品推荐</span>
          <p class="sy_title_r">
            <a href="#">三星</a>
            |
            <a href="#">苹果</a>
            |
            <a href="#">HTC</a>
            |
            <a href="#">诺基亚</a>
            |
            <a href="#">更多</a>
          </p>
        </div>
        <!--新品推荐内容-->
        <div class="sy_nr">
          <p class="sy_nr_l">
            <a href="#"><img src="../../static/images/sy_nrimg1.jpg" width="208" height="347" /></a>
          </p>
          <ul class="sy_nr_r">
            <li v-for="NewProduct in NewProducts" @click="goDetails(NewProduct.id,'newproduct')" :key="NewProduct.id">
              <p class="sy_jbtj_tp">
                <a href="#"><img v-lazy="NewProduct.img_url"  v-on="{mouseover:rotate,mouseout:rotateOut}" width="176" height="176"/></a>
              </p>
              <p class="sy_jbtj_js">{{NewProduct.title}}</p>
              <p class="cc7c7c7">原价：<del class="font14">￥{{NewProduct.price_old.toFixed(2)}}</del></p>
              <p class="sy_ljgm">
                <span class="sy_jbtj_jg">￥{{NewProduct.price_new.toFixed(2)}}</span>
                <a href="#"><img src="../../static/images/icon_ljgm.gif" width="159" height="27" alt="立即购买" /></a>
              </p>
            </li>
          </ul>
        </div>
        <!--4.特卖专区标题-->
        <div class="sy_title">
          <span class="sy_louc">2F</span>
          <span class="sy_title_l">特卖专区</span>
          <p class="sy_title_r">
            <a href="#">三星</a>
            |
            <a href="#">苹果</a>
            |
            <a href="#">HTC</a>
            |
            <a href="#">诺基亚</a>
            |
            <a href="#">更多</a>
          </p>
        </div>
        <!--特卖专区内容-->
        <div class="sy_nr">
          <p class="sy_nr_l">
            <a href="#"><img src="../../static/images/sy_nrimg2.jpg" width="208" height="347" /></a>
          </p>
          <ul class="sy_nr_r" id="zzz">
            <li v-for="SALE in SALES" @click="goDetails(SALE.id,'sale')" :key="SALE.id">
              <p class="sy_jbtj_tp">
                <a href="#"><img v-lazy="SALE.img_url" v-on="{mouseover:rotate,mouseout:rotateOut}"  width="176" height="176"/></a>
              </p>
              <p class="sy_jbtj_js">{{SALE.title}}</p>
              <p class="cc7c7c7">原价：<del class="font14">￥{{SALE.price_old.toFixed(2)}}</del></p>
              <p class="sy_ljgm">
                <span class="sy_jbtj_jg">￥{{SALE.price_new.toFixed(2)}}</span>
                <a href="#"><img src="../../static/images/icon_ljgm.gif" width="159" height="27" alt="立即购买" /></a>
              </p>
            </li>
          </ul>
        </div>
        <!--夹层广告图-->
        <div class="mt10"><a href="#"><img src="../../static/images/sy_gg2.jpg" width="1190" height="70" /></a></div>
        <!--5.Top排行榜标题-->
        <div class="sy_title">
          <span class="sy_louc">3F</span>
          <span class="sy_title_l">TOP排行榜</span>
        </div>
        <!--排行榜内容-->
        <div class="sy_nr">
          <ul class="sy_hdm_2_tit">
            <li class="hover" id="sytwo1">热销榜</li>
            <li class="sy_hdm_2_fgx"></li>
            <li id="sytwo2">好评榜</li>
            <li class="sy_hdm_2_fgx"></li>
            <li id="sytwo3">新品榜</li>
            <li class="sy_hdm_2_fgx"></li>
            <li id="sytwo4">关注榜</li>
            <li class="sy_hdm_2_fgx"></li>
            <li style="width:236px;" id="sytwo5">最新降价</li>
          </ul>
          <div class="sy_hdm_2_nr" id="con_sytwo_1">
            <!--左侧大图-->
            <div class="sy_top_l">
              <div id="con_top_1" >
                <p class="text_c">
                  <a href="#">
                    <img :src="reimg" width="300" height="300" />
                  </a>
                </p>
                <p class="sy_top_sjjs_1">
                  <img src="../../static/images/sy_top_no1.gif" width="65" height="98" alt="TOP1"/>
                </p>
                <div class="sy_top_sjjs">
                  <div class="sy_top_sjjs_2">
                    <p>诺基亚（NOKIA）<br />lUMIA 1320 3g手机</p>
                    <p class="sy_top_jg">￥ 1999.00</p>
                  </div>
                  <div class="sy_top_sjjs_3">
                    <p class="sy_top_hps">好评数：<span>888</span></p>
                    <p class="mt5">
                      <a href="#">
                        <img src="../../static/images/icon_ljgm2.gif" width="94" height="22" alt="立即购买" />
                      </a>
                    </p>
                  </div>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
            <!--八小图-->
            <div class="sy_top_r">
              <ul>
                <li id="top1" v-for="TOP in TOPS" @click="goDetails(TOP.id,'top')" :key="TOP.id">
                  <p class="sy_top_ph">
                    <img   v-lazy="TOP.imgGif_url" width="37" height="41" />
                  </p>
                  <p class="text_c">
                    <a href="#">
                      <img v-lazy="TOP.img_url" @mouseover="repla" width="156" height="156" />
                    </a>
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!--6.手机配件标题-->
        <div class="sy_title">
          <span class="sy_louc">4F</span>
          <span class="sy_title_l">手机配件</span>
          <p class="sy_title_r">
            <a href="#">羽博</a>
            |
            <a href="#">倍思</a>
            |
            <a href="#">三星</a>
            |
            <a href="#">更多</a>
          </p>
        </div>
        <!--手机配件内容-->
        <div class="sy_nr">
          <p class="sy_nr_l">
            <a href="#"><img src="../../static/images/sy_nrimg3.jpg" width="208" height="347" /></a>
          </p>
          <ul class="sy_nr_r">
            <li v-for="ppj in ppjs" @click="goDetails(ppj.id,'ppj')" :key="ppj.id">
              <p class="sy_jbtj_tp">
                <a href="#">
                  <img v-lazy="ppj.img_url"  v-on="{mouseover:rotate,mouseout:rotateOut}"  width="176" height="176" />
                </a>
              </p>
              <p class="sy_jbtj_js">{{ppj.title}}</p>
              <p class="cc7c7c7">原价：<del class="font14">￥{{ppj.price_old.toFixed(2)}}</del></p>
              <p class="sy_ljgm">
                <span class="sy_jbtj_jg">￥{{ppj.price_new.toFixed(2)}}</span>
                <a href="#">
                  <img src="../../static/images/icon_ljgm.gif" width="159" height="27" alt="立即购买"/>
                </a>
              </p>
            </li>
          </ul>
        </div>
        <!--7.品牌馆标题-->
        <div class="sy_title2">
          <span class="sy_title2_l">品牌馆</span>
          <p class="sy_title_r"><a href="#">更多</a></p>
        </div>
        <!--品牌馆内容-->
        <div class="sy_nr">
          <ul class="sy_ppg">
            <li v-for="brand in brands" :key="brand.id">
              <p>
                <a href="#">
                  <img v-lazy="brand.img_url" width="142" height="64" />
                </a>
              </p>
              <p><a href="#">{{brand.title}}</a></p>
            </li>
          </ul>
        </div>
      </div>
      <!--cont 结束-->
    </div>
    <!--电梯楼层效果-->
    <div class="lift">
      <ul>
        <li>劲爆特价</li>
        <li>新品推荐</li>
        <li>特卖专区</li>
        <li>排行榜</li>
        <li>手机配件</li>
        <li>品牌馆</li>
        <li>返回顶部</li>
      </ul>
    </div>
  </div>
</template>

<script>
  import '@/assets/js/jquery-3.2.1.js'
  import Header from './subcomponents/header'
  import Header1 from './subcomponents/header1'
  import Swipe from './subcomponents/swipe'
  import '@/assets/css/css.css'
  import '@/assets/css/public.css'
  import '@/assets/css/header.css'
  import '@/assets/js/index'
  export default {
    data:function(){
      return {
        swipe1:"",
        swipe2:[],
        qijians:[],
        bargains:[],
        NewProducts:[],
        SALES:[],
        TOPS:[],
        ppjs:[],
        brands:[],
        reimg:"http://127.0.0.1:3000/images/sy_top_img1.jpg"
      }
    },
    created(){
      this.getImgs();
    },
    methods:{
      repla(e){
        this.reimg=e.target.src;
      },
      getImgs(){
        //轮播1
        this.$http.get('qIndex/swipe1').then(result=>{
          if(result.body.code==1)
            this.swipe1=result.body.msg;
        });
        //轮播2
        this.$http.get('qIndex/swipe2').then(result=>{
          if(result.body.code==1)
            this.swipe2=result.body.msg;
        });
        //劲爆h特价
        this.$http.get('qIndex/bargains').then(result=>{
          if(result.body.code==1)
            this.bargains=result.body.msg;
        });
        //新品推荐
        this.$http.get('qIndex/NewProduct').then(result=>{
          if(result.body.code==1)
            this.NewProducts=result.body.msg;
        });
        //旗舰店查询
        this.$http.get('qIndex/qijian').then(result=>{
          if(result.body.code==1)
            this.qijians=result.body.msg;
        });
        //特卖专区
        this.$http.get('qIndex/SALE').then(result=>{
          if(result.body.code==1)
            this.SALES=result.body.msg;
        });
        //TOP
        this.$http.get('qIndex/top').then(result=>{
          if(result.body.code==1)
            this.TOPS=result.body.msg;
        });
        //手机配件专区
        this.$http.get('qIndex/ppj').then(result=>{
          if(result.body.code==1)
            this.ppjs=result.body.msg;
        });
        //品牌馆
        this.$http.get('qIndex/brands').then(result=>{
          if(result.body.code==1)
            this.brands=result.body.msg;
        });
      },
      goDetails(id,table){
        this.$router.push({path:"details?id="+id+"&table="+table});
      },
      rotate(e){
        var img=e.target;
        //img.addClass="rotate";
        //console.log()
        img.style.transform="rotateY(360deg)";
        img.style.transformOrigin="center center";
        img.style.transitionDuration="2s";
      },
      rotateOut(e){
        var img=e.target;
        img.style.transform="rotateY(0deg)";
        img.style.transitionDuration="1s";
      }
    },
    components:{
      Header,
      Header1,
      Swipe
    }
  };


</script>

<style scoped>
  .box{width:1190px;margin:0 auto;}
  img[lazy=loading]{
    width:100%;
    height:100%;
    background-color:#46b8da;
    margin:0 auto;
  }
  /*电梯效果*/
  .li-danger{
  background-color:red;color:#fff;
  }
  div.lift{
    display:none;
    background-color: #f1f1f1;
    padding:8px 0;
    width:42px;
    border:1px solid #c8c7cc;
    border-radius: 10px;
    position:fixed;
    top:30%;
    left:15%;
  }
  div.lift>ul>li{
    padding:5px 4px;
    cursor:pointer;
  }
</style>
