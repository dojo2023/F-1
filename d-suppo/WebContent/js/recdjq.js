  $(function(){
  $("#recd-form").on("click","check1",function(e){         // check1要素がクリックされたとき
    $(check2).attr("5");              // check1要素の属性の値を取得
    $(check3).attr("5");  
    alert($(cheak2).attr("5")+ '//' + "1");//確認用
  });
});

  $(function(){
  $("#recd-form").on("click","check2",function(e){         // check1要素がクリックされたとき
    $(check1).attr("5");              // check1要素の属性の値を取得
    $(check3).attr("5");  
    alert($(cheak3).attr("5")+ '//' + "2");//確認用
  });
});

  $(function(){
  $("#recd-form").on("click","check3",function(e){         // check1要素がクリックされたとき
    $(check1).attr("5");              // check1要素の属性の値を取得
    $(check2).attr("5");  
    alert($(cheak1).attr("5")+ '//' + "3");//確認用
  });
});