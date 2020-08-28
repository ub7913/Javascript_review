<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(function() { //ready(load이전) 이벤트와  같은 의미
	//왼쪽 td 클릭 
	$("td").on("click",  function() { // = $("td").click(function() {})
		$("#right").append($(this).parent());
	});
	
	//오른쪽 td 클릭(오른쪽에는 td태그가 없으므로 그룹이벤트를 걸어야 함), 실제 이벤트는 td에 일어남
	$("#right").on("click", "td", function() {
		$("#left").append($(this).parent());
	});
	
}); // = window.addEventListener("load", function() {}) 같은 의미
</script>
</head>
<body>
<table id="left" border="1">
	<tr><td>홍길동</td><td>30</td></tr>
	<tr><td>김기자</td><td>30</td></tr>
	<tr><td>이기자</td><td>30</td></tr>
</table>
<table id="right" border="1"></table>
</body>
</html>