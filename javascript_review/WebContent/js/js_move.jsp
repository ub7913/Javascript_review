<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_move.jsp</title>
<style>
	img {
		width : 50px;
		top : 100px;
		left : 100px;
		position : relative
	}
</style>
</head>
<body>
<img src="../images/Koala.jpg" id="img1">
<script>
	img1.style.left = "0px";
	img1.style.left = "0px";
	document.addEventListener("mousemove", function() {
		console.log(event.button);
		//if(event.button == 0) {
			img1.style.left = event.clientX + "px";
			img1.style.top = event.clientY + "px";
		//}
	});
	document.body.addEventListener("keydown", function() {
		//console.log(event.keyCode);
		if(event.keyCode == 37) {
			img1.style.left = (parseInt(img1.style.left) - 10) + "px";
		} else if(event.keyCode == 38) {
			img1.style.top = (parseInt(img1.style.top) - 10) + "px";
		} else if(event.keyCode == 39) {
			img1.style.left = (parseInt(img1.style.left) + 10) + "px";
		} else if(event.keyCode == 40) {
			img1.style.top = (parseInt(img1.style.top) + 10) + "px";
		}
	});
</script>
</body>
</html>