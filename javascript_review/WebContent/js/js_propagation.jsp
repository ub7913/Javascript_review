<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_propagation.jsp</title>
<style>
	div { 
		padding : 30px; 
		border: 1px solid blue;	
	}
</style>
<script>
	window.addEventListener("load", function() {
		a.addEventListener("click", function() {alert("A");});
		b.addEventListener("click", function() {alert("B");});
		c.addEventListener("click", function() {
			alert("C");
			window.event.stopPropagation();//전파 중지 함수 : stopPropagation()
		});
		linka.addEventListener("click", function(){
			if(! confirm("이동할까요?")) { //어떤 버튼을 눌러도 a태그 발동됨
				window.event.preventDefault();//a, submit 등 태그의 원래 기능을 중지 시킬때 쓰는 함수
			} 
		});
	});
</script>
</head>
<a href="js_event.jsp" id="linka">이벤트 테스트</a>
<body>
	<div id="a">A
		<div id="b">B
			<div id="c">C</div>
		</div>
	</div>
</body>
</html>