package kr.co.myshop.view;

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
import kr.co.myshop.vo.Custom;

@WebServlet("/GetCustomDetailCtrl")
public class GetCustomDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cusId = request.getParameter("cusId");
		String sql = "";
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			sql = "select * from custom where cusid=?";
			Connection con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = null;
			pstmt.setString(1, cusId);
			rs = pstmt.executeQuery();
			String cusPw = "";
			String key = "%02x";
			String compPw = "";
			Custom vo = new Custom();
			
			if(rs.next()){
				vo.setCusId(rs.getString("cusid"));
				cusPw = rs.getString("cuspw");
				//compPw = AES256.decryptAES256(cusPw, key);
				vo.setCusPw(cusPw);
				vo.setCusName(rs.getString("cusname"));
				vo.setAddress(rs.getString("address"));
				vo.setTel(rs.getString("tel"));
				vo.setRegDate(rs.getString("regdate"));
				vo.setPoint(rs.getInt("point"));
				vo.setLevel(rs.getInt("level"));
				vo.setVisited(rs.getInt("visited"));
			} else {
				response.sendRedirect("./custom/login.jsp");
			}
			request.setAttribute("custom", vo);
			
			RequestDispatcher view = request.getRequestDispatcher("./admin/customDetail.jsp");
			view.forward(request, response);

			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}