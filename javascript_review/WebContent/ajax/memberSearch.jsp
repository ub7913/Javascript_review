<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
<script>
function loadDoc() {
	//1. XHR객체 생성
  	var xhttp = new XMLHttpRequest();
	//2. 콜백함수
  	xhttp.onreadystatechange = function() {
    	if (this.readyState == 4) {
    		if(this.status == 200) {
    			//json
    			var obj = JSON.parse(this.responseText);
    			var arr = obj.boxOfficeResult.dailyBoxOfficeList
    			for(var i=0; i<arr.length; i++) { //객체 객체 배열
    				result.innerHTML += arr[i].movieNm + "<br>";
    			}
    		} else {
        		document.getElementById("result").innerHTML = xhttp.status +" , "
				+ xhttp.statusText;
			}
    	}  else {
    		document.getElementById("result").innerHTML = "처리중";
    	} 
  	};
  	//3. 요청준비
  	var dt = document.getElementById("name").value;
  	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=" + dt;
  	xhttp.open("GET", url, true);
  	//4. 요청시작
  	xhttp.send();
}
</script>
</head>
<body>
<input type="text">
<input type="text" id="name">
<button type="button" onclick="loadDoc()">검색</button>
<div id="result"></div>

</body>
</html>