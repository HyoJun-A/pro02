<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>제품 목록</title>
<%@ include file="../head.jsp" %>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
<style>
/* TODO content */
    .page {width: 100%;}

    /* TODO content1 */
    .page .page_wrap img { width: 100%; position: relative;}
    .page .page_wrap .p_con1 { position: absolute; font-size: 36px; font-weight: 700; letter-spacing: 8px; line-height: 48px; margin-top: -300px; margin-left: 680px; color: #fff;}
    .page .page_wrap .p_con2 { position: absolute; font-size: 18px; font-weight: 300; margin-top: -220px; margin-left: 500px; color: #fff;}
    
    /* TODO content2 */
    .page_wrap4 { width: 80%; height: auto; position: relative;  margin-top: 80px;}
    .page_wrap4 .c_sub { position: relative;}
    .page_wrap4 .c_sub img { position: relative; margin-left: 50px;}
    .page_wrap4 .c_sub .c_hd { position: absolute; font-size: 36px; font-weight: 700; letter-spacing: 8px; line-height: 48px; margin-top: -350px; margin-left: 350px; color: #fff;}
    .page_wrap4 .c_sub .c_con { position: absolute; font-size: 18px; font-weight: 300; margin-top: -270px; margin-left: 350px; color: #fff;}

    .page_wrap4 .c_main {  margin-top: -320px; margin-left: 655px; margin-bottom: 50px;}
    .m_con1 { text-align: center; font-size: 20px; font-weight: 700;}
    .m_con2 { text-align: center; font-size: 13px; font-weight: 200;} 
</style>
</head>
<body>
<div class="wrap">
	<!-- header -->
	<%@ include file="../header.jsp" %>
	<%
	List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
	if(sid!=null) {
		sid = sid;
	} else {
		sid = "guest";
	}
	%>
	<!-- content -->
	<div class="content">
		<% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main class="content container">
		<% } %>
          <section class="page" id="page1">
              <div class="page_wrap">
                  <img src="../img/coffee/fimg.jpg" alt="">
                  <p class="p_con1">네스프레소 버츄오 커피</p>
                  <p class="p_con2">풍성한 크레마와 깊은 바디감의 커피를 에스프레소 부터 핸드 드립 스타일 까지 5가지 커피 스타일로 즐겨 보세요.</p>
              </div>
          </section>
          <section class="page" id="page4">
                <div class="page_wrap4">
                    <div class="c_sub">
                        <img src="../img/coffee/limg.jpg" alt="">
                        <p class="c_hd">NEW 버츄오 커피</p>
                        <p class="c_con">새로운 버츄오 커피를 만나<br>보세요.</p>
                    </div>
                    <div class="c_main">
                        <div class="album py-5">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m5.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 페스티브6<br>슬리브팩</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메 한정판 커피 3종 세트</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 64,340</small>
                                                </div>
                                            </div>
                                        </div>
                                        <% for(int i=0;i<proList.size();i++) {
										Product pro = proList.get(i);
										%>
										<div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m5.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 페스티브6<br>슬리브팩</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메 한정판 커피 3종 세트</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 64,340</small>
                                                </div>
                                            </div>
                                        </div>
									<% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
	</div>
	<!-- footer -->
	<%@ include file="../footer.jsp" %>
</div>
</body>
</html>