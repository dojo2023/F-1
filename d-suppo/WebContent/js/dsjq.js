  $(function(){
  $("#calendar-body").on("click","td",function(e){         // td要素がクリックされたとき
    date = $(this).attr("data-date");              // td要素の属性の値を取得
    month = $(this).attr("data-month");
    year = $(this).attr("data-year");
    $("#text1").attr("value",date);      // inputのvalue値を置き換え
    $("#text2").attr("value",month);
    $("#text3").attr("value",year);       // inputのvalue値を置き換え
   // alert($("input_date").attr("value",date) + '//' + month);//確認用
    document.forms.dsform.submit();         // submit（送信）する。
  });
});