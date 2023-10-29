<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>액션 태그 - UseBean</title></head>
<body>
    <h3>액션 태그로 폼값 한 번에 받기</h3>
    <!--
    	property 속성에 와일드카드(*)를 사용해보기 
    	=> form 태그 통해 전송되는 몯느 폼값을 한번에 자바빈즈에 입력 가능 
     -->
    <jsp:useBean id="person" class="common.Person" />  
    <jsp:setProperty property="*" name="person" />  
    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name" /></li>  
        <li>나이 : <jsp:getProperty name="person" property="age" /></li> 
    </ul>
</body>
</html>