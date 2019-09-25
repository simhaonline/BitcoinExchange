$(function() {
  var h = $(window).height();
 
  $('#wrap').css('display','none');
  $('#loader-bg ,#loader').height(h).css('display','block');
});
 
$(window).load(function () {
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
  $('#wrap').css('display', 'block');
});
 
$(function(){
  setTimeout('stopload()',10000);
});
 
function stopload(){
  $('#wrap').css('display','block');
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
}

// $(document).on('turbolinks:load', function(){
//   var position = $("#target").offset().top;

//   $("#scroll_button").click(function(){
//     $(".tradingview-widget-container").animate({
//         scrollTop : position
//     }, {
//         queue : false
//     });
//   });
// });