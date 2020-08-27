<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_string.jsp</title>
</head>
<body>
<h3>stirng object 연습</h3>
<div id="result"></div>
<script>
	var url = "/review/member/memberInsert.jsp"
	/*var num = url.lastIndexof("/", 16);
	console.log(num);
	var str = url.subString(num);*/
	result.innerHTML = url.substring(url.lastIndexOf("/")+1);
</script>
</body>
</html>