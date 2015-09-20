$(document).ready(function(){
      // makes the horm wiggle
      function Horn(){
        $('#leftHorn').attr('class',"rotate");
        $('#leftHorn').removeClass("rerotate");
        $('#rightHorn').removeClass("opprotate");
        $('#rightHorn').attr('class',"rerotate");
      };
      function HornAgain(){
        $('#leftHorn').removeClass("rotate");
        $('#leftHorn').attr('class',"rerotate");
        $('#rightHorn').removeClass("rerotate");
        $('#rightHorn').attr('class',"opprotate");
      };
      setInterval(Horn, 1000);
      setInterval(HornAgain, 1600);
});
