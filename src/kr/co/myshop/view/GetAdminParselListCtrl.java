package kr.co.myshop.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;
import kr.co.myshop.vo.Parsel;

@WebServlet("/GetAdminParselListCtrl")
public class GetAdminParselListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String USER = "root";
	private final static String PASS = "a1234";
	String sql = "";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "select * from parsel order by parselstate asc, parselno asc";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			//결과를 데이터베이스로 부터 받아서 리스트로 저장
			List<Parsel> parList = new ArrayList<Parsel>();
			while(rs.next()){
				Parsel vo = new Parsel();
				vo.setParselNo(rs.getInt("parselno"));
				vo.setParselAddr(rs.getString("parseladdr"));
				vo.setCusTel(rs.getString("custel"));
				vo.setParselCompany(rs.getString("parselcompany"));
				vo.setParselTel(rs.getString("parseltel"));
				vo.setParselState(rs.getInt("parselstate"));
				vo.setBaleCode(rs.getString("balecode"));
				parList.add(vo);
			}
			request.setAttribute("parList", parList);
			
			//parsel/parselList.jsp 에 포워딩
			RequestDispatcher view = request.getRequestDispatcher("./parsel/parselList.jsp");
			view.forward(request, response);
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
