<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_number.jsp</title>
</head>
<body>
	<input name="num1" id="num1">+
	<input name="num1" id="num2">=
	<input name="result" id="result">
	<button type="button" id="btnResult">결과확인</button>
	<button type="button" id="btnInit">초기화</button>
	<div id="divResult"></div>
<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous">
</script>
<script>
$("#btnResult").on("click", checkResult);
$("#btnInit").on("click", init);

var ocnt = 0;
var xcnt = 0;


function init() {
	$("#num1").val(Math.floor(Math.random() * 10 + 1));
	$("#num2").val(Math.floor(Math.random() * 10 + 1));
}

function checkResult() {
	
	var sum = parseInt($("#num1").val()) + parseInt($("#num2").val());
	if(sum == parseInt($("#result").val())) {
		alert("맞음");
		ocnt = ocnt + 1;
		$("#divResult").html($("#divResult").html()+"맞음<br>");
	} else {
		alert("틀림");
		xcnt = xcnt + 1;
		$("#divResult").html($("#divResult").html()+"틀림<br>");
	}
	
	if(ocnt + xcnt == 5) {
		alert("결과는 " + (ocnt * 20) + "점 입니다");
		$("#bntResult").on("disabled","disabled") ; // 비활성화 어떻게 하는것?
		$("#divResult").html("결과는 " + (ocnt * 20) + "점 입니다");
	} else {
		init();
		$("#result").val("");
	}
}

init();
</script>
</body>
</html>