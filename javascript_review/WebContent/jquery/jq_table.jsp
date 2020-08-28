<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous">
</script>

</head>
<body>
<table border="1" id="tbl">
	<thead>
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>kim</td>
			<td>90</td>
			<td>80</td>
		</tr>
		<tr>
			<td>park</td>
			<td>60</td>
			<td>100</td>
		</tr>
		<tr>
			<td>choi</td>
			<td>40</td>
			<td>100</td>
		</tr>			
	</tbody>
</table>
<div>국어합계: <span id="kor"></span></div>
<script>
	//tbody의 2열의 국어 성적의 합계를 계산하여 span 태그에 출력
	var a = parseInt($("td:nth-child(2)").eq(1).html());
	var b = parseInt($("td:nth-child(2)").eq(2).html());
	var c = parseInt($("td:nth-child(2)").eq(3).html());
	$("#kor").html(a+b+c);
</script>
</body>
</html>