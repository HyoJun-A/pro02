<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../head.jsp" %>
<style>
	.title { padding-top:36px; padding-bottom:20px; }
	#content_row { min-height:calc(100vh - 84px); }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="row" id="content_row">
    <%@ include file="admin_sidebar.jsp" %>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
    </main>
  </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>