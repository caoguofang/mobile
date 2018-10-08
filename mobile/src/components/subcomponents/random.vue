<template>
  <div class="random">
    <canvas width="120" height="40" id="cc"></canvas>
    <input type="text" @blur="fuqu" v-model="codes" placeholder="请输入验证码">
    <input id="button" type="button" @click="refresh" value="刷新验证码">
  </div>
</template>

<script>
  export default {
    data:function(){
      return {
        arrCode:[1,2,3,4,5,6,7,8,9,'a','b','q','w','e','r','t','y','u','i','p','a','s','d','f','g','h','j','k','b','n','m','A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z'],
        pxs:[22,24,26,28,30,32,34,36],
        codes:"",
        rans:""
      }
    },
    mounted(){
      this.create();
    },
    methods:{
      rn(min,max){//返回指定范围内的随机整数
        var n=Math.random()*(max-min)+min;
        return Math.floor(n);
      },
      rc(min,max){//返回指定范围内的随机色;
        var r=this.rn(min,max);
        var g=this.rn(min,max);
        var b=this.rn(min,max);
        return `rgb(${r},${g},${b})`;
      },
      create(){
        var cc=document.getElementById("cc");
        var ctx=cc.getContext("2d");
        ctx.clearRect(0,0,120,50);
        //1.创建矩形为其填充颜色
        ctx.fillStyle=this.rc(100,233);
        ctx.fillRect(0,0,120,40);
        //2.获取4位验证码字符串
        this.rans="";
        for(var i=0;i<4;i++){
          var c=this.arrCode[this.rn(0,this.arrCode.length)];
          this.rans+=c;
          ctx.textBaseline="top";
          ctx.fillStyle=this.rc(10,220);
          var px=this.pxs[Math.floor(Math.random()*this.pxs.length)];
          ctx.font=`${px}px SimHei`;
          ctx.fillText(c,i*25+5,10);
        }
        //3.绘制干扰线
        for(var i=0;i<5;i++){
          ctx.strokeStyle = this.rc(0,255);   //设置随机色
          ctx.beginPath();               //开始新路径
          ctx.moveTo(this.rn(0,120),this.rn(0,30));//随机移动某点
          ctx.lineTo(this.rn(0,120),this.rn(0,30));//随机到某点画直线
          ctx.stroke();                  //描边
        }

        for(var i=0;i<20;i++){
          ctx.fillStyle = this.rc(0,255);     //设置随机色
          ctx.beginPath();               //开始新路径
          ctx.arc(this.rn(0,120),this.rn(0,30),0.5,0,2*Math.PI);
          ctx.fill();                    //绘圆并填充
        }
      },
      refresh(){
        this.create();
      },
      fuqu(){
        var reg=new RegExp(this.codes,"i");
        if(reg.test(this.rans))
          this.$emit("ziqu",this.rans);
        else
          alert("请重新刷新验证码并输入！");
      }
    },
  }
</script>

<style>
  #button{
    border:1px solid #fdf;
    padding:5px 0;
    height:40px;
    position:relative;
    bottom:14px;
    left:0;
  }
  input{
    height:40px;
    position:relative;
    bottom:15px;
    left:0;
  }
</style>