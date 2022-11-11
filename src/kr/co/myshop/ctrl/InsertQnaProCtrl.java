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

@WebServlet("/InsertQnaProCtrl.do")
public class InsertQnaProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String sql = "";
	int cnt = 0;
	ResultSet rs = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		String sec = request.getParameter("sec");
		int lev = Integer.parseInt(request.getParameter("lev"));
		int no = 0;
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			Connection con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			sql = "insert into qnaa(title, content, author, sec, lev) values (?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title); 
			pstmt.setString(2, content);
			pstmt.setString(3, author);
			pstmt.setString(4, sec);
			pstmt.setInt(5, lev);
			cnt = pstmt.executeUpdate();
			pstmt.close();
			
			sql = "select no from qnaa order by resdate desc limit 1";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				no = rs.getInt("no");
			}
			rs.close();
			pstmt.close();
			System.out.println("추가 번호 : "+no);
			
			sql = "update qnaa set parno=? where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			pstmt.executeUpdate();
			pstmt.close();
			con.close();			
			//결과를 데이터베이스로 부터 받아서 VO에 저장
			if(cnt>=1){
				response.sendRedirect("GetQnaListCtrl.do");
			} else {
				response.sendRedirect("./qna/qnaWrite.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}