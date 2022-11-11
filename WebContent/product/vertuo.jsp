<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vertuo_coffee</title>
    <meta charset="UTF-8">
    <%@ include file="../head.jsp" %>
    <style>
    /* TODO content */
    .page {width: 100%;}

    /* TODO content1 */
    .page .page_wrap img { width: 100%; position: relative;}
    .page .page_wrap .p_con1 { position: absolute; font-size: 36px; font-weight: 700; letter-spacing: 8px; line-height: 48px; margin-top: -300px; margin-left: 680px; color: #fff;}
    .page .page_wrap .p_con2 { position: absolute; font-size: 18px; font-weight: 300; margin-top: -220px; margin-left: 500px; color: #fff;}

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
                    <img src="../img/coffee/fimg.jpg" alt="">
                    <p class="p_con1">네스프레소 버츄오 커피</p>
                    <p class="p_con2">풍성한 크레마와 깊은 바디감의 커피를 에스프레소 부터 핸드 드립 스타일 까지 5가지 커피 스타일로 즐겨 보세요.</p>
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
                                                src="../img/coffee/m1.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 디스커버리<br> 셀렉션 100팩</p>
                                                <p class="m_con2">다양한 커피 스타일을 한번에 만나 볼 수 있는 버츄오 커피 팩</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 88,800</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m2.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 페스티브 6<br> 슬리브팩</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메 한정판 커피 3종 세트</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 64,340</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m3.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 마일드<br>셀렉션 6종 (60캡슐)</p>
                                                <p class="m_con2">네스프레소가 엄선한 부드러운 마일드 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 53,440</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m4.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">버츄오 인텐스 팩</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 50,740</small>
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
                <div class="page_wrap2">
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
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m6.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 더블<br>에스프레소</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 과일향 &곡물향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,390</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m7.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 구르망</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 헤이즐넛향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,890</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m8.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 프뤼테</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 라즈베리향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,890</small>
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
            <!-- content4 -->
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
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m6.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 더블<br>에스프레소</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 과일향 &곡물향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,390</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m7.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 <br>구르망</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 헤이즐넛향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,890</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        
                                    <div class="col-md-4">
                                        <div class="card mb-4 shadow-sm">
                                            <img class="bd-placeholder-img card-img-top" width="100%" height="225"
                                                src="../img/coffee/m8.png" role="img" aria-label="Placeholder: Thumbnail"
                                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                            </img>
                                            <div class="card-body">
                                                <p class="m_con1">인피니망 프뤼테</p>
                                                <p class="m_con2">파티세리 명장 피에르 에르메의 라즈베리향 커피</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-outline-secondary">장바구니 담기</button>
                                                    </div>
                                                    <small class="text-muted">₩ 10,890</small>
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