<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>액션 태그 - UseBean</title></head>
<body>
    <h2>액션 태그로 폼값 한 번에 받기</h2> 
    <!--
    	property 속성에 와일드카드(*)를 사용해보기 
    	=> form 태그 통해 전송되는 몯느 폼갑시을 한번에 자바빈즈에 입력 가능 
     -->
    <form method="post" action="UseBeanAction.jsp"> 
    	<!-- form 값은 name 속성에 지정한 이름으로 전송됨  -->
        이름 : <input type="text" name="name" /> <br /> 
        나이 : <input type="text" name="age" /> <br /> 
        <input type="submit" value="폼값 전송" />
    </form>
</body>
</html>