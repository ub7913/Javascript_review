<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_image.jsp</title>
<style>
	img { width : 100px; }
</style>
</head>
<body>
<script>
var imgArr = ["./images/우주하마.jpg",
			  "./images/Desert.jpg",
			  "./images/Koala.jpg",
			  "./images/Jellyfish.jpg"];
for(var i=0; i<imgArr.length; i++) {
	var img = document.createElement("img");
	img.src = imgArr[i];
	document.body.appendChild(img);
	
	img.onmouseover = function() {
		this.style.width = "200px";
	}
	img.onmouseout = function() {
		this.style.width = "100px";
	}
}
</script>
<p></p>
</body>
</html>