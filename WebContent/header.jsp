<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>
<header class="hd">
    <div class="hd_top">
        <a href="<%=request.getContextPath() %>/index.jsp" class="logo"><img src="<%=request.getContextPath() %>/img/logo/logo-white.svg" alt="로고"></a>
        <nav class="tnb">
			<% if(sid != null){ %>
			<a href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
			<a href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
				<% if(sid.equals("admin")) { %>
				<a href="<%=request.getContextPath() %>/admin/index.jsp">관리자 페이지로</a>
				<% } else { %>
				<a href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl">구매내역</a>
				<a href="<%=request.getContextPath() %>/GetMemberCartListCtrl">장바구니</a>
				<% } %>
        	<%} else {%>
        	<a href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
            <a href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
        	<%} %>
        </nav>
    </div>
    <div class="hd_bottom">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">커피</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<%=request.getContextPath() %>/product/vertuo.jsp">버츄오 커피</a>
                            <a class="dropdown-item" href="<%=request.getContextPath() %>/product/original.jsp">오리지널 커피</a>
                            <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductListCtrl">New Coffee</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">머신</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<%=request.getContextPath() %>/machines/mvertuo.jsp">버츄오 머신</a>
                            <a class="dropdown-item" href="<%=request.getContextPath() %>/machines/moriginal.jsp">오리지널 머신</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">액세서리</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">버츄오 액세서리</a>
                            <a class="dropdown-item" href="#">오리지널 액세서리</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">지속가능성&캡슐재활용</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">네스프레소의 손길</a>
                            <a class="dropdown-item" href="#">재활용</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown"
                            aria-expanded="false">고객서비스</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">FAQ</a>
                            <a class="dropdown-item" href="#">공지사항</a>
                            <a class="dropdown-item" href="#">1:1문의</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>