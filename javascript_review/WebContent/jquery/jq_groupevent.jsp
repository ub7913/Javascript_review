<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_groupevent</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(function() {
	//버튼 클릭 : input태그 값을 ul태그에 붙이기
	$("#btnAdd").click(function () {
		var val = $("<li>").text($("#fruit").val());
		$("ul").append(val);
	});
	
	//li 마우스오버 이벤트: 색변경
	/*$("li").on("mouseover" , function() {
		$(this).css("color", "blue"); //태그 각각에다가 걸어주는것, 이렇게 하면 새롭게 추가되는 li태그는 이벤트가 걸리지 않음
	});*/
	 
	$("ul").on("mouseover" , "li" , function() {
		$(this).css("color", "blue"); //이벤트를 부모에 걸어서 이벤트가 자식에게 '전파' 되도록 함
	});
	
	$("ul").on("mouseleave" , "li" ,function() {
		$(this).css("color", "");
	});
});
</script>
</head>
<body>
<input id="fruit"><button type="button" id="btnAdd">추가</button>

<ul>
	<li>자바
	<li>스프링
</ul>
</body>
</html>