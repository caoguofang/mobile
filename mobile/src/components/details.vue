<template>
  <div class="details">
    <Header></Header>
    <div class="box">
      <!--head 开始-->
      <div class="dp_banner"><img src="../../static/images/dj_banner.jpg" height="117" width="1190" /></div>
      <!--head 结束-->
      <!--cont 开始-->
      <div class="cont">
        <div class="dp_nav">
          <div class="dp_nav_1"><span>本店所有商品</span>
            <!--menu 开始-->
            <div class="dp_nav_all" style="display:none;">
              <div class="dp_nav_all_li">
                <p class="dp_nav_tit">品牌手机<i>></i></p>
                <div class="dp_nav_r">
                  <ul>
                    <li><a href="#">按销量</a></li>
                    <li><a href="#">按新品</a></li>
                    <li><a href="#">按价格</a></li>
                  </ul>
                </div>
              </div>
              <div class="dp_nav_all_li">
                <p class="dp_nav_tit">价格区间<i>></i></p>
                <div class="dp_nav_r">
                  <ul>
                    <li><a href="#">按销量</a></li>
                    <li><a href="#">按新品</a></li>
                    <li><a href="#">按价格</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!--menu 结束-->
          </div>
          <ul class="dp_nav_2">
            <li class="dp_navhover"><a href="#">首页</a></li>
            <li><a href="#">手机品牌↓</a></li>
          </ul>
          <div class="clear"></div>
        </div>
        <!--head 结束-->
        <!--cont 开始-->
        <div class="cont">
          <div class="xq_cont1">
            <!--上左-->
            <div class="xq_cont1_l">
              <div id="preview">
                <!--左侧大图-->
                <div class="jqzoom" id="spec-n1" >
                  <img :src="big_img"  height="350" class="opa" width="350" />
                  <div class="super-mask" v-on="{mouseover:showMask,mouseout:hideMask,mousemove:moveTu}" ></div>
                  <div :class="mask" :style="MaskP"></div>
                  <div :class="divLg" :style="bgu"></div>
                </div>
                <!--大图下的小图-->
                <div id="spec-n5">
                  <div class="control" id="spec-left">
                    <img src="../../static/images/xq_xgleft.gif" />
                  </div>
                  <div id="spec-list">
                    <ul class="list-h">
                      <li><img src="../../static/img/01.png" v-on="{mouseover:big}"></li>
                      <li><img src="../../static/img/03.png" v-on="{mouseover:big}"></li>
                      <li v-for="i in list"><img :src="list.img_url"  v-on="{mouseover:big}"></li>
                    </ul>
                  </div>
                  <div class="control" id="spec-right">
                    <img src="../../static/images/xq_xgright.gif" />
                  </div>
                </div>
              </div>
              <div class="text_c mt15">
                <a href="#">
                  <img src="../../static/images/xq_icon_ckdt.gif" width="129" height="25" alt="查看大图" />
                </a>
                <a href="#" class="ml25">
                  <img src="../../static/images/xq_icon_jrdb.gif" width="129" height="25" alt="加入对比" />
                </a>
              </div>
            </div>
            <!--上中-->
            <div class="xq_cont1_c">
              <div class="xq_cont1_tit">
                <p>{{list.title}}</p>
                <p class="ce4393c">老用户不换卡不换号承诺相应消费即可0元购买手机！数量有限，抓紧抢购！</p>
              </div>
              <p class="xq_cont1_xx">专 营 价：<strong class="xq_cont1_jg">￥{{list.price_new}}.00</strong></p>
              <p class="xq_cont1_xx">商 城 价：<strong class="xq_cont1_jg">￥{{list.price_old}}.00</strong><a
                href="#"></a></p>
              <p class="xq_cont1_xx">促销信息：<span class="ce4393c">满1000.0元另加49.0元即可购买热销商品</span></p>
              <p class="xq_cont1_xx">商品评价：
                <span>
                  <img src="../../static/images/xq_xingxing.gif" width="16" height="14" />
                  <img src="../../static/images/xq_xingxing.gif" width="16" height="14" />
                  <img src="../../static/images/xq_xingxing.gif" width="16" height="14" />
                  <img src="../../static/images/xq_xingxing.gif" width="16" height="14" />
                  <img src="../../static/images/xq_xingxing.gif" width="16" height="14" />
                </span>
                <a href="#">
                  （已有4743人评价）
                </a>
              </p>
              <p class="xq_cont1_xx">价保信息：<span class="ce4393c">4周库存价保</span></p>
              <p class="xq_cont1_xx">已 销 售：<strong class=" ce4393c">459</strong>件</p>
              <p class="xq_cont1_xx">运&nbsp;&nbsp;&nbsp;&nbsp;费：<span class="ce4393c">满3件包邮</span></p>
              <p class="xq_cont1_xx">网络制式：4G （TD-LTE）</p>
              <div class="xq_cont_js">
                <div class="xq_cont_js_nr">
                  <span class="xq_js_nr_l">选择颜色：</span>
                  <ul class="xq_js_nr_r">
                    <li class="xq_js_nr_r_yh yhhover">
                      <div>
                        <img src="../../static/images/xq_sjys_img1.jpg" width="18" height="28" class="left" />
                        <span class="left ml5">简约白</span>
                        <s></s>
                      </div>
                    </li>
                    <li class="xq_js_nr_r_yh">
                      <div>
                        <img src="../../static/images/xq_sjys_img2.jpg" width="18" height="28" class="left" />
                        <span class="left ml5">炫酷黑</span>
                        <s></s>
                      </div>
                    </li>
                    <li class="xq_js_nr_r_wh">
                      <div>
                        <img src="../../static/images/xq_sjys_img3.jpg" width="18" height="28" class="left" />
                        <span class="left ml5">前卫粉</span>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="xq_cont_js_nr">
                  <span class="xq_js_nr_l">选择版本：</span>
                  <ul class="xq_js_nr_r">
                    <li class="xq_js_nr_r_yh yhhover">
                      <div>
                        <span class="left ml5">TD-LTE 32G版</span>
                        <s></s>
                      </div>
                    </li>
                    <li class="xq_js_nr_r_wh">
                      <div>
                        <span class="left ml5">TD-LTE 16G版</span>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="xq_cont_js_nr">
                  <span class="xq_js_nr_l">购买方式：</span>
                  <ul class="xq_js_nr_r">
                    <li class="xq_js_nr_r_yh yhhover">
                      <div>
                        <span class="left ml5">裸机</span>
                        <s></s>
                      </div>
                    </li>
                    <li class="xq_js_nr_r_yh">
                      <div>
                        <span class="left ml5">合约机</span>
                        <s></s>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="xq_cont_js_nr">
                  <span class="xq_js_nr_l">库&nbsp;&nbsp;&nbsp;&nbsp;存：</span>
                  <span class="left line32 ml5">1588件</span>
                </div>
                <div class="xq_cont_js_nr">
                  <span class="xq_js_nr_l" style="line-height:22px;">购买数量：</span>
                  <p class="left ml5 overflow">
                    <a href="#" class="left mt5">
                      <img src="../../static/images/xq_jian.gif" width="15" height="15" @click="jian" alt="-" />
                    </a>
                    <input name="" type="text" class="xq_gmsl_inp left ml5" v-model="input" />
                    <a href="#" class="left mt5 ml5">
                      <img src="../../static/images/xq_jia.gif" width="15" height="15" @click="add" alt="+" />
                    </a>
                  </p>
                </div>
              </div>
              <p class="mt10 ml25">
                <img src="../../static/images/icon_jrgwc.gif"  width="131" height="41" alt="加入购物车" @click="goCart" />
              </p>
            </div>
            <!--上右-->
            <div class="xq_cont1_r">
              <p class="xq_cont1_r_tit">为你推荐</p>
              <div class="xq_cont1_r_nr">
                <ul class="xq_wntj_nr">
                  <li>
                    <p><a href="#"><img src="../../static/images/xq_wntj_nr1.jpg" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">索尼（SONY）Xperia Z1 L39t</a></p>
                    <p><strong class="ce4393c">￥4599.00</strong></p>
                  </li>
                  <li>
                    <p><a href="#"><img src="../../static/images/xq_wntj_nr2.jpg" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">索尼（SONY）Xperia Z1 L39t</a></p>
                    <p><strong class="ce4393c">￥4599.00</strong></p>
                  </li>
                  <li>
                    <p><a href="#"><img src="../../static/images/xq_wntj_nr1.jpg" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">索尼（SONY）Xperia Z1 L39t</a></p>
                    <p><strong class="ce4393c">￥4599.00</strong></p>
                  </li>
                  <li>
                    <p><a href="#"><img src="../../static/images/xq_wntj_nr2.jpg" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">索尼（SONY）Xperia Z1 L39t</a></p>
                    <p><strong class="ce4393c">￥4599.00</strong></p>
                  </li>
                </ul>
              </div>
              <p class="mt10 text_c">
                <a href="#" class="slide_down">
                  <img src="../../static/images/xq_wntj_up.gif" width="42" height="22" alt="上" />
                </a>
                <a href="#" class="ml15 slide_up">
                  <img src="../../static/images/xq_wntj_down.gif" width="42" height="22" alt="下" />
                </a>
              </p>
            </div>
          </div>
          <div class="xq_cont2">
            <!--左侧推荐栏-->
            <div class="xq_cont2_l">
              <div class="xq_sjxx">
                <p class="xq_sjxx_tit">商家信息：<a href="#" class="xq_sjxx_pp">中国移动</a></p>
                <div class="xq_sjxx_nr">
                  <div class="xq_sjxx_nr_1">
                    <p>店铺动态评分</p>
                    <p>描述相符：4.8分</p>
                    <p>服务态度：4.8分</p>
                    <p>发货速度：4.7分</p>
                  </div>
                  <div class="xq_sjxx_nr_2">
                    <a href="#" class="xq_jrdp">进入店铺</a>
                    <a href="#" class="xq_scdp">收藏店铺</a>
                  </div>
                </div>
              </div>
              <!--左侧推荐栏 上-->
              <div class="xq_l_box mt10">
                <div class="xq_l_tit">手机排行榜</div>
                <ul class="xq_top_hdm_tit">
                  <li class="hover" id="xqtop1" onmouseover="setTab('xqtop',1,3)">同价位</li>
                  <li class="hdmfgx"></li>
                  <li id="xqtop2" onmouseover="setTab('xqtop',2,3)">同品牌</li>
                  <li class="hdmfgx"></li>
                  <li style="width:68px;" id="xqtop3" onmouseover="setTab('xqtop',3,3)">同类别</li>
                </ul>
                <div class="xq_top_hdm_nr">
                  <ul id="con_xqtop_1">
                    <li v-for="top in xqtop">
                      <span>{{top.topnum}}</span>
                      <p class="xq_top_1">
                        <a href="#">
                          <img :src="top.img_url" width="54" height="54" />
                        </a>
                      </p>
                      <p class="xq_top_2">
                        <a href="#">{{top.title}}</a><br />
                        <strong class="ce4393c font14">￥{{top.price.toFixed(2)}}</strong>
                      </p>
                    </li>
                  </ul>
                </div>
              </div>
              <!--左侧推荐栏 中-->
              <div class="xq_l_box mt10">
                <div class="xq_l_tit">浏览了该商品的用户还浏览了</div>
                <ul class="xq_l_nr">
                  <li v-for="tui in tuijian">
                    <p><a href="#"><img :src="tui.img_url" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">{{tui.title}}</a></p>
                    <p class="ce4393c fontb">￥{{tui.price}}</p>
                  </li>
                </ul>
              </div>
              <!--左侧推荐栏 下-->
              <div class="xq_l_box mt10">
                <div class="xq_l_tit">浏览了该商品的用户还浏览了</div>
                <ul class="xq_l_nr">
                  <li v-for="tui in tuijian">
                    <p><a href="#"><img :src="tui.img_url" width="100" height="100" /></a></p>
                    <p class="mt10"><a href="#">{{tui.title}}</a></p>
                    <p class="ce4393c fontb">￥{{tui.price}}</p>
                  </li>
                </ul>
              </div>
            </div>
            <!--右侧详情区-->
            <div class="xq_cont2_r">
              <!--优惠套装-->
              <div class="xq_tjzh_tit mt10">
                <ul>
                  <li class="hover">优惠套装</li>
                </ul>
              </div>
              <XqYou></XqYou>
              <!--人气组合-->
              <div class="xq_tjzh_tit mt10">
                <ul>
                  <li class="hover">人气组合</li>
                </ul>
              </div>
              <XqYou></XqYou>
              <!--商品详情列表-->
              <div class="xq_hdm_tit mt10">
                <ul>
                  <li class="hover" id="xqhdm1" onclick="setTab('xqhdm',1,5)">商品详情</li>
                  <li id="xqhdm2" onclick="setTab('xqhdm',2,5)">商品参数</li>
                  <li id="xqhdm3" onclick="setTab('xqhdm',3,5)">评价详情(<span>524</span>)</li>
                  <li id="xqhdm4" onclick="setTab('xqhdm',4,5)">装箱清单</li>
                  <li id="xqhdm5" onclick="setTab('xqhdm',5,5)">成交记录(<span>524</span>)</li>
                </ul>
                <a href="#" class="right mt5"><img src="../../static/images/xq_icon_jrgwc.gif" width="94" height="28" alt="加入购物车" /></a>
              </div>
              <!--商品详情-->
              <div id="con_xqhdm_1">
                <!--详情列表-->
                <div class="xq_hdm_nr">
                  <ul class="xq_hdm_nr1">
                    <li>商品名称：三星Galaxy Note 3 N9008V</li>
                    <li>商品编号：1033161</li>
                    <li>品牌：三星（SAMSUNG）</li>
                    <li>上架时间：2013-12-27 08：58：29</li>
                    <li>商品毛重：400.00g</li>
                    <li>商品产地：中国大陆</li>
                    <li>网络：移动2G/联通2G（GSM），移动3G（TD-SCDMA）...</li>
                    <li>系统：安卓（Android）</li>
                    <li>特点：拍照神器，1080P全高清屏</li>
                    <li>屏幕尺寸：5.6英寸及以上</li>
                    <li>机身颜色：白色</li>
                  </ul>
                  <p class="text_r"><a href="#" class="xq_sjxx_pp" style="background:none;">更多参数</a></p>
                </div>
                <!--长图-->
                <p class="text_c mt10"><img src="../../static/images/xq_img.jpg" /></p>
              </div>
            </div>
          </div>
        </div>
        <!--cont 结束-->
      </div>
    </div>
    <div class="box">
      <!--商品评价-->
      <div class="xq_hdm_nr3_t">
        <p>商品评价</p>
        <div class="xq_sppj">
          <div class="xq_sppj1">
            <strong>94<span>%</span></strong>
          </div>
          <div class="xq_sppj2">
            <dl>
              <dt>好评<span>(94%)</span></dt>
              <dd><div style="width: 94px;"></div></dd>
            </dl>
            <dl>
              <dt>中评<span>(5%)</span></dt>
              <dd class="d1"><div style="width: 5%;"> </div></dd>
            </dl>
            <dl>
              <dt>差评<span>(1%)</span></dt>
              <dd class="d1"><div style="width: 1%;"> </div></dd>
            </dl>
          </div>
          <div class="xq_sppj3">
            <p>买家印象：</p>
            <ul>
              <li><span>后味很好闻</span><em>(11)</em></li>
              <li><span>瓶子很漂亮</span><em>(10)</em></li>
              <li><span>品牌好</span><em>(8)</em></li>
              <li><span>价格实惠</span><em>(8)</em></li>
              <li><span>不错的香水</span><em>(8)</em></li>
              <li><span>物流速度快</span><em>(7)</em></li>
              <li><span>留香持久</span><em>(6)</em></li>
              <li><span>后味不错</span><em>(5)</em></li>
              <li><span>留香时间长</span><em>(4)</em></li>
              <li><span>香气持久</span><em>(4)</em></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import Header from  './subcomponents/header'
  import XqYou from './subcomponents/xqYou'
  import '@/assets/css/style.css'
  import axios from 'axios';
  import qs from 'qs';
  export default {
    data:function(){
      return {
        xqtop:[
          {topnum:1,img_url:"../../static/images/xq_top_img1.jpg",title:"三星 I9288",price:4999},
          {topnum:2,img_url:"../../static/images/xq_top_img2.jpg",title:"三星 I9288",price:4999},
          {topnum:3,img_url:"../../static/images/xq_top_img1.jpg",title:"三星 I9288",price:4999}
          ],
        tuijian:[
          {img_url:"../../static/images/xq_l_nr_img.jpg",title:"三星（SAMSUNG） Galaxy S3I9308 4G手机（云石白）",price:2796.00},
          {img_url:"../../static/images/xq_l_nr_img.jpg",title:"三星（SAMSUNG） Galaxy S3I9308 4G手机（云石白）",price:2796.00},
          {img_url:"../../static/images/xq_l_nr_img.jpg",title:"三星（SAMSUNG） Galaxy S3I9308 4G手机（云石白）",price:2796.00},
          {img_url:"../../static/images/xq_l_nr_img.jpg",title:"三星（SAMSUNG） Galaxy S3I9308 4G手机（云石白）",price:2796.00}
        ],
        id:"",
        table:"",
        big_img:"",
        list:[],
        dTime:"",
        mask:{
          mask:false
        },
        MaskP:{top:0,left:0},
        divLg:{
          divLg:false
        },
        input:1,
        Lgshow:{
          lgImg:"",
          left:0,
          top:0
        },
      }
    },
    computed:{
      bgu(){return`background-size:1000px 1000px;background-image:url(${this.Lgshow.lgImg});background-repeat:no-repeat;background-position: ${this.Lgshow.left}px ${this.Lgshow.top}px;`}
    },
    mounted(){
      this.getUrl();
      this.getList()
    },
    methods:{
      getUrl(){
        var search=location.search;
        search=search.replace('?',"").split("&");
        this.id=search[0].split("=")[1];
        this.table=search[1].split("=")[1];
      },
      getList(){
        this.$http.get('qProduct/details?id='+this.id+"&table="+this.table).then(result=>{
          if(result.body.code==1){
            this.list=result.body.msg[0];
            this.big_img=this.list.img_url;
          }
        });
      },
      big(e){
        this.big_img=e.target.src;
        this.dTime=Math.ceil(Math.random()*3);
      },
      showMask(){
        this.mask.mask=true;
        this.divLg.divLg=true;
        this.Lgshow.lgImg=this.big_img;
      },
      hideMask(e){
        this.mask.mask=false;
        this.divLg.divLg=false;
      },
      moveTu(e){
        var {offsetX,offsetY}=e;
        var top=offsetY-75;
        var left=offsetX-75;
        top=top<0?0:top>200?200:top;
        left=left<0?0:left>200?200:left;
        this.MaskP.top=`${top}px`;
        this.MaskP.left=`${left}px`;
        this.Lgshow.top=-3*top;
        this.Lgshow.left=-3*left;
      },
      jian(e){
        e.preventDefault();
        if(this.input>1)
          this.input--;
      },
      add(e){
        e.preventDefault();
        this.input++;
      },
      goCart(){
        var uid=window.sessionStorage.id;
        var pid=this.id;
        var table=this.table;
        if(uid==undefined){
          confirm("嘿，王上，请先注册登录，登录后方可添加购物车噢!!!")
        }else{
          //添加购物车数据
          this.$http.get('http://127.0.0.1:3000/qCart/isHas?uid='+uid+"&pid="+pid+"&table="+table).then(result=>{
            if(result.body.code==0){
              axios.post("http://127.0.0.1:3000/qCart/add",qs.stringify(
                {uid,pid,table,count:this.input,price:this.list.price_new,img_url:this.list.img_url,title:this.list.title}
              )).then(res=>{
               if(res.data.code==1){
                alert(res.data.msg);
               }
               });
            }else{
              //更新购物车数据
              axios.post("http://127.0.0.1:3000/qCart/updateCart",qs.stringify(
                {uid,pid,table,count:this.input}
                )).then(res=>{
                if(res.data.code==1){
                  alert(res.data.msg);
                }
              });
            }
          });
        }
      }
    },
    components:{
      Header,
      XqYou
    }
  }
</script>

<style scoped>
div.details{text-align: left}
#spec-n1 div.divLg{width:450px;height:450px; position:absolute;top:0;left:360px;z-index: 10;}
#spec-n1 div.mask{width:150px;height:150px;background-color: #ffff00;opacity:0.3;position:absolute;top:0;display:block;}
#spec-n1 .super-mask{width:350px;height:350px;position:absolute;top:0;left:0;z-index:1000;}
</style>