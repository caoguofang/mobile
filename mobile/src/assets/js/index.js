$(function(){
  var $divLift=$("div.lift");
  var $ul=$divLift.children("ul");
  var $jinbao=$("div.box>div.cont>div.sy_cont_2");
  var $f4=$("div.box>div.cont>div.sy_title");
  var $pin=$("div.box>div.cont>div.sy_title2");
  $(window).scroll(function(){
    var scrollTop=$("html,body").scrollTop();//文档划过的高度
    var offsetTop=$jinbao.offset().top;
    if(innerHeight/2+scrollTop>offsetTop){
      $divLift.css({"display":"block"});
      $ul.children(":eq(0)")
        .addClass("li-danger")
        .siblings()
        .removeClass("li-danger");
    }else{
      $divLift.css({"display":"none"});
    }
    $f4.each((i,f)=>{
      offsetTop=$(f).offset().top;
      if(innerHeight/2+scrollTop>offsetTop)
        $ul
          .children(`:eq(${i+1})`)
          .addClass("li-danger")
          .siblings()
          .removeClass("li-danger");
    });
    //品牌馆
    var $pinOffset=$pin.offset().top;
    if(innerHeight/2+scrollTop>$pinOffset){
      $ul.children(":eq(5)")
        .addClass("li-danger")
        .siblings()
        .removeClass("li-danger");
    }
  });
  //楼层跳转功能
  $ul.on("click","li",function (){
    var i=$(this).index();
    if(i==0){
      var jinOffset=$jinbao.offset().top-300;
      $("html").animate({
        scrollTop:jinOffset
      },500);
    }
    if(i==5){
      var pinOffset=$pin.offset().top-300;
      $("html").animate({
        scrollTop:pinOffset
      },500);
    }
    if(i>0&&i<5){
      $f4.each((ui,f)=>{
        if(i-1===ui){
          offsetTop=($(f).offset().top)-300;
          $("html").animate({
            scrollTop:offsetTop
          },500)
        }
      });
    }
    if(i==6){
      $("html").animate({
        scrollTop:0
      },500)
    }
  });
});
