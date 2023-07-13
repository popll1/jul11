<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나가 board여...</title>
<link href="./css/board.css" rel="stylesheet">
</head>
<body>
	<h1>니는 누구냐?</h1>
	<h1>나는 the 보드 ${name }다...</h1>
	${list }
	<hr>
	<c:forEach items="${list }" var="i">
		<%-- 반복됩니다. --%>
			${i.bno } / ${i.btitle } / ${i.bwrite } /${i.blike } / ${i.bdate } <br>
	</c:forEach>
	<hr>
	<table>
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="row">
			<tr>
				<td id = "td1">${row.bno }</td>
				<td class="title">${row.btitle }</td>
				<td id = "td1">${row.bwrite }</td>
				<td id = "td2">${row.bdate }</td>
				<td id = "td1">${row.blike }</td>
			</tr>
		</c:forEach>
		</tbody>	
	</table>
	
	<hr>
	<table>
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list2 }" var="row">
			<tr>
				<td id = "td1">${row.bno }</td>
				<td class="title">${row.btitle }</td>
				<td id = "td1">${row.bwrite }</td>
				<td id = "td2">${row.bdate }</td>
				<td id = "td1">${row.blike }</td>
			</tr>
		</c:forEach>
		</tbody>	
	</table>
</body>
</html>