<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie.jsp(jquery)</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
$(function() {
	//박스 오피스 조회 버튼
	$("#btnList").on("click", loadDoc);
	//영화 상세정보 조회 이벤트 (table에 그룹이벤트 걸어야 함), 과제
	$("#result").on("click", ".movieCd", loadInfo);
});

/*---------------------------------------------------------------------
//영화코드에 해당하는 상세정보(감독,배우,상영시간)를 조회 하여 div#info에 출력, 코드 클릭 
$(event.target)
---------------------------------------------------------------------*/

function loadInfo() {
	var cd = $(event.target).text();
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=430156241533f1d058c603178cc3ca0e&movieCd=" + cd;
	$.getJSON(url, function(obj) {
		var movieNm = obj.movieInfoResult.movieInfo.movieNm;
		var director = obj.movieInfoResult.movieInfo.directors;
		var actor = obj.movieInfoResult.movieInfo.actors;
		$("#info").html(movieNm, director, actor);
	});
}
/*---------------------------------------------------------------------
  // 박스 오피스 조회
 ---------------------------------------------------------------------*/
function loadDoc() {
	var dt = $("#name").val(); 
  	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=" + dt;	
  	$.getJSON(url, function(obj){//parse까지 다 띄워줌, function(obj)응답결과를 json parsing해서 넘겨줌
  		var arr = obj.boxOfficeResult.dailyBoxOfficeList;
  		$("#result").attr("border", 1);
  		for (i=0; i<arr.length; i++) {
  			var tr = $("<tr>").append(
  					 $("<td>").text(arr[i].movieCd).addClass("movieCd"), 
  					 $("<td>").text(arr[i].movieNm));
  			$("#result").append(tr);
  		}
  	});
}
</script>
</head>
<body>
<input type="text" id="name" value="20200827">
<button type="button" id="btnList">검색</button>
<table id="result"></table>
<div id="info"></div>
</body>
</html>