package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.app.D;
import kr.co.myshop.vo.Notice;

@WebServlet("/InsertBoardProCtrl")
public class InsertBoardProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String sql = "";
	int cnt = 0;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			sql = "insert into notice(title, content, author) values (?,?,?)";
			Connection con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title); 
			pstmt.setString(2, content);
			pstmt.setString(3, author);
			cnt = pstmt.executeUpdate();
			//결과를 데이터베이스로 부터 받아서 VO에 저장
			if(cnt>=1){
				response.sendRedirect("GetBoardListCtrl");
			} else {
				response.sendRedirect("./notice/insertBoard.jsp");
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}