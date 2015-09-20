$(document).ready(function(){
      // $('svg')
      //   .mouseenter(function(){
      //   $('#leftHorn').attr('class',"rotate");
      //   })
      //   .mouseleave(function(){
      //   $('#leftHorn').removeClass("rotate");
      //   $('#leftHorn').attr('class',"rerotate");
      //   console.log('rmove')
      //   });
          function Horn(){
            $('#leftHorn').attr('class',"rotate");
            $('#leftHorn').removeClass("rerotate");
            $('#rightHorn').removeClass("opprotate");
            $('#rightHorn').attr('class',"rerotate");
          }
          function HornAgain(){
            $('#leftHorn').removeClass("rotate");
            $('#leftHorn').attr('class',"rerotate");
            $('#rightHorn').removeClass("rerotate");
            $('#rightHorn').attr('class',"opprotate");
          }

      setInterval(Horn, 1000);
      setInterval(HornAgain, 1600);
      // setInterval(leftHorn, 2000);



});
