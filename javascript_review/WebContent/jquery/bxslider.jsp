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
<div class="bxslider"></div>
<script>
var imgArr = ["../images/우주하마.jpg",
			  "../images/Desert.jpg",
			  "../images/Koala.jpg",
			  "../images/Jellyfish.jpg"];
for(var i=0; i<imgArr.length; i++) {
	var img = document.createElement("img");
	img.src = imgArr[i];
	document.body.appendChild(img);
	
	/*img.addEventListener("mouseover", function() {
		this.style.width = "200px";//this는 타겟을 가르킴(자기 자신을 의미함)
	});
	img.addEventListener("mouseout", function() {
		this.style.width = "100px";
	});*/
	
	
}
</script>
<p></p>
</body>
</html>