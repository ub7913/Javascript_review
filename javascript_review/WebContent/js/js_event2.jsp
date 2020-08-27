<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event2.jsp</title>
<script>
	window.addEventListener("load", function() {
		var btns = document.getElementsByClassName("btnSelect");
		//단독이벤트
		/*for(var i=0; i<btns.length; i++) {
			btns[i].addEventListener("click", function(){
				var name = this.parentNode.parentNode.getElementsByTagName("td")[0];//버튼 위치(this)에서 부모(td)의 부모(tr)에서 자식을 찾는 것
				alert(name.innerHTML);
			});
		}*/
		
		//그룹이벤트
		tbl.addEventListener("click", function() {
			console.dir(event.target);//버튼
			console.dir(this);		  //table
			alert(event.target.parentNode.parentNode
					.getElementsByTagName("td")[0].innerHTML);
			
		});
	});
</script>
</head>
<body>
	<table border="1" id="tbl">
		<tbody>
			<tr>
				<td>kim</td>
				<td>30</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>park</td>
				<td>25</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>lee</td>
				<td>40</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
		</tbody>
	</table>
</body>
</html>