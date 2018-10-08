$(function(){
  //用户名验证
  var Reg=/^[0-9a-zA-Z]{3,9}$/;
  var RegPwd=/^[0-9a-zA-Z]{6,8}$/;
  var RegE=/^([a-zA-Z0-9]+[_|\.])*[a-zA-Z0-9]+@([a-zA-Z-0-9]+[_|\.]?)[A-Za-z-0-9]+\.[a-zA-Z]{2,3}$/;
  var RegP=/^1[3-9]\d{9}$/;
  var $user=$("div.Reg>div>input:first");
  $user.focusout(function(){
    if(Reg.test($user.val())){
      $user.next()
        .removeClass("fade")
        .html("<img src='img/ok.png'>")
    }else{
      $user.next()
        .html("<img src='img/err.png'>用户名必须介于字母数字3~9位之间!")
        .removeClass("fade");
    }
  });
  //密码验证
  var $upwd=$("div.Reg>div:nth-child(2)>input");
  $upwd.focusout(function(){
    if(RegPwd.test($upwd.val())){
      $upwd.next()
        .removeClass("fade")
        .html("<img src='img/ok.png'>")
    }else{
      $upwd.next()
        .html("<img src='img/err.png'>密码必须介于字母数字6~8位之间!")
        .removeClass("fade");
    }
  });
  //确认密码
  var $Rpwd=$("div.Reg>div:nth-child(3)>input");
  $Rpwd.focusout(function(){
    if($Rpwd.val()==$upwd.val() && $upwd.val()!="")
      $Rpwd.next()
        .html("<img src='img/ok.png'>")
        .removeClass("fade");
    else
      $Rpwd.next()
        .html("<img src='img/err.png'>确认密码不通过!")
        .removeClass("fade");
  });
  //验证邮箱格式
  var $Email=$("div.Reg>div:nth-child(4)>input");
  $Email.focusout(function(){
    if(RegE.test($Email.val()))
      $Email.next()
        .html("<img src='img/ok.png'>")
        .removeClass("fade");
    else
      $Email.next()
        .html("<img src='img/err.png'>邮箱格式不合格")
        .removeClass("fade")
  });
  //手机号格式验证
  var $phone=$("div.Reg>div:nth-child(5)>input");
  $phone.focusout(function(){
    if(RegP.test($phone.val())){
    //手机号是否重复验证
      var phone=$phone.val();
    $.ajax({
      url:"http://127.0.0.1:3000/users/isPhone",
      type:"get",
      data:{phone},
      dataType:"json",
      success:function(data){
        if(data.ok==1)
          $phone.next()
            .html("<img src='img/err.png'>该手机号已被注册,请更换或者直接登录")
            .removeClass("fade");
        else{
          $phone.next()
            .removeClass("fade text-danger")
            .html("<img src='img/ok.png'>请阅读下方的使用协议！！！")
            .css("color","green");
        }
      }
    })
    }else{
      $phone.next()
        .html("<img src='img/err.png'>手机号格式不合格")
        .removeClass("fade");
    }
  });
  //提交注册
  var $submit=$("div.Reg>div:last-child>a").click(function(e){
    e.preventDefault();
    if(Reg.test($user.val()) && RegPwd.test($upwd.val()) && RegE.test($Email.val()) && RegP.test($phone.val()) && $upwd.val()==$Rpwd.val()){
      var $dp=$("div.Reg>div:nth-child(5)>span>img").attr("src");
      if($dp=='img/ok.png'){
        var uname=$user.val();
          var upwd=$user.val();
          var Email=$Email.val();
          var phone=$phone.val();
          $.ajax({
            url:"http://127.0.0.1:3000/users/register",
            type:"post",
            data:{uname,upwd,Email,phone},
            dataType:"json",
            success:function(data){
              if(data.code==200){
                alert("注册成功，点击进入登入页面");
                //var back=location.search.slice(6);
                //location.href=back;
                location.href="http://127.0.0.1:3000/ulogin.html?back="+location.href;
              }
            }
          });
      }else{
        alert("输入格式不合格，请检查提示信息，便以修改！");
      }
  }else{
      alert("输入格式不合格，请检查提示信息，便以修改！");
    }
  });
  $("header>div.header>h4>a").click(function(e){
    e.preventDefault();
    location.href=location.href="http://127.0.0.1:3000/ulogin.html?back="+location.href;
  });
});
