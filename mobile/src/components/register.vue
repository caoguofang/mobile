<template>
  <div id="register">
    <header>
      <div class="header">
        <img src="../../static/images/logo.jpg" alt="">
      </div>
      <div></div>
    </header>
    <section>
      <div class="clearfix  bg-light">
        <h1>新用户注册</h1>
        <div class="Reg bg-light ml-5 float-left p-3">
          <div class="row my-2">
            <img src="../../static/images/user.png">
            <input v-model="uName" maxlength="9" minlength="3" @focusout="uNameOk" type="text" autofocus
                   class="col-12 pl-4"
                   placeholder="用户名必须介于字母数字3~9位之间!"/>
            <p id="sUName">&nbsp;</p>
          </div>
          <div class="row my-2">
            <img src="../../static/images/pwd.png">
            <input v-model="uPwd" maxlength="8" minlength="6" type="password" @focusout="uPwdOk" class="col-12 pl-4"
                   placeholder="密码必须介于字母数字6~8位之间!"/>
            <p id="uPwd">&nbsp;</p>
          </div>
          <div class="row my-2">
            <img src="../../static/images/pwd.png">
            <input v-model="rUPwd" maxlength="8" minlength="6" @focusout="rUPwdOk" type="password" class="col-12 pl-4"
                   placeholder="确认密码"/>
            <span id="rUPwd" @focusout="rUPwdOk"></span>
          </div>
          <div class="row my-2">
            <img src="../../static/images/email.png">
            <input v-model="Email" type="email" class="col-12 pl-4" @focusout="EmailOk" placeholder="邮箱"/>
            <p id="Email">&nbsp;</p>
          </div>
          <div class="row my-2">
            <img src="../../static/images/phone.png">
            <input v-model="phone" type="text" class="col-12 pl-4"  @focusout="isPhone"
                   maxlength="11" placeholder="手机号"/>
            <p id="phone">&nbsp;</p>
          </div>
          <p data-v-8f8a1d9a="" class="row" style="position:relative;">
            <input  type="checkbox" checked id="checked" style="position:absolute;top:5px;">
            <span  style="margin-left:15px">已阅读并同意</span>
            <a  href="#">《使用协议》</a>
          </p>
          <div class="row pb-3">
            <span class="btn btn-success col-12 text-light" @click="register">注册</span>
          </div>
        </div>
        <div class="Reg-r pl-5 float-left p-3">
          <span class="ml-4">使用以下账号直接注册登录</span>
          <a href="#" class="btn btn-light d-block  border border-primary text-primary">
            <img src="../../static/images/QQ.jpg" id="qq"/>QQ 注册
          </a>
          <a href="#" class="d-block btn btn-light  border border-success text-success">
            <img src="../../static/images/wechat.png"/>微信注册
          </a>
          <a href="#" class="d-block btn btn-light  border border-danger text-danger">
            <img src="../../static/images/sinablog.png" />微博注册
          </a>
          <h4 class="d-inline-block float-right">已有账号？<a href="#" class="text-danger">请登录></a></h4>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
  import axios from 'axios'
  import qs from 'qs'
  export default {
    data:function(){
      return {
        uName:"",
        uPwd:"",
        phone:"",
        Email:"",
        rUPwd:"",
        Reg:/^[0-9a-zA-Z]{3,9}$/,
        RegPwd:/^[0-9a-zA-Z]{6,8}$/,
        RegE:/^([a-zA-Z0-9]+[_|\.])*[a-zA-Z0-9]+@([a-zA-Z-0-9]+[_|\.]?)[A-Za-z-0-9]+\.[a-zA-Z]{2,3}$/,
        RegP:/^1[3-9]\d{9}$/
      }
    },
    methods:{
      uNameOk(){
        var sUname=document.getElementById("sUName");
        if(this.Reg.test(this.uName)){
          sUname.innerHTML="<img src='../../static/images/ok.png'> <span style='color:green'>验证通过</span>"
        }else{
          sUname.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>请确认输入正确格式的用户名</span>"
        }
      },
      uPwdOk(){
        var suPwd=document.getElementById("uPwd");
        if(this.RegPwd.test(this.uPwd)){
          suPwd.innerHTML="<img src='../../static/images/ok.png'> <span style='color:green'>验证通过</span>"
        }else{
          suPwd.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>请确认输入正确的密码</span>"
        }
      },
      rUPwdOk(){
        var srUPwd=document.getElementById("rUPwd");
        if(this.rUPwd===this.uPwd && this.rUPwd!==""){
          srUPwd.innerHTML="<img src='../../static/images/ok.png'> <span style='color:green'>验证通过</span>"
        }else{
          srUPwd.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>请确认输入密码</span>"
        }
      },
      EmailOk(){
        var sEmail=document.getElementById("Email");
        if(this.RegE.test(this.Email)){
          sEmail.innerHTML="<img src='../../static/images/ok.png'> <span style='color:green'>验证通过</span>"
        }else{
          sEmail.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>请输入正确的邮箱格式</span>"
        }
      },
      isPhone(){
        var sp=document.getElementById("phone");
        if(this.RegP.test(this.phone)){
          this.$http.get("qUser/isPhone?phone="+this.phone).then(result=>{
            if(result.body.ok==1){
              sp.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>该手机号已被注册，请更换</span>";
            }else{
              sp
                .innerHTML="<img src='../../static/images/ok.png'> <span style='color:green'>验证通过</span>"
            }
          })
        }else{
          sp.innerHTML="<img src='../../static/images/err.png'><span style='color:red'>请输入正确的手机格式</span>";
        }
      },
      register(){
        var che=document.querySelector("checkbox");
        console.log(che);
        //if(che.checked==true){
        if(this.Reg.test(this.uName) && this.RegPwd.test(this.uPwd) && this.RegE.test(this.Email) && this.RegP.test(this.phone) &&
          this.uPwd===this.rUPwd){
          axios.post("http://127.0.0.1:3000/qUser/register",
              qs.stringify({uName:this.uName,uPwd:this.uPwd,phone:this.phone,Email:this.Email})
          ).then(res=>{
            if(res.data.code==1) {
             alert(res.data.msg);
              location.href="/login?back="+decodeURIComponent(location.href);
           }
          });
        }else{
          alert("请按提示输入正确的格式！");
        }
        //}else{
          //alert("请先阅读使用协议，并勾选！");
        //}
      }
    },
    components:{
    }
  }
</script>

<style scoped>
  p>img,span>img{margin-top:5px}
  header{background:#fcfcfc;padding-bottom:50px;}
  header>div>img{margin:20px 0;}
  header>div:last-child{height:18px;background-image:linear-gradient(to top,#f2f2f2 3px,#f4f4f4 6px,#f6f6f6 9px,#f8f8f8 12px,#fcfcfc 15px,#fefefe 18px);}
  section{width:100%;height:550px;background-image:linear-gradient(to top,#f2f2f2 100px,#f4f4f4 200px,#f6f6f6 300px,#f8f8f8 400px,#fcfcfc 500px,#fefefe 600px);}
  section>div{width:600px;margin:0 auto;}
  section>div>div.Reg{width:300px;}
  section>div>div.Reg>div{position:relative;}
  section>div>div.Reg>div>input{height:40px;}
  section>div>div.Reg>div>img{position:absolute;top:10px;left:3px;z-index: 1000;}
  section>div>div.Reg>div>span{height:20px;}
  section>div>div.Reg-r{width:250px;margin-top:-30px;}
  section>div>div.Reg input{border:1px solid #1a83e0;}
  section>div>h1{padding-top:20px;}
  #qq{width:18px;height:16px;}
  #register>section>div{width:710px;position: relative;}
  #register>section>div>div:nth-child(3){position:absolute;right:10px;top:50px;}
  #register>section>div>div:nth-child(3)>a{margin-top:15px;}
  #register>section>div>div:nth-child(3)>h4{margin-top:15px;}
  .d-block {display: block !important;}
  .d-inline-block {display: inline-block !important;}
  .pl-5, .px-5 {padding-left: 3rem !important;}
  .ml-5, .mx-5 {margin-left: 3rem !important;}
  .text-danger {
    color: #dc3545 !important;
  }
  .float-left {float: left !important;}
  .float-right {float: right !important;}
  .clearfix::after {display: block;clear: both;content: "";}
  .bg-light {background-color: #f8f9fa !important;}
  .float-left {float: left !important;}
  .p-3 {padding: 1rem !important;}
  .pt-2, .py-2 {padding-top: 0.5rem !important;}
  .pl-4, .px-4 {padding-left: 1.5rem !important;}
  .row {display: -webkit-box;display: -ms-flexbox;display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;margin-right: -15px;margin-left: -15px;}
  .my-2 {margin-bottom: 0.5rem !important;}
  .col-12 {-webkit-box-flex: 0;-ms-flex: 0 0 100%;flex: 0 0 100%;max-width: 100%;}
  .col-12 {position: relative;width: 100%;min-height: 1px;padding-right: 15px;padding-left: 15px;}

  .fade {opacity: 0;transition: opacity 0.15s linear;}
  .btn-success {color: #fff;background-color: #28a745;border-color: #28a745;}

  .btn-success:hover {color: #fff;background-color: #218838;border-color: #1e7e34;}
  .btn {display: inline-block;font-weight: 400;text-align: center;white-space: nowrap;vertical-align: middle;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;border: 1px solid transparent;padding: 0.375rem 0.75rem;font-size: 1rem;line-height: 1.5;border-radius: 0.25rem;transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;}
  .btn-light {color: #212529;background-color: #f8f9fa;border-color: #f8f9fa;}

  .btn-light:hover {color: #212529;background-color: #e2e6ea;border-color: #dae0e5;}
  .border {border: 1px solid #dee2e6 !important;}
  .border-primary {border-color: #007bff !important;}

  .border-success {border-color: #28a745 !important;}
  .text-success {color: #28a745 !important;}
  .border-danger {border-color: #dc3545 !important; }
  .text-danger {color: #dc3545 !important;}

</style>
