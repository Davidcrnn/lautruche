  $(document).ready(function() {
    $("#div2,#div3,#div4").css('display', 'none');

  $("#1").on('click', function() {
   $("#div1").fadeIn(1200,"swing");
   $("#div2,#div3,#div4").fadeOut(1200,"swing");
});
$("#2").on('click', function() {
   $("#div2").fadeIn(1200,"swing");
   $("#div1,#div3,#div4").fadeOut(1200,"swing");
});
$("#3").on('click', function() {
   $("#div3").fadeIn(1200,"swing");
   $("#div1,#div2,#div4").fadeOut(1200,"swing");
});
$("#4").on('click', function() {
   $("#div4").fadeIn(1200,"swing");
   $("#div1,#div2,#div3").fadeOut(1200,"swing");
});


});
