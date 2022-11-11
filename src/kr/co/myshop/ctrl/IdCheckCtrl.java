package kr.co.myshop.ctrl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.app.D;

@WebServlet("/IdCheckCtrl")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String sql = "";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cusId = request.getParameter("cusId");
		try {
			//데이터베이스 연결
			Class.forName(D.DRIVER);
			sql = "select * from custom where cusid=?";
			Connection con = DriverManager.getConnection(D.URL, D.DBID, D.DBPW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cusId);
			ResultSet rs = pstmt.executeQuery();
			
			PrintWriter out = response.getWriter();
			String script = "<script>";
			script = script + "function apply(fid){";
			script = script + "opener.document.frm1.cusId.value = fid;";
			script = script + "opener.document.frm1.idck.value = 'yes';";
			script = script + "window.close();";
			script = script + "}</script>";
			out.println(script);
			if(rs.next()){
				out.println("<h3>해당 아이디가 이미 존재합니다.</h3>");
				out.println("<button onclick='javascript:window.close()'>닫기</button>");
			} else {
				out.println("<h3>사용 가능한 아이디 입니다.</h3>");
				out.println("<a href='javascript:apply(\""+cusId+"\")'>"+cusId+"[적용]</a>");
				out.println("<p>적용을 누르면, 입력하신 아이디를 사용할 수 있습니다.</p>");
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}