function formSwitch() {
	hoge = document.getElementsByName('maker');
    if (hoge[0].checked) {
        // 好きな食べ物が選択されたら下記を実行します
        document.getElementById('genreList').style.display = "";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "none";

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
    	 document.getElementById('genreList').style.display = "none";
         document.getElementById('dishList').style.display = "";
         document.getElementById('havList').style.display = "none";

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
    	document.getElementById('genreList').style.display = "none";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "";

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
    	document.getElementById('genreList').style.display = "none";
        document.getElementById('dishList').style.display = "none";
        document.getElementById('havList').style.display = "none";

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