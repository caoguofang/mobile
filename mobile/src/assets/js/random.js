var suiji=[];
(function(){
  var cc=document.getElementById("cc");
  var ctx=cc.getContext("2d");
  //设置随机验证码的参数
  function start(){
    var
      arr=[1,2,3,4,5,6,7,8,9,'a','b','q','w','e','r','t','y','u','i','p','a','s','d','f','g','h','j','k','b','n','m','A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z'];
    //获取四位的随机参数
    var
      random=[arr[Math.floor(Math.random()*arr.length)],arr[Math.floor(Math.random()*arr.length)],arr[Math.floor(Math.random()*arr.length)],arr[Math.floor(Math.random()*arr.length)]];
    //设置随机字体大小的数字
    suiji=random;
    var pxs=[20,22,24,26,28,30];
    //获取随机色
    function color(){
      var r=Math.floor(Math.random()*256);
      var g=Math.floor(Math.random()*256);
      var b=Math.floor(Math.random()*256);
      return `rgb(${r},${g},${b})`;
    }
    //通过each遍历random数组，并将其放入画布内
    $(random).each((i,item)=>{
      var item=random[i];
      //获取随机字体大小
      var px=pxs[Math.floor(Math.random()*pxs.length)];
      ctx.font=`${px}px sans-serif`;
      ctx.fillStyle=color();
      var x=10;//x为随机数的初始化x轴坐标
      var y=10;//y为随机数的y轴坐标
      var xx=25;//随机数的间隔
      //随机数绘制
      ctx.textBaseline = "top";
      ctx.fillText(item, x + i * xx, y);
      //随机线性
      ctx.beginPath();
      ctx.strokeStyle = color();
      var yy = [];
      for (var i = 0; i < 5; i++) {
        yy.push(Math.floor(Math.random() * 41));
      }
      ctx.moveTo(0, yy[0]);
      ctx.lineTo(20, yy[1]);
      ctx.lineTo(40, yy[2]);
      ctx.lineTo(70, yy[3]);
      ctx.lineTo(100, yy[4]);
      ctx.lineTo(120, yy[5]);
      ctx.stroke();
    })
  };
  start();
  $("#bb").click(function() {
    ctx.clearRect(0,0,120,40);
    start();
  });
})();