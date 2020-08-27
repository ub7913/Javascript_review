<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empAll.jsp</title>
</head>
<body>
	<h3>사원목록</h3>
		<a href="#">king</a><br>
		<a href="#">steven</a><br>
		<a href="#">scott</a><br>
	<script>
		var atag = document.getElementsByTagName("a");
		for(var i=0; i<atag.length; i++) {
			atag[i].addEventListener("click", choose);//함수를 호출 하기 위해 ()없이 choose를 적는다.
		}
		
		function choose() {
			opener.document.getElementById("manager_id").value = 
								window.event.target.innerHTML;
			window.close();
		}
	</script>
</body>
</html>