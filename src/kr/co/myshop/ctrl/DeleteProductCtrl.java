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

@WebServlet("/DeleteProductCtrl")
public class DeleteProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int proNo = Integer.parseInt(request.getParameter("proNo"));
		String sql = "";
		int cnt = 0;
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			sql = "delete from product where prono=?";
			Connection con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, proNo);
			cnt = pstmt.executeUpdate();
			
			if(cnt>=1){
				response.sendRedirect("GetProductListCtrl");
			} else {
				response.sendRedirect("GetProductDetailCtrl?proNo="+proNo);
			}

			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
}
