<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_selector.jsp</title>

</head>
<body>
	<table border="1" id="tbl">
		<tbody>
			<tr>
				<td id="std">kim</td>
				<td>30</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>park</td>
				<td>25</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>lee</td>
				<td>40</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
		</tbody>
	</table>
<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
<script>
	$("td:first").css("backgroundColor", "green");
	console.log($("#std").closest("table"));//현재 아이디를 가진 태그의 조상중에서 검색 하는 것이 closest()이다
</script>
</body>
</html>