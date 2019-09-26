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

window.onload = function() {
  if(!window.location.hash) {
      window.location = window.location + '#loaded';
      window.location.reload();
  }
}

$(function(){
  setTimeout('stopload()',10000);
});
 
function stopload(){
  $('#wrap').css('display','block');
  $('#loader-bg').delay(900).fadeOut(800);
  $('#loader').delay(600).fadeOut(300);
}