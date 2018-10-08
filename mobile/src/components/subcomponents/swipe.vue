<template>
  <div id="slider">
    <div class="window" :style="dw">
      <!--轮播图片-->
      <ul id="container" :style="w" :class="{huiqu:true===huif}">
        <li><img :style="lbi" :src="sliders[sliders.length-1].img_url" alt=""></li><!--sliders[sliders.length-1].img_url-->
        <li v-for="(item,index) in sliders" :key="index" >
            <img :style="lbi" :src="item.img_url" v-on="{mouseover:end,mouseout:swipe}"><!--item.img_url-->
        </li>
        <li><img :style="lbi" :src="sliders[0].img_url" alt=""></li><!--sliders[0].img_url-->
      </ul>
      <!--轮播两侧的箭头-->
      <img id="left" :style="left" src="../../../static/images/swipe/left.gif" @click="nextImg" v-on="{mouseover:end,mouseout:swipe}">
      <img id="right" :style="right" src="../../../static/images/swipe/right.gif" @click="prevImg" v-on="{mouseover:end,mouseout:swipe}">
      <!--轮播指示器-->
      <ul class="dots" :style="zsq">
        <li v-for="(dot,i) in sliders" :key="i" :class="{dotted:i===(index-1)}" :style="zhishi" @click="swi(i+1)"></li>
      </ul>
    </div>
  </div>
</template>

<script>
  var timer="";
  export default {
    name: "swipe",
    data:function(){
      return{
        sliders:[{img_url:""}],//防止第一次轮播报错
        width:"",
        height:"",
        zhishi:{
          width:"15px",
          height:"15px",
          "margin-right":"4px",
          "border-radius":"50%",
          "background-color":"#eee",
          float:"left",
          cursor:"pointer",
          border:"2px solid #fff"
        },
        wleft:-(this.wid),
        index:1,
        huif:false
      }
    },
    props:["slider","wid","hei"],
    computed:{
      dw(){return`width:${this.width}px; height:${this.height}px;overflow:hidden;position:relative;`},
      w(){return`width:${this.width * (this.sliders.length+2)}px;transform:translate(${this.wleft}px);transition-duration:1000ms;`},
      lbi(){return `width:${this.width}px; height:${this.height}px;cursor:pointer;`},
      left(){return`position:absolute;top:${(this.height)*0.45}px;left:2px;cursor:pointer;`},
      right(){return`position:absolute;top:${(this.height)*0.45}px;right:2px;cursor:pointer;`},
      zsq(){return `position:absolute;bottom:10px;left:${(this.width)*0.44}px;`},
    },
    created(){
      this.width=this.wid;
      this.height=this.hei;
      this.swipe1();
    },
    mounted(){
      this.swipe();

    },
    updated(){
      this.sliders=this.slider;
    },
    methods:{
      nextImg(){//下一张
        if(this.wleft>-(this.width*(this.sliders.length))){
          this.huif=false;
          this.wleft+=-(this.width);
          this.index+=1;
        }else{
          this.wleft+=-this.width;
          this.index=1;
          this.wuxian();
        }
        },
      prevImg(){//上一张
        if(this.wleft<-this.width){
          this.huif=false;
          this.index-=1;
          this.wleft+=this.width;
        }else{
          this.wleft=0;
          this.index=this.sliders.length;
          var rr=setInterval(()=>{
            setTimeout(()=>{
              this.huif=true;
              this.wleft=-this.width*this.index;
            },);
            if(this.index=this.sliders.length)clearInterval(rr)
          },1000)
        }
      },
      end(){//鼠标悬浮停止轮播
        clearInterval(timer);
      },
      swipe(){
        timer=setInterval(()=>{
          var i=20;
          if(this.wleft>-(this.width*(this.sliders.length))){
            this.huif=false;
            this.wleft+=-(this.width);
            this.index+=1;
          }else{
            this.wleft+=-this.width;
            this.index=1;
            this.wuxian();
          }
        },5000)
      },
      swipe1(){
        setTimeout(()=>{
              var i = 20;
              if (this.wleft > -(this.width * (this.sliders.length))) {
                this.huif = false;
                this.wleft += -(this.width);
                this.index += 1;
              } else {
                this.wleft += -this.width;
                this.index = 1;
                this.wuxian();
              }
            },1)
        },
      swi(i){//小圆点点击效果
        this.index=i;
        this.wleft=this.width*(-(this.index));
      },
      //无限循环
      wuxian(){
        var ll=setInterval(()=>{
          setTimeout(()=>{
            this.huif=true;
            this.wleft=-this.width;
          },);
          if(this.index=1)clearInterval(ll)
        },1000);
        return ll;
      },
      wuxianr(){
        var rr=setInterval(()=>{
          setTimeout(()=>{
            this.huif=true;
            this.wleft=-(this.width*this.index)
          },);
          if(this.index=5)clearInterval(rr)
        },1000);
        return rr;
      }
    }
  }
</script>

<style scoped>
  #container>li{float:left;}
  #container:after,ul.dots:after{content:"";display:table;clear:both;}
  #left,#right{opacity: 0.6;height:15%;padding:0 5px;position:absolute;}
  #left:hover,#right:hover{height:18%;opacity:0.9;}
  .dotted{background-color: red!important;}
  .huiqu{
    transition-duration:0s !important;
  }
</style>