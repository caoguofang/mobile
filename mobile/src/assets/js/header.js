$(function(){
  var $nav=$("div.nav_all_li");
  $nav.each((i,f)=>{
    $(f).mousemove(function(){
      var div=this;
      div.lastChild.style.display="block";
    });
    $(f).mouseout(function(){
      var div=this;
      div.lastChild.style.display="none";
    })
  })
});