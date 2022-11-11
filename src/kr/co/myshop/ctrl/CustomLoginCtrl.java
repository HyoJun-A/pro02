package kr.co.myshop.ctrl;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.myshop.app.D;

import com.crypto.util.SHA256;

@WebServlet("/CustomLoginCtrl")
public class CustomLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String sql = "";
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cusId = request.getParameter("cusId");
		String cus = request.getParameter("cusPw");
		String cusPw = "";
		try {
			cusPw = SHA256.encrypt(cus);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			sql = "select * from custom where cusid=? and cuspw=?";
			D.con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			D.con.setAutoCommit(false);
			D.pstmt = D.con.prepareStatement(sql);
			D.rs = null;
			D.pstmt.setString(1, cusId);
			D.pstmt.setString(2, cusPw);
			D.rs = D.pstmt.executeQuery();
						
			HttpSession session = request.getSession();
			if(D.rs.next()){
				//로그인이 성공하면, 방문횟수를 증가시키고, 로그인 포인트 5점을 더 증가시킴
				sql = "update custom set visited=visited+1, point=point+5 where cusid=?";
				D.pstmt = D.con.prepareStatement(sql);
				D.pstmt.setString(1, cusId);
				D.pstmt.executeUpdate();
				D.con.commit();
				D.con.setAutoCommit(true);
				//세션을 발생시키고, 인덱스로 이동
				session.setAttribute("sid", cusId);
				session.setAttribute("sname", D.rs.getString("cusname"));
				response.sendRedirect("index.jsp");
			} else {
				//로그인 페이지로 이동
				response.sendRedirect("<%=request.getContextPath() %>/custom/login.jsp");
			}

			D.pstmt.close();
			D.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
