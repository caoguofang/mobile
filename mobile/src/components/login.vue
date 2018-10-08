<template>
  <div class="main">
    <div class="login-form">
      <h1>用户登录</h1>
      <form>
        <input type="text" class="text"  placeholder="请输入手机号" autofocus v-model="phone">
        <input type="password" autocomplete placeholder="请输入密码" v-model="uPwd">
        <Random id="random" @ziqu="yanzheng"></Random>
        <div class="submit">
          <input type="submit" @click="postLogin">
        </div>
        <p><a href="#">忘记密码？</a></p>
      </form>
    </div>
  </div>
</template>

<script>
  import Random from  './subcomponents/random'
  export default {
    data:function(){
      return{
        phone:"",
        uPwd:"",
        YanFou:""
      }
    },
    methods:{
      postLogin(){
        if(this.YanFou!==""){
          var arr=decodeURIComponent(location.search).split("?back=");
          var back=arr[arr.length-1];
          var url ="qUser/login?phone="+this.phone+"&uPwd="+this.uPwd;
          this.$http.get(url).then(result=>{
          if(result.body.code==1){
            window.sessionStorage.id=result.body.id;
            alert("登录成功！点击确定返回原来的页面！");
            location.href=decodeURIComponent(`${back}`);
          }else {
            alert(result.body.msg);
            location.href=location.search;
          }
        });
        }else{
          alert("不是告诉你了吗，去重新输入验证去！");
          location.href=location.search;
        }
      },
      yanzheng(str){
        this.YanFou="";
        this.YanFou=str;
      }
    },
    components:{
      Random
    }
  }
</script>

<style scoped>
  html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
  article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
  ol,ul{list-style:none;margin:0px;padding:0px;}
  blockquote,q{quotes:none;}
  table{border-collapse:collapse;border-spacing:0;}
  a{text-decoration:none;}
  .login-form
  {background:#eee;width: 500px;margin:9% auto 4% auto;position: relative;-webkit-border-radius: 0.4em;-o-border-radius:
    0.4em;-moz-border-radius: 0.4em;}
  .main{position:relative;}
  .main h1{font-size:25px;color:#676767;font-family: 'Open Sans', sans-serif;font-weight:400;padding-top: 19%;text-align: center;}
  .main form {width: 80%;margin: 0 auto;padding: 6% 0 9% 0;}
  .main p {text-align: center;}
  .main form p a {color: #888;font-family: 'Open Sans', sans-serif;}
  form p a:hover {color:#21A957;}
  input[type="text"],
  input[type="password"]{text-align:left;position: relative;width:92%;padding:2%;background:#D3D3D3;margin-bottom: 6%;font-family: 'Open Sans', sans-serif;color: #676767;font-weight:600;font-size: 16px;outline: none;border: none;border-radius: 5px;border:1px solid #DED6D6;-webkit-appearance:none;}
  input[type="text"]:hover, input[type="password"]:hover{border:1px solid #949494;transition:0.5s;-webkit-transition:0.5s;-moz-transition:0.5s;-o-transition:0.5s;-ms-transition:	0.5s;}
  input[type="submit"]{width: 99%;padding: 3%;margin-bottom: 8%;background: #21A957;font-family: 'Open Sans', sans-serif;color: #ECECEC;
    box-shadow: inset 0px 0px 10px #666464;-webkit-text-shadow: 0px 0px 3px #000;-moz-text-shadow: 0px 0px 3px #000;-o-text-shadow: 0px 0px 3px #000;-ms-text-shadow: 0px 0px 3px #000;
    font-size: 20px;outline: none;border: none;cursor: pointer;font-weight:500;border-radius: 5px;transition: 0.5s;-webkit-appearance:none;-webkit-transition: 0.5s;-moz-transition: 0.5s;-o-transition: 0.5s;-ms-transition: 0.5s;
  }
  input[type="submit"]:hover{background:#128A42;color:#fff;}
  #random{margin:-20px 0 5px 0;}
</style>
