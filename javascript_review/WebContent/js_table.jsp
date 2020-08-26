<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_table.jsp</title>
</head>
<body>
<table>
	<tbody id="members"></tbody>
</table>
<script>
var datas = [{id:'chichi', age:30, regdate:'2020/01/02'}, 
			 {id:'hong',   age:20, regdate:'2020/02/02'},
			 {id:'kim',    age:25, regdate:'2020/01/10'},
			 {id:'park',   age:35, regdate:'2020/05/20'}
			]
//배열의 값을 테이블 태그에 출력
var table = document.getElementById("members");
	
	for(var i=0; i<datas.length; i++) {
		var tr = table.insertRow(i);
		for(key in datas[1]){
			var td = tr.insertCell();
			td.innerHTML = datas[i][key];
		}
	}
</script>
</body>
</html>