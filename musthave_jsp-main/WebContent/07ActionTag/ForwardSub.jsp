<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - forward</title>
</head>
<body>
    <h2>포워드 결과</h2>
    <ul>
    	<!-- 
    	pageContext는 페이지 별로 고유하게 만들어지는 객체 
    	포워드된 페이지는 이전 페이지와 서로 다른 페이지이므로 page 영역의 속성은 공유되지 않음 
    	(== null값)
    	포워드는 요청을 전달하므로 request 영역의 속성은 전달되었음 
    	-->
        <li>
            page 영역 : <%= pageContext.getAttribute("pAttr") %>
        </li>
        <li>
            request 영역 : <%= request.getAttribute("rAttr") %> 
        </li>
    </ul>
</body>
</html>