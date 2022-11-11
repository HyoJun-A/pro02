<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>original_coffee</title>
    <meta charset="UTF-8">
    <%@ include file="../head.jsp" %>

    <style>
    /* TODO content */
    .page {width: 100%;}

    /* TODO content1 */
    .page .page_wrap img { width: 100%; position: relative;}
    .page .page_wrap .p_con1 { position: absolute; font-size: 36px; font-weight: 700; letter-spacing: 8px; line-height: 48px; margin-top: -300px; margin-left: 680px; color: #fff;}
    .page .page_wrap .p_con2 { position: absolute; font-size: 18px; font-weight: 300; margin-top: -220px; margin-left: 500px; color: #fff; text-align: center;}

    /* TODO content2 */
    .page_wrap2 { width: 80%; height: 1000px; position: relative;  margin-top: 80px;}
    .page_wrap2 .c_sub { position: relative;}
    .page_wrap2 .c_sub img { position: relative; margin-left: 50px;}
    .page_wrap2 .c_sub .c_hd { position: absolute; font-size: 36px; font-weight: 700; letter-spacing: 8px; line-height: 48px; margin-top: -350px; margin-left: 350px; color: #fff;}
    .page_wrap2 .c_sub .c_con { position: absolute; font-size: 18px; font-weight: 300; margin-top: -270px; margin-left: 350px; color: #fff;}

    .page_wrap2 .c_main { position: absolute; margin-top: -320px; margin-left: 655px;}
    .m_con1 { text-align: center; font-size: 20px; font-weight: 700;}
    .m_con2 { text-align: center; font-size: 13px; font-weight: 200;}

    /* TODO content4 */
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
        <!-- TODO header -->
        <%@ include file="../header.jsp" %>

        <!-- TODO content -->
        <div class="content">
            <!-- content1 -->
            <section class="page" id="page1">
                <div class="page_wrap">
                    <img src="../img/coffee/fimg2.jpg" alt="">
                    <p class="p_con1">네스프레소 오리지널 커피</p>
                    <p class="p_con2">마일드한 커피 부터 강렬한 커피까지 다양한 스타일의 클래식 에스프레소 커피를 경험해보세요. 모든 커피는 우유 또는 <br>아이스와 함께 당신의 취향에 맞는 다양한 방식으로 즐길 수 있습니다.</p>
                </div>
            </section>

            <!-- content2 -->
            <section class="page" id="page2">
                <div class="page_wrap2">
                    <div class="c_sub">
                        <img src="../img/coffee/limg.jpg" alt="">
                        <p class="c_hd">추천 세트</p>
                        <p class="c_con">네스프레소에서 엄선한 인기<br>커피를 취향에 따라<br>즐겨보세요.</p>
                    </div>
                    <div class="c_main">
                        <div class="album py-5">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o1.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">베스트셀러 커피<br> 150팩</p>
                                                <p class="m_con2">가장 인기 있는 네스프레소 오리지널 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 108,850</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o2.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">커피 트래블<br>150팩</p>
                                                <p class="m_con2">다양한 세계의 커피 스타일을 담은 네스프레소 오리지널 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 111,250</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o3.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">오리지널 페스티브 6 <br> 슬리브팩</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메 한정판 커피 3종 세트</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 52,140</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o4.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">오리지널 마스터 <br> 오리진 셀렉션 5종</p>
                                                <p class="m_con2">네스프레소가 엄선한 싱글 오리진 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 38,950</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- content3 -->
            <section class="page" id="page3">
                <div class="page_wrap4">
                    <div class="c_sub">
                        <img src="../img/coffee/limg.jpg" alt="">
                        <p class="c_hd">리미티드 에디션</p>
                        <p class="c_con">한정 기간 동안만 만나볼 수<br>있는 특별한 커피를 경험해<br>보세요.</p>
                    </div>
                    <div class="c_main">
                        <div class="album py-5">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o3.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">오리지널 페스티브 6 <br> 슬리브팩</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메 한정판 커피 3종 세트</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 52,140</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o5.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 에스프레소</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 과일향 &곡물향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 8,690</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o6.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 구르망</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 헤이즐넛향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 8,690</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/o7.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 프뤼테</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 라즈베리향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">8,690</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
        </div>

        <!-- TODO footer -->
        <%@ include file="../footer.jsp" %>
    </div>
</body>
</html>