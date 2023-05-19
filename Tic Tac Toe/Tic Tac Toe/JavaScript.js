function whowon() {

    var txt11, txt12, txt13, txt21, txt22, txt23, txt31, txt32, txt33;
    txt11 = document.getElementById("txt11").value;
    txt12 = document.getElementById("txt12").value;
    txt13 = document.getElementById("txt13").value;
    txt21 = document.getElementById("txt21").value;
    txt22 = document.getElementById("txt22").value;
    txt23 = document.getElementById("txt23").value;
    txt31 = document.getElementById("txt31").value;
    txt32 = document.getElementById("txt32").value;
    txt33 = document.getElementById("txt33").value;

    //checking for X
    if (txt11 == 'X' && txt12 == 'X' && txt13 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt21 == 'X' && txt22 == 'X' && txt23 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt31 == 'X' && txt32 == 'X' && txt33 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt11 == 'X' && txt22 == 'X' && txt33 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt13 == 'X' && txt22 == 'X' && txt31 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt11 == 'X' && txt21 == 'X' && txt31 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt12 == 'X' && txt22 == 'X' && txt32 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }
    else if (txt13 == 'X' && txt23 == 'X' && txt33 == 'X') {
        document.getElementById('lblwon').innerHTML = "Player X won";
    }

    //checking for 0
    else if (txt11 == '0' && txt12 == '0' && txt13 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt21 == '0' && txt22 == '0' && txt23 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt31 == '0' && txt32 == '0' && txt33 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt11 == '0' && txt22 == '0' && txt33 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt13 == '0' && txt22 == '0' && txt31 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt11 == '0' && txt21 == '0' && txt31 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt12 == '0' && txt22 == '0' && txt32 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if (txt13 == '0' && txt23 == '0' && txt33 == '0') {
        document.getElementById('lblwon').innerHTML = "Player 0 won";
    }
    else if ((txt11 == 'X' || txt11 == '0') && (txt12 == 'X' || txt12 == '0') && (txt13 == 'X' || txt13 == '0') &&
        (txt21 == 'X' || txt21 == '0') && (txt22 == 'X' || txt22 == '0') && (txt23 == 'X' || txt23 == '0') &&
        (txt31 == 'X' || txt31 == '0') && (txt32 == 'X' || txt32 == '0') && (txt33 == 'X' || txt33 == '0')) {
        document.getElementById('lblwon').innerHTML = "Match Tie";
        reset();
    }
    else {
        if (flag == 1) {
            document.getElementById('lblturn').innerHTML = "0's Turn";
        }
        else {
            document.getElementById('lblturn').innerHTML = "X's Turn";
        }
    }
}

function reset() {
    document.getElementById("txt11").value = '';
    document.getElementById("txt12").value = '';
    document.getElementById("txt13").value = '';
    document.getElementById("txt21").value = '';
    document.getElementById("txt22").value = '';
    document.getElementById("txt23").value = '';
    document.getElementById("txt31").value = '';
    document.getElementById("txt32").value = '';
    document.getElementById("txt33").value = '';

}

flag = 1;
function play1() {
    if (document.getElementById("txt11").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt11").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt11").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
}
function play2() {
    if (document.getElementById("txt12").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt12").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt12").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play3() {
    if (document.getElementById("txt13").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt13").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt13").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
}
function play4() {
    if (document.getElementById("txt21").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt21").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt21").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play5() {
    if (document.getElementById("txt22").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt22").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt22").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play6() {
    if (document.getElementById("txt23").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt23").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt23").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play7() {
    if (document.getElementById("txt31").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt31").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt31").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play8() {
    if (document.getElementById("txt32").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt32").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt32").value = "X";
            flag = 1;   
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }
    
}
function play9() {
    if (document.getElementById("txt33").value == "") {
        document.getElementById('lblwon').innerHTML = "";
        if (flag == 1) {
            document.getElementById("txt33").value = "0";
            flag = 0;
        }
        else {
            document.getElementById("txt33").value = "X";
            flag = 1;
        }
    }
    else {
        document.getElementById('lblwon').innerHTML = "invalid move";
    }

    
}