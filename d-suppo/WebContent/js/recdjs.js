function formSwitch() {
	hoge = document.getElementsByName('maker');
    if (hoge[0].checked) {
        // 好きな食べ物が選択されたら下記を実行します
        document.getElementById('genreList').style.visibility = "visible";
        document.getElementById('dishList').style.visibility = "hidden";
        document.getElementById('havList').style.visibility = "hidden";

        var inputItem = document.getElementById("genreList").getElementsByTagName("input");
        inputItem[0].checked = "checked";

        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }

        var inputItem = document.getElementById("havList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    }
     else if (hoge[1].checked) {
        // 好きな場所が選択されたら下記を実行します
    	 document.getElementById('genreList').style.visibility = "hidden";
         document.getElementById('dishList').style.visibility = "visible";
         document.getElementById('havList').style.visibility = "hidden";

         var inputItem = document.getElementById("dishList").getElementsByTagName("input");
         inputItem[0].checked = "checked";

         var inputItem = document.getElementById("genreList").getElementsByTagName("input");
         for(var i=0; i<inputItem.length; i++){
         inputItem[i].checked = "";
         }

         var inputItem = document.getElementById("havList").getElementsByTagName("input");
         for(var i=0; i<inputItem.length; i++){
         inputItem[i].checked = "";
         }
    }
     else if(hoge[2].checked) {
    	document.getElementById('genreList').style.visibility = "hidden";
        document.getElementById('dishList').style.visibility = "hidden";
        document.getElementById('havList').style.visibility = "visible";

        var inputItem = document.getElementById("havList").getElementsByTagName("input");
        inputItem[0].checked = "checked";

        var inputItem = document.getElementById("genreList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }

        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    }
     else{
    	document.getElementById('genreList').style.visibility = "hidden";
        document.getElementById('dishList').style.visibility = "hidden";
        document.getElementById('havList').style.visibility = "hidden";

        var inputItem = document.getElementById("genreList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }

        var inputItem = document.getElementById("dishList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }

        var inputItem = document.getElementById("havList").getElementsByTagName("input");
        for(var i=0; i<inputItem.length; i++){
        inputItem[i].checked = "";
        }
    }

}
window.addEventListener('load', formSwitch());