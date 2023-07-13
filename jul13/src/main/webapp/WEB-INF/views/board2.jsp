<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2</title>
</head>
<body>
	<h1>board2 : ${name }</h1>
	
	fn태그 ${fn:length(list)  }
	단독으로 사용할 수 없고 EL 표현식과 함께 사용해야 한다.
	
	<c:if test = ""></c:if>
	
	
	choose
	<c:choose>
	<c:when test = "${ 1 +1 ==3 }">


			참입니다.
	</c:when>


	<c:otherwise>
	거짓입니다.
	
	</c:otherwise>u
	
	</c:choose>
	
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
		<c:forEach items = "${list }" var = "row">
			<tr>
				<td id="td1">${row.bno }</td>
				<td class="title">${row.btitle }</td>
				<td id = "td1">${row.bwrite }</td>
				<td id = "td2">${row.btate }</td>
				<td id = "td1">${row.blike }</td>
				
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
	

</body>
</html>