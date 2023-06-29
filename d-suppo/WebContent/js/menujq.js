
  $(function(){
    $(".container").on("click",".infinite-slider",function(e){         // swiper-slide要素がクリックされたとき
        if($('#tori1').hasClass('torinone')){ //id tori1のclassを置き換え
            $('#tori1').removeClass('torinone');
            $('#tori1').addClass('tori5');
        }else {if($('#tori2').hasClass('torinone')){
              $('#tori2').removeClass('torinone');
              $('#tori2').addClass('tori5');
            }else {if($('#tori3').hasClass('torinone')){
                 $('#tori3').removeClass('torinone');
                  $('#tori3').addClass('tori5');
              }else {if($('#tori4').hasClass('torinone')){
                  $('#tori4').removeClass('torinone');
                  $('#tori4').addClass('tori5');

                 }else{
                  $(".freezeframe").trigger("click");

                 }
              }
            }
        }
    });
  });