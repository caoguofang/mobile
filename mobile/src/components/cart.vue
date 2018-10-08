<template>
  <div>
    <Header></Header>
    <div class="content">
      <!--head 开始-->
      <div class="overflow mb20">
        <p class="left mt20 ml5">
          <router-link to="/index">
            <img src="../../static/images/logo.jpg" width="270" height="60" alt="中国移动" />
          </router-link>
        </p>
        <p class="right mr55 mt20">
          <img src="../../static/images/lc3.gif" width="390" height="60" alt="" />
        </p>
      </div>
      <!--head 结束-->
      <!--订单成功开始-->
      <div class="pay_add_tit1">我的购物车</div>
      <div class="pay_ddxxtab">
        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="jhd_tabgwc">
          <thead>
            <tr>
            <th width="55">
              <input type="checkbox" class="checkbox quan" @click="che" />全选
            </th>
            <th width="295" class="brfff">商品</th>
            <th width="155" class="brfff">商品信息</th>
            <th width="120" class="brfff">单价</th>
            <th width="120" class="brfff">数量</th>
            <th width="120">小计</th>
            <th width="120" class="brfff">操作</th>
          </tr>
          </thead>
        </table>
        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="jhd_tabgwc" style="border:1px solid #d2eaff;">
          <tr class="sjx jgx" v-for="list in listCart">
            <td width="55">
              <input class="ml25 checkbox" @click="ipche" type="checkbox" />
            </td>
            <td width="295" height="160">
              <div class="left ml20" style="width:95px;"><a
                href="#"><img :src="list.img_url" height="82" width="82" /></a></div>
              <div class="right" style="width:190px;">
                <p class="title"><a href="#">{{list.title}}</a></p>
              </div></td>
            <td width="155" class="pl15"><p>品牌：iphone</p> <p>型号：5s <p>颜色：土豪金</p></td>
            <td width="120" align="center"><b>{{list.price}}</b></td>
            <td width="120" align="center">
              <div class="sl">
                <img width="20" height="20" @click="jian" style="vertical-align:middle;cursor:pointer;" src="../../static/images/p_xx_jian.gif">
                <span>
                  <input type="text" :value="list.m_count">
                </span>
                <img width="20" height="20"  @click="addC"  style="vertical-align:middle;cursor:pointer;" src="../../static/images/p_xx_jia.gif">
              </div>
            </td>
            <td width="120" align="center" class="clf55a08">{{list.price.toFixed(2)}}</td>
            <td width="120" align="center"><p><a href="#">收藏</a></p><p>
              <span style="cursor:pointer;" @click="remove(list.id)">删除</span>
            </p><p><a href="#">结算</a></p></td>
          </tr>
        </table>
      </div>
      <div class="gwc_js">
        <div class="gwc_js_fl">
          <input type="checkbox" class="ml25 checkbox quan" @click="che" />
          <span color="#373737">全选</span>
          <span class="ml15">
            <a href="#">删除选中商品
            </a>
          </span>
          <span class="ml15">
            <a href="#">清空购物车</a>
          </span>
        </div>
        <div class="gwc_js_fr">
          <div class="left">
            <p id="pt">应付总额（不含运费）：<span>￥{{total.toFixed(2)}}</span></p>
          </div>
          <div class="right mr10 ml10">
            <a href="#"><img src="../../static/images/jxgw.gif" /></a>
            <a href="#"><img src="../../static/images/qjs.gif" /></a>
          </div>
        </div>
      </div>
      <div class="pay_wntj">
        <div class="wntj_tit">
          <div class="left">和为您推荐</div>
          <div class="paraTab"><ul id="paraTab" class="clearfix">
            <li class="active"><span>1</span></li>
            <li><span>2</span></li>
            <li><span>3</span></li>
          </ul>
          </div>
        </div>
        <div id="paraTab_Content0">
          <div class="hwntj_list">
            <div class="wntj_cont">
              <p class="text_c mt25">
                <a href="#"><img src="../../static/images/pic3.gif" height="168" width="136" /></a></p>
              <p class="text_c">苹果 ipad mini Retina屏 wifi版 7.9英寸平板电脑 16G</p>
              <p class="text_c"><span class="fontb font16">￥2888</span> <a href="#">
                <img src="../../static/images/jrgwc.gif"/></a>
              </p>
            </div>
            <div class="wntj_cont">
              <p class="text_c mt25">
                <a href="#"><img src="../../static/images/pic3.gif" height="168" width="136" /></a>
              </p>
              <p class="text_c">苹果 ipad mini Retina屏 wifi版 7.9英寸平板电脑 16G</p>
              <p class="text_c">
                <span class="fontb font16">￥2888</span> <a href="#"><img src="../../static/images/jrgwc.gif"/></a>
              </p>
            </div>
            <div class="wntj_cont">
              <p class="text_c mt25"><a href="#"><img src="../../static/images/pic3.gif" height="168" width="136" /></a></p>
              <p class="text_c">苹果 ipad mini Retina屏 wifi版 7.9英寸平板电脑 16G</p>
              <p class="text_c">
                <span class="fontb font16">￥2888</span> <a href="#"><img src="../../static/images/jrgwc.gif"/></a>
              </p>
            </div>
            <div class="wntj_cont">
              <p class="text_c mt25"><a href="#"><img src="../../static/images/pic3.gif" height="168" width="136" /></a></p>
              <p class="text_c">苹果 ipad mini Retina屏 wifi版 7.9英寸平板电脑 16G</p>
              <p class="text_c">
                <span class="fontb font16">￥2888</span> <a href="#"><img src="../../static/images/jrgwc.gif"/></a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <!--订单成功结束-->
      <div class="clear"></div>
    </div>
  </div>
</template>

<script>
  import Header from './subcomponents/header'
  export default {
    data(){
      return {
        listCart:[],
        uid:window.sessionStorage.id,
        list:[
          {count:1,price:6},
          {count:1,price:6}
        ],
        count:1,
        ccc:0,
        total:0
      }
    },
    mounted(){
      this.getList();
      this.ipche();
      this.totals()
    },
    updated(){
    },
    methods:{
      getList(){
        if(this.uid==undefined){
          if(confirm("尊敬的王上，需先登录，方可查看购物车！点击确认跳转登录页面！")){
            location.href="/login?back="+decodeURIComponent(location.href);
          }
        }else{
          this.$http.get("http://127.0.0.1:3000/qCart/list?uid="+this.uid).then(result=>{
            if(result.body.code==1){
              this.listCart=result.body.msg;
            }
          });
        }
      },
      jian(e){
        var td=e.target.parentElement.parentElement.nextElementSibling;
        var price=e.target.parentElement.parentElement.previousElementSibling.firstChild;
        var input=e.target.nextElementSibling.firstChild;
        if(input.value>1){
          input.value--;
          td.innerHTML=(parseInt(price.innerHTML)*input.value).toFixed(2);
          this.ipche();
        }
      },
      addC(e){
        var input=e.target.previousElementSibling.firstChild;
        var td=e.target.parentElement.parentElement.nextElementSibling;
        var price=e.target.parentElement.parentElement.previousElementSibling.firstChild;
        input.value++;
        td.innerHTML=(parseInt(price.innerHTML)*input.value).toFixed(2);
        this.ipche();
      },
      //多选按钮
      che(e){
        this.ccc++;
        var ches=document.querySelectorAll(".checkbox");
        if(this.ccc%2===1){
          for(var i=0; i<ches.length;i++){
            ches[i].checked=true;
            this.totals();
          }
        }else{
          for(var i=0; i<ches.length;i++){
            ches[i].checked=false;
            this.total=0;
          }
        }
      },
      //每个列表前的复选按钮
      ipche(){
        var chbs=document.querySelectorAll(".quan");
        var ches=document.querySelectorAll("table.jhd_tabgwc>tr.sjx>td>input:not(:checked)");
        //复选按钮全部选中后的操作
        if(ches.length==0){
          for(var i=0;i<chbs.length;i++){
            chbs[i].checked=true;
            this.totals();
          }
        }else{
          for(var i=0;i<chbs.length;i++){
            chbs[i].checked=false;
          }
        }
        //查找选中的按钮，并获取小计，累加赋值给总价
        var cheActive=document.querySelectorAll("table.jhd_tabgwc>tr.sjx>td>input:checked");
        this.total=0;
        for(var i=0;i<cheActive.length;i++){
          this.total+=parseInt(cheActive[i].parentElement.parentElement.lastElementChild.previousElementSibling.innerHTML)
        }
      },
      totals(){
        var ches=document.querySelectorAll("table.jhd_tabgwc>tr.sjx>td>input:not(:checked)");
        var xiaoji=document.querySelectorAll(".clf55a08");
        if(ches.length==0){
          this.total=0;
          for(var i=0;i<xiaoji.length;i++){
            this.total+=parseInt(xiaoji[i].innerHTML);
          }
        }
      },
      remove(id){
        if(confirm("嘿，小子你确定要删除吗？")){
          this.$http.get("qCart/delete?id="+id).then(result=>{
          if(result.body.code==1){
            alert(result.body.msg);
            this.getList();
          }
        });
        }else{
          alert("算你聪明！");
        }
      }
    },
    components:{
      Header
    }
  }
</script>

<style scoped>
  #pt{margin-top: 15px;}
  p.title{margin-top:-55px;padding:10px;}
</style>