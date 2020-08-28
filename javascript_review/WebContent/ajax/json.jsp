<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>

</head>
<body>
<div id="result"></div>
<script>
	//객체
	var obj = { id:"hong", name:"홍길동" }; //객체 하나를 표현할때는 중괄호({})로 표현하기
	result.innerHTML += obj.name + "<br>"; //obj만 하면 객체 자체를 가져온다. 그래서 값을 가져 오고 싶으면 obj.키 를 써줄것
	
	//배열
	var arr = [
		{ id: "hong", name: "홍길동" },
		{ id: "kim", name: "김기자" }
	];
	result.innerHTML += arr[1].name + "<br>"; //두번째 객체의 이름을 가져온다.
	
	//객체 안에 배열
	var objArr = { id: "hong", name: "홍길동", hobby: ["운동", "게임", "독서"] };
	result.innerHTML += objArr.hobby[1] + "<br>";
	
	//객체 안에 객체 안에 배열
	var objObj = { members: { cnt:4, list:["김","이"]}};
	result.innerHTML += objObj.members.list[0] + "<br>";
</script>
</body>
</html>