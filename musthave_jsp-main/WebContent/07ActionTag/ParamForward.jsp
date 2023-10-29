<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - param</title>
</head>
<body>
    <jsp:useBean id="person" class="common.Person" scope="request" /> 
    <h2>포워드된 페이지에서 매개변수 확인</h2>
    <ul>
        <li><jsp:getProperty name="person" property="name" /></li> 
        <li>나이 : <jsp:getProperty name="person" property="age" /></li>
        <li>본명 : <%= request.getParameter("param1") %></li> <!-- 쿼리스트링  -->
        <li>출생 : <%= request.getParameter("param2") %></li> <!-- 액션태그 -->
        <li>특징 : <%= request.getParameter("param3") %></li> <!-- 액션태그 -->
    </ul>
    <jsp:include page="inc/ParamInclude.jsp">
        <jsp:param name="loc1" value="서울 중구" />
        <jsp:param name="loc2" value="을지로~" />
    </jsp:include>
</body>
</html>