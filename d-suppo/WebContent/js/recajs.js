function isCheck() {
    let arr_checkBoxes = document.getElementsByClassName("alcCheck");
    let count = 0;
    for (let i = 0; i < arr_checkBoxes.length; i++) {
        if (arr_checkBoxes[i].checked) {
            count++;
        }
    }
    if (count > 0) {
        return true;
    } else {
        window.alert("1つ以上選択してください。");
        return false;
    };

}