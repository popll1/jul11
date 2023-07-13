<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2</title>
<link href="./css/board2.css" rel="stylesheet">
</head>
<body>
	<h1>board2: ${name }</h1>
	
	fn태그 ${fn:length(list) }
	
	<br>
	<c:if test=""></c:if>
	<%-- 얘는 ""안의 내용이 참일때면 >< 안의 내용을 출력합니다. --%>
	
	choose <%-- if else --%>
	<c:choose>
		<c:when test="${fn:length(list) gt 0 }">
			참입니다.
		</c:when>
		<c:otherwise>
			출력할 데이터가 없습니다 ㅜㅜ
		</c:otherwise>	
	</c:choose>
	
	<table>
	<thead>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>날짜</td>
			<td>읽음</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="row">
			<tr>
				<td id="td1">${row.bno }</td>
				<td class="title">${row.btitle }</td>
				<td id="td1">${row.bwrite }</td>
				<td id="td2">${row.bdate }</td>
				<td id="td1">${row.blike }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>