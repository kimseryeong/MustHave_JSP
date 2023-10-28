<%@ page import="common.JDBConnect"%> 
<%@ page import="common.DBConnPool"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
    <h2>JDBC 테스트 1</h2>
    <%
    JDBConnect jdbc1 = new JDBConnect(); 
    System.out.println("jdbc1: " + jdbc1);
    jdbc1.close(); 
    %>
    
    <h2>JDBC 테스트 2</h2>
    <%
    /* getInitParameter 를 통해 web.xml의 컨텍스트 초기화 매개변수 가져오기 */
    /* 이 방법 사용 시 jsp에서 동일 코드 반복해주어야 하는 불편 발생  */
    String driver = application.getInitParameter("MysqlDriver"); 
    String url = application.getInitParameter("MysqlURL");
    String id = application.getInitParameter("MysqlId");
    String pwd = application.getInitParameter("MysqlPwd");

    JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd); 
    jdbc2.close();
    %>
    
    <h2>JDBC 테스트 3</h2>
    <%
    JDBConnect jdbc3 = new JDBConnect(application); //application 내장객체를 인수로 전달 
    jdbc3.close();
    %>
    
    <h2>커넥션 풀 테스트</h2>
    <%
    DBConnPool pool = new DBConnPool();
    pool.close();
    %> 
</body>
</html>