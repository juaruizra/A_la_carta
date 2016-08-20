$(document).ready(function(){

  $('#content').load("http://localhost:3000/productsforsale");

  $('#menu1').click(function(){
    // $('#content').fadeOut(1000)
    $('#content').load("http://localhost:3000/productsforsale?product_type=comidas");
    // $('#content').fadeIn(1000)
  });
  $('#menu2').click(function(){
    // $('#content').fadeOut(1000)
    $("#content").load("http://localhost:3000/productsforsale?product_type=bebidas");
    // $('#content').fadeIn(1000)
  });
  $('#menu3').click(function(){
    // $('#content').fadeOut(1000)
    $("#content").load('http://localhost:3000/productsforsale?product_type=adiciones');
    // $('#content').fadeIn(1000)
  });
  $('#menu4').click(function(){
    // $('#content').fadeOut(1000)
    $("#content").load('http://localhost:3000/productsforsale?product_type=postres');
    // $('#content').fadeIn(1000)
  });
});
