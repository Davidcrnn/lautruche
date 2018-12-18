  $(document).ready(function() {
    $(".div2,.div3,.div4,.div5,.div6,.div7").css('display', 'none');

  $(".1").on('click', function() {
   $(".div1").fadeIn(1000,"swing");
   $(".div2,.div3,.div4,.div5,.div6,.div7").fadeOut(10,"swing");
});
$(".2").on('click', function() {
   $(".div2").fadeIn(1000,"swing");
   $(".div1,.div3,.div4,.div5,.div6,.div7").fadeOut(10,"swing");
});
$(".3").on('click', function() {
   $(".div3").fadeIn(1000,"swing");
   $(".div1,.div2,.div4,.div5,.div6,.div7").fadeOut(10,"swing");
});
$(".4").on('click', function() {
   $(".div4").fadeIn(1000,"swing");
   $(".div1,.div2,.div3,.div5,.div6,.div7").fadeOut(10,"swing");
});
$(".5").on('click', function() {
   $(".div5").fadeIn(1000,"swing");
   $(".div1,.div2,.div3,.div4,.div6,.div7").fadeOut(10,"swing");
});
$(".6").on('click', function() {
   $(".div6").fadeIn(1000,"swing");
   $(".div1,.div2,.div3,.div5,.div4,.div7").fadeOut(10,"swing");
});
$(".7").on('click', function() {
   $(".div7").fadeIn(1000,"swing");
   $(".div1,.div2,.div3,.div5,.div6,.div4").fadeOut(10,"swing");
});



});
