<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pAttr", "김유신"); 
request.setAttribute("rAttr", "계백"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - forward</title>
</head>
<body>
	<!-- 
		forward : 현재 페이지에 들어온 요청을 다음 페이지로 보내는 기능 
		url이 변경되지 않고, 버터와 밀접하여 buffer="none" 설정 시 포워드 사용 불가 
		다음 페이지로 요청을 전달하는 것이 목적이므로 이동된 페이지와 request 영역을 공유 
	 -->
    <h2>액션 태그를 이용한 포워딩</h2> 
    <jsp:forward page="/07ActionTag/ForwardSub.jsp" /> 
    <%-- 
   		<jsp:forward /> 태그를 만나기까지의 모든 출력을 제거하고 포워드할 페이지로 요청 전달
          => h2태그의 text는 출력되지 않을것 
             *액션 태그 주석처리는 jsp 주석 형식으로 작성할 것 
         --%>
</body>
</html>