<%@ page import="membership.MemberDTO"%>
<%@ page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 로그인 폼으로부터 받은 아이디와 패스워드를 request 내장 객체를 통해 받아두기 
String userId = request.getParameter("user_id"); 
String userPwd = request.getParameter("user_pw");  

// web.xml에서 가져온 데이터베이스 연결 정보
String mysqlDriver = application.getInitParameter("MysqlDriver");
String mysqlURL = application.getInitParameter("MysqlURL");
String mysqlId = application.getInitParameter("MysqlId");
String mysqlPwd = application.getInitParameter("MysqlPwd");

// 회원 테이블 DAO를 통해 회원 정보 DTO 획득
MemberDAO dao = new MemberDAO(mysqlDriver, mysqlURL, mysqlId, mysqlPwd);
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close();

// 로그인 성공 여부에 따른 처리
if (memberDTO.getId() != null) {
    // 로그인 성공
    // 로그인에 성공했다면 session 영역에 아이디와 이름을 저장한 후 로그인 페이지로 이동 
    session.setAttribute("UserId", memberDTO.getId()); 
    session.setAttribute("UserName", memberDTO.getName()); 
    response.sendRedirect("LoginForm.jsp"); 
}
else {
    // 로그인 실패
    request.setAttribute("LoginErrMsg", "로그인 오류입니다.");  // request 객체에 로그인 오류 메시지 저장 
    request.getRequestDispatcher("LoginForm.jsp").forward(request, response); //로그인 페이지로 포워드. request 영역에 저장된 속성값은 포워드된 페이지까지 공유됨  
}
%>