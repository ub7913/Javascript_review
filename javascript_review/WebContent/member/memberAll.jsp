<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>memberAll</title>

</head>
<body>
	<%@include file="menu.jsp"%>
	<h3>ȸ�� ��ü��ȸ</h3>
	<ul class="search">
		<li>���ϼ��ſ���</li>
		<li>����</li>
		<li><button type="button">�˻�</button></li>
	</ul>
	<table border="1" id="members">
		<thead>
			<tr>
				<th>ID</th>
				<th>PW</th>
				<th>JOB</th>
				<th>MAILYN</th>
				<th>GENDER</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><a href="memberSelect.jsp">hoil</a></td>
				<td>hoil</td>
				<td>job</td>
				<td>no</td>
				<td>male</td>
			</tr>
			<tr>
				<td><a href="memberSelect.jsp">park</a></td>
				<td>park</td>
				<td>good job</td>
				<td>yes</td>
				<td>female</td>
			</tr>
		</tbody>
	</table>
</body>
</html>