<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_move.jsp</title>
<style>
	img {
		width : 50px;
		top : 100px;
		left : 100px;
		position : relative
	}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<img src="../images/Koala.jpg" id="img1">
<script>

	$(this).on("mousemove", function() {
		$("#img1").css("left" , event.clientX + "px");
		$("#img1").css("top" , event.clientY + "px");
	});
	$(this).on("keydown", function() {
		var a = $("#img1").css("left");
		var b = $("#img1").css("top");
		if(event.keyCode == 37) {
			$("#img1").css("left", (parseInt(a) - 10) + "px");
		} else if(event.keyCode == 38) {
			$("#img1").css("top", (parseInt(b) - 10) + "px");
		} else if(event.keyCode == 39) {
			$("#img1").css("left", (parseInt(a) + 10) + "px");
		} else if(event.keyCode == 40) {
			$("#img1").css("top", (parseInt(b) + 10) + "px");
		}
	});
	
</script>
</body>
</html>