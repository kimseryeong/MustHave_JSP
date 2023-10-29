<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String pValue = "방랑시인";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - param</title>
</head>
<body>
	<%--
		<jsp:param /> 
		: <jsp:include /> 나 <jsp:forward /> 를 사용할 때 다른 페이지에 값을 전달해주는 액션 태그
		: String 형식만 가능. 다른 타입의 객체를 전달할 때는 내장 객체의 영역을 이용   
	 --%>
    <jsp:useBean id="person" class="common.Person" scope="request" />
    <jsp:setProperty name="person" property="name" value="김삿갓" /> 
    <jsp:setProperty name="person" property="age" value="56" /> 
    <!-- 쿼리스트링 방식과 또 다른 매개변수 param2, 3을 전달 -->
    <jsp:forward page="ParamForward.jsp?param1=김병연"> 
        <jsp:param name="param2" value="경기도 양주" />
        <jsp:param name="param3" value="<%=pValue%>" />
    </jsp:forward> 
    
    <!-- 포워드 이전의 내용은 삭제되고 포워드된 ParamForward.jsp의 내용이 화면에 출력됨 -->
</body>
</html>