<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInsert.jsp</title>
</head>

<body>
	<form>
		manager <input id="manager_id">
		<button type="button" id="btnSearch" onclick="findManager()">검색</button>
		
	</form>
	<script>
		function findManager() {
			var popup = window.open("empAll.jsp","empSearch","width=350, height=300, left=100, top=100");
			popup.addEventListener("load", function() {
				popup.document.title="사원검색";//새로운 창의 표시줄에 이름 넣기
			});//팝업이 완전히 로드 된후에 팝업 되도록, 익명함수로 쓸수 있음
			
		}
		
		
	</script>
</body>
</html>