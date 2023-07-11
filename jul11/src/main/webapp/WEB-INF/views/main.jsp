<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main</h1>
	${name }<br>
	JSTL //EL<br>
	<c:forEach begin="1" end = "10" var= "i" >
<!-- 	https://agileryuhaeul.tistory.com/entry/EL-%ED%83%9C%EA%B7%B8-%EB%9E%80-Expression-Language-Tag
 --><%-- 	<c:if test = "${i ge 3}">
		${i }<br> --%>

<%-- 	</c:if> --%>
	
	<c:choose> 
		<c:when test = "${i ne 3}">
			삼입니다.<br>
		</c:when>
		<c:otherwise>
		</c:otherwise>
		
		</c:choose>
	
	</c:forEach>
	
	set <br>
	<c:set var = "k" value = " 케이" > </c:set>
	<c:set var = "k"> 새로운 값이래</c:set><br>
	${k } 
	<br>
	out = ${var }
	<c:out value = " k "></c:out>
	<c:out value = "${k }"> </c:out>
	M = model = data
	V = View = jsp
	C = Controller = 흐름제어
	<c:remove var="k"/>
	${k }<br>	
	<hr>
	
	
	<c:forEach items="${list }" var="i">
	${i }<br>
	</c:forEach>
</body>
</html>