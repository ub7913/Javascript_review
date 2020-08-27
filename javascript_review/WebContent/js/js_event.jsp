<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event.jsp</title>
<style>
	.price { 
		display: none;
	}
</style>
<script>
	window.addEventListener("load", init);
	function init() {
		//클래스가 title인 태그 찾기
		var titles = document.getElementsByClassName("title");
		for (var i=0; i<titles.length; i++) {
			//mouseover(mouseenter) event걸기
			titles[i].addEventListener("mouseover", function() {
				var price = this.parentNode.getElementsByClassName("price")[0];
				price.style.display="inline";
			});
		}
		//mouseout(mouseleave) event걸기
		for (var i=0; i<titles.length; i++) {
			titles[i].addEventListener("mouseleave", function() {
				var price = this.parentNode.getElementsByClassName("price")[0];
				price.style.display="none";
			});
		}
	}
</script>
</head>
<body>
	<div>
		<span class="title">스프링</span>
		<span class="price">5000</span>
	</div>
	<div>
		<span class="title">자바</span>
		<span class="price">4000</span>
	</div>
	<div>
		<span class="title">자바스크립</span>
		<span class="price">6000</span>
	</div>
	
</body>
</html>