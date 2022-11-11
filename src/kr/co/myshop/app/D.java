package kr.co.myshop.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//DB관련 변수 선언 클래스
public class D {
	public final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	public final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	public final static String DBID = "root";
	public final static String DBPW = "a1234";
	
	public  static Connection con = null;
	public  static PreparedStatement pstmt = null;
	public  static ResultSet rs = null;
}
