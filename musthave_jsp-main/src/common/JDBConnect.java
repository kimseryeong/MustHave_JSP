package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con; //DB와 연결 담당 
	public Statement stmt; //인파라미터가 없는 정적 쿼리문 실행할 때 사용 
	public PreparedStatement psmt; //인파라미터가 있는 동적 쿼리문 실행할 때 사용 
	//인파라미터 : 쿼리문 작성 시 매개변수로 전달된 값을 설정할 때 사용. ?로 표현  
	public ResultSet rs; //쿼리문의 결과를 저장할 때 사용 
	

    // 기본 생성자 
	// -> 보통 접속 테스트 용도로 사용 
	//   (서버 이전 등의 이유로 접속 정보가 변경되면 클래스 수정 후 다시 컴파일 해주어야 하는 불편함 방지) 
	public JDBConnect() {
		try {
			
			//JDBC 드라이버 로드
			Class.forName("com.mysql.jdbc.Driver");
			
			//DB연결
			String url = "jdbc:mysql://localhost:3306/musthaveJsp"; 
			//Mysql 프로토콜 주소@hostname(ip):port/sid 
			
			String id = "musthave"; //호스트명 
			String pw = "1234"; // 
			
			con = DriverManager.getConnection(url, id, pw);
			
			System.out.println("DB연결 성공(기본 생성자)");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

    // 두 번째 생성자
    public JDBConnect(String driver, String url, String id, String pwd) {
        try {
            // JDBC 드라이버 로드
        	//web.xml에 선언한 드라이버 
            Class.forName(driver);  

            // DB에 연결
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 1)");
        }
        catch (Exception e) {            
            e.printStackTrace();
        }
    }

    // 세 번째 생성자
    public JDBConnect(ServletContext application) {
    	//ServletContext application 을 통해 web.xml로부터 접속 정보 가져오기  
        try {
            // JDBC 드라이버 로드
            String driver = application.getInitParameter("MysqlDriver"); 
            Class.forName(driver); 

            // DB에 연결
            String url = application.getInitParameter("MysqlURL"); 
            String id = application.getInitParameter("MysqlId");
            String pwd = application.getInitParameter("MysqlPwd");
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 2)"); 
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 연결 해제(자원 반납)
    public void close() { 
        try {            
            if (rs != null) rs.close(); 
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close(); 

            System.out.println("JDBC 자원 해제");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}