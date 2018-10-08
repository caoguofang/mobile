<template>
  <div class="list">
    <Header></Header>
    <div class="head_box">
      <div class="box">
        <!--head 开始-->
        <p class="pos_r" id="sy_img1">
          <a href="#"><img src="../../static/images/tgsy_img.jpg" width="1190" height="80" alt="" /></a>
          <span class="sy_imggb"><img src="../../static/images/icon_close.jpg" width="15" height="16" alt="关闭" /></span>
        </p>
        <div>
          <p class="left mt20 ml10"><a href="#"><img src="../../static/images/logo.jpg" width="270" height="60" alt="中国移动" /></a></p>
          <div class="left">
            <div class="head_ssbox">
              <a href="#" @click="getList" class="head_ssan"></a>
              <input name="" type="text" list="listuu" autofocus @keyup.13="getList" v-model="kw" class="head_ss" />
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
          <div class="head_tan">
            <div class="head_wdhb">
              <s></s>
              <div class="head_wdhb_ycc">
                <p class="wdhb_ycc_1">
                  <span class="left">Sylvia_fs</span>
                  <a href="#" class="right">去我的和包首页 ></a>
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
            <div class="head_qgwcjs">
              <s></s>
              <div class="gwcqp"><span>3</span></div>
              <div class="sygwc_none">购物车中还没有商品，赶紧选购吧！</div>
              <div class="sygwc_ysp">
                <ul>
                  <li>
                    <p class="sygwc_ysp_1"><img src="../../static/images/sygwc_img.jpg" width="60" height="60" /></p>
                    <p class="sygwc_ysp_2"><a href="#">苹果（APPLE）iPhone5s 32G版 3G手机 深空灰色）</a></p>
                    <div class="sygwc_ysp_3">
                      <p class="sygwc_ysp_3jq"><strong>￥5798.00</strong> x1</p>
                      <p class="mt20"><a href="#" class="a0085d0">删除</a></p>
                    </div>
                  </li>
                  <li>
                    <p class="sygwc_ysp_1"><img src="../../static/images/sygwc_img.jpg" width="60" height="60" /></p>
                    <p class="sygwc_ysp_2"><a href="#">苹果（APPLE）iPhone5s 32G版 3G手机 深空灰色）</a></p>
                    <div class="sygwc_ysp_3">
                      <p class="sygwc_ysp_3jq"><strong>￥5798.00</strong> x1</p>
                      <p class="mt20"><a href="#" class="a0085d0">删除</a></p>
                    </div>
                  </li>
                  <li>
                    <p class="sygwc_ysp_1"><img src="../../static/images/sygwc_img.jpg" width="60" height="60" /></p>
                    <p class="sygwc_ysp_2"><a href="#">苹果（APPLE）iPhone5s 32G版 3G手机 深空灰色）</a></p>
                    <div class="sygwc_ysp_3">
                      <p class="sygwc_ysp_3jq"><strong>￥5798.00</strong> x1</p>
                      <p class="mt20"><a href="#" class="a0085d0">删除</a></p>
                    </div>
                  </li>
                </ul>
                <div class="sygwc_tj">共<strong class="cf40 fontwryh">3</strong>件商品 共计：<strong class="cf40 font16 fontwryh">￥12096.00</strong><a href="#" class="sy_icon1 ml10">去结算</a></div>
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
    <!--cont 开始-->
    <div class="box">
      <div class="mt15 clear"></div>
      <div class="tg_ban"><img src="../../static/images/tg_banner.jpg" /></div>
      <div class="tg_list">
        <div class="tg_cont" v-for="li in list">
          <span  class="sy_jbtj_cx" style="left:0;top:0;">热卖</span>
          <div class="tg_cont_l"><img :src="li.img_url" /></div>
          <div class="tg_cont_r">
            <div class="tg_r_tit">{{li.title}}</div>
            <div class="tg_r_sj">时尚小巧 简单易用 高性价比</div>
            <div class="tg_r_pri">
              <div class="left"><span class="font12 fontb">现价：</span><span class="font14 fontb">￥</span><span
                class="font24 fontb">{{li.price_new}}</span>
                <i id="qiang">立即抢购</i>
              </div>
              <div class="right mr20 mt5"></div>
            </div>
            <div class="tg_r_xq">
              <div class="tg_r_xq_ckj"><p class="font18 fontb">市场价</p><p  class="font14"><s>￥{{li.price_old}}</s></p></div>
              <div class="tg_r_xq_zk"><p class="font18 fontb">折扣</p><p class="cf40 fontb font14">9.3折</p></div>
              <div class="tg_r_xq_js"><p class="font18 fontb">节省</p><p class="cf40 fontb font14">￥200</p></div>
              <div class="clear"></div>
            </div>
            <div class="tg_r_xl">限量500台，还剩<span class="cf40">{{li.stock}}</span>台</div>
            <div class="tg_r_ts">团购商品，每人最低购买3台，最高限购10台，10人以上购买团购生效，否则视自动失效，数量有限，售完为止！</div>
            <div class="tg_r_time"><img src="../../static/images/tg_djs.gif" /><span class="c666 ml5">剩余时间：
            </span><span class="cf40">{{time}}</span></div>
          </div>
        </div>
      </div>
      <div class="page">
        <span class="page">第{{pno}}/{{pageCount.length}}页</span>
        <span class="page">共{{count}}条</span>
        <button :disabled="isDisabled" class="show" @click="shouye">首页</button>
        <button :disabled="isDisabled" @click="uppage" class="up">&lt;</button>
        <button class="pagePno" v-for="pagep in pageCount" :class="{active:pno==pagep}" @click="tiao">{{pagep}}</button>
        <button :disabled="isdisabled" @click="downpage">&gt;</button>
        <button :disabled="isdisabled" @click="moye">末页</button>
      </div>
      <div class="clear"></div>
      <!--cont 结束-->
    </div>
  </div>
</template>

<script>
  import Header from './subcomponents/header'
  export default {
    data:function(){
      return {
        list:[],
        time:"",
        kw:this.$route.params.kw,
        pno:1,
        pageCount:[],
        count:0,
        isDisabled:false,
        isdisabled:false
      }
    },
    created() {
      this.getList();
      this.calc();
      setInterval(this.calc,1000)
    },
    updated(){
      this.mo();
      this.show();
    },
    methods:{
      search(kw){
        if(this.kw.trim()!==""){
          this.$router.push("/list/"+kw);
        }
      },
      getList(){
        this.$http.get("http://127.0.0.1:3000/qProduct/list?kw="+this.kw+"&pno="+this.pno).then(result=>{
          if(result.body.code==1){
            this.list=result.body.msg;
            this.count=result.body.count;
            for(var i=0;i<result.body.pageCount;i++){
              this.pageCount[i]=i+1;
            }
          }
          else
            alert("商品正在上架中！您也可以搜索华为和vivo！");
        });
      },
      calc(){
        var end=new Date("2018/10/31 22:00");
        var start=new Date();
        var s=parseInt((end-start)/1000);
        if(s>0){
          var d=parseInt(s/(3600*24));
          var h=parseInt(s%(3600*24)/3600);//不足一天的s，用于换算h
          var m=parseInt(s%3600/60);
          var s=s%60;
          this.time=`${d}天${h}小时${m}分${s}秒`;
        }else{
          clearInterval(timer);
          timer=null;
        }
      },
      show(){
        if(this.pno===1){
          this.isDisabled=true;
        }else{
          this.isDisabled=false;
        }
      },
      mo(){
        if(this.pno==this.pageCount.length){
          this.isdisabled=true;
        }else{
          this.isdisabled=false;
        }
      },
      tiao(e){
        var btn=e.target;
        this.pno=btn.innerHTML;
        this.getList();
      },
      shouye(){
        this.pno=1;
        this.getList();
      },
      moye(){
        this.pno=this.pageCount.length;
        this.getList();
      },
      uppage(){
        if(this.pno>1)
        this.pno--;
        this.getList();
      },
      downpage(){
        this.pno++;
        this.getList();
      }
    },
    components:{
      Header
    }
  }
</script>

<style scoped>
  div.list{text-align: left}
  div.box>div.page{margin-top:10px;padding-right:20px;float:right;}
  div.box>div.page>button{height:23px;margin:0 5px;cursor:pointer;}
  div.box>div.page>button.pagePno{background-color: #fff;color:#a4a4a4;font-weight: bold}
  div.box>div.page>button.pagePno:hover{background-color: #a4a4a4;color:#fff;}
  .active{background-color: #a4a4a4 !important;color:#fff !important;}
  #qiang{font-size: 24px ;margin-left:80px ;font-weight: bold;cursor:pointer;}
  div.tg_list>div.tg_cont>div.tg_cont_l>img{cursor:pointer;}
</style>