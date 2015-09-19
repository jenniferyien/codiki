$(document).ready(function(){

});

$(window).resize(function(){
   var width = $(window).width();
   if(width >= 700 && width <= 900){
       $('#media').removeClass('three_fourth').addClass('full_page');
   }
})
.resize();
