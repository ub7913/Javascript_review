<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" type="text/css" href="../common.css">
<ul class="menu">
	<li><a href="../member/memberInsert.jsp">ȸ�����</a></li>
	<li><a href="../member/memberAll.jsp">ȸ�����</a></li>
	<li><a href="../board/boardInsert.jsp">�Խñ۵��</a></li>
	<li><a href="../board/boardAll.jsp">�Խñ۸��</a></li>
</ul>
<div id="divPageName"></div>
<script>
	url=location.pathname;
	var pageName = url.substring(url.lastIndexOf("/")+1);
	divPageName.innerHTML = pageName;
	lis = document.querySelectorAll(".menu li");
	if(pageName == "memberInsert.jsp") {
		lis[0].className = "menuActive";
		//lis[0].style.backgroundColor = "yellow";
	} else if(pageName == "memberAll.jsp") {
		lis[1].className = "menuActive";
		//lis[1].style.backgroundColor = "blue";
	}
</script>