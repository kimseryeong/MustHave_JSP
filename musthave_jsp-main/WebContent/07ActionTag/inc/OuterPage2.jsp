<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OuterPage</title>
</head>
<body>
    <h2>외부 파일 2</h2>
    <%
    String newVar2 = "백제 온조왕";
    %>
    <ul>
    	<!-- 페이지와 내장 객체 영역에서 속성을 읽어와 출력 -->
        <li>page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
        <li>request 영역 속성 : <%= request.getAttribute("rAttr") %></li>
    </ul>
</body>
</html>