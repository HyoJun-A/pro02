<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NESPRESSO</title>
  <meta charset="UTF-8">
  <%@ include file="head.jsp" %>
  <style>
    /* TODO content */
    .page {
      width: 100%;
    }

    /* TODO content1 */
    .page .page_wrap img {
      width: 100%;
      position: relative;
    }

    .page .page_wrap .p_con1 {
      position: absolute;
      font-size: 36px;
      font-weight: 300;
      letter-spacing: 8px;
      line-height: 48px;
      margin-top: -390px;
      margin-left: 430px;
    }

    .page .page_wrap .p_con2 {
      position: absolute;
      font-size: 18px;
      font-weight: 300;
      letter-spacing: 8px;
      margin-top: -220px;
      margin-left: 430px;
    }

    /* TODO content2 */
    .page .page_wrap img {
      width: 100%;
      position: relative;
    }

    .page .page_wrap .p_con3 {
      position: absolute;
      font-size: 45px;
      font-weight: 300;
      letter-spacing: 8px;
      line-height: 48px;
      margin-top: -300px;
      margin-left: 430px;
      color: #FFF;
    }

    .page .page_wrap .p_con4 {
      position: absolute;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 8px;
      margin-top: -240px;
      margin-left: 430px;
      color: #FFF;
    }

    /* TODO content3 */
    .page_wrap3 {
      width: 80%;
      height: 500px;
      margin: 0 auto;
      margin-top: 30px;
      display: block;
      clear: both;
    }

    .page_wrap3 .pic1 {
      width: 50%;
      float: left;
      position: relative;
    }

    .page_wrap3 .pic1 img {
      width: 550px;
      margin-left: 105px;
    }

    .page_wrap3 .pic1 .p_con4 {
      position: absolute;
      text-align: center;
      font-size: 43px;
      font-weight: 300;
      letter-spacing: 8px;
      line-height: 48px;
      margin-top: -430px;
      margin-left: 150px;
      color: #FFF;
    }

    .page_wrap3 .pic1 .p_con5 {
      position: absolute;
      text-align: center;
      font-size: 23px;
      font-weight: 300;
      margin-top: -300px;
      margin-left: 240px;
      color: #FFF;
    }

    .page_wrap3 .pic2 {
      width: 50%;
      float: right;
    }

    .page_wrap3 .pic2 img {
      width: 550px;
      margin-right: 105px;
    }

    .page_wrap3 .pic2 .p_con6 {
      position: absolute;
      text-align: center;
      font-size: 43px;
      font-weight: 300;
      letter-spacing: 8px;
      line-height: 48px;
      margin-top: -430px;
      margin-left: 100px;
    }

    .page_wrap3 .pic2 .p_con7 {
      position: absolute;
      text-align: center;
      font-size: 23px;
      font-weight: 300;
      margin-top: -350px;
      margin-left: 150px;
    }

    /* TODO content4 */
    .page_wrap4 {
      width: 69%;
      height: 350px;
      margin: 0 auto;
      margin-top: 30px;
      display: block;
      clear: both;
    }

    .page_wrap4 .pic3 {
      width: 100%;
      position: relative;
    }

    .page_wrap4 .pic3 img {
      width: 1210px;
      height: auto;
    }

    .page_wrap4 .pic3 .p_con8 {
      position: absolute;
      text-align: right;
      font-size: 24px;
      font-weight: 800;
      margin-top: -250px;
      margin-left: 900px;
    }

    .page_wrap4 .pic3 .p_con9 {
      position: absolute;
      text-align: right;
      font-size: 16px;
      font-weight: 400;
      margin-top: -170px;
      margin-left: 810px;
    }

    .page_wrap4 .pic3 .p_con10 {
      position: absolute;
      text-align: right;
      font-size: 16px;
      font-weight: 700;
      margin-top: -100px;
      margin-left: 1050px;
      border: 1px solid #111;
      border-radius: 2px;
      padding: 8px 30px;
    }

    .page_wrap4 .pic3 .p_con10:hover {
      background-color: #fff;
      color: #111;
    }

    /* TODO content5 */
    .page_wrap5 {
      width: 1200px;
      height: 500px;
      margin: 0 auto;
      display: block;
      clear: both;
      margin-left: 300px;
    }

    .page_wrap5 .pic3 h2 {
      text-align: center;
      display: flex;
    }

    .page_wrap5 .pic3 h2::after {
      content: "";
      flex-grow: 1;
      margin: 15px 16px;
      background-color: rgba(0, 0, 0, 0.35);
      height: 1px;
      font-size: 0px;
      line-height: 0px;
    }

    .page_wrap5 .pic3 h2::before {
      content: "";
      flex-grow: 1;
      margin: 15px 16px;
      background-color: rgba(0, 0, 0, 0.35);
      height: 1px;
      font-size: 0px;
      line-height: 0px;
    }

    /* TODO content6 */
    .page_wrap6 {
      width: 1200px;
      height: 500px;
      margin: 0 auto;
      display: block;
      clear: both;
      margin-left: 300px;
      clear: both;
      display: block;
    }

    .page_wrap6 .pic10 {
      width: 30%;
      float: left;
      position: relative;
      margin-right: 5%;
    }

    .page_wrap6 .pic10 img {
      width: 100%;
    }

    .page_wrap6 .pic10 .con1 {
      position: absolute;
      text-align: center;
      font-size: 36px;
      font-weight: 300;
      margin-top: -450px;
      margin-left: 50px;
      color: #fff;
    }

    .page_wrap6 .pic10 .con2 {
      position: absolute;
      text-align: center;
      font-size: 18px;
      font-weight: 300;
      margin-top: -320px;
      margin-left: 80px;
      color: #fff;
    }


    .page_wrap6 .pic11 {
      width: 30%;
      float: left;
      position: relative;
      margin-right: 5%;
    }

    .page_wrap6 .pic11 img {
      width: 100%;
    }

    .page_wrap6 .pic11 .con1 {
      position: absolute;
      text-align: center;
      font-size: 36px;
      font-weight: 300;
      margin-top: -450px;
      margin-left: 87px;
      color: #fff;
    }

    .page_wrap6 .pic11 .con2 {
      position: absolute;
      text-align: center;
      font-size: 18px;
      font-weight: 300;
      margin-top: -320px;
      margin-left: 70px;
      color: #fff;
    }

    .page_wrap6 .pic12 {
      width: 30%;
      float: right;
      position: relative;
    }

    .page_wrap6 .pic12 img {
      width: 100%;
    }

    .page_wrap6 .pic12 .con1 {
      position: absolute;
      text-align: center;
      font-size: 36px;
      font-weight: 300;
      margin-top: -450px;
      margin-left: 87px;
      color: #fff;
    }

    .page_wrap6 .pic12 .con2 {
      position: absolute;
      text-align: center;
      font-size: 18px;
      font-weight: 300;
      margin-top: -320px;
      margin-left: 70px;
      color: #fff;
    }
  </style>
</head>

<body>
  <div class="wrap">
    <!-- TODO header -->
    <%@ include file="header.jsp" %>
    <!-- TODO content -->
    <div class="content">
      <section class="page" id="page1">
        <div class="page_wrap">
          <img src="<%=request.getContextPath() %>/img/index/i1.png" alt="con1">
          <p class="p_con1">버츄오 머신 최대 16만원<br>혜택 & 에코 기프트 3종<br> 세트증정*</p>
          <p class="p_con2">기간: 11월 1일 ~ 11월 30일<br>* 재고 소진 시 조기 종료</p>
        </div>
      </section>
      <section class="page" id="page2">
        <div class="page_wrap">
          <img src="<%=request.getContextPath() %>/img/index/i2.png" alt="con2">
          <p class="p_con3">FESTIVE</p>
          <p class="p_con4">사랑하는 사람들에게<br>황홀한 순간을 선물하세요</p>
        </div>
      </section>
      <section class="page" id="page3">
        <div class="page_wrap3">
          <div class="pic1">
            <img src="<%=request.getContextPath() %>/img/index/i3.jfif" alt="con3">
            <p class="p_con4">커피 한 잔이 이끄는 <br>마법같은 시간</p>
            <p class="p_con5">사랑하는 사람들에게<br>황홀한 순간을 선물하세요</p>
          </div>
          <div class="pic2">
            <img src="<%=request.getContextPath() %>/img/index/i4.jfif" alt="con4">
            <p class="p_con6">최대 3만원 혜택</p>
            <p class="p_con7">오리지널 머신 구매 시<br>기간: 11월 1일 ~ 12월 31일</p>
          </div>
        </div>
      </section>
      <section class="page" id="page4">
        <div class="page_wrap4">
          <div class="pic3">
            <img src="<%=request.getContextPath() %>/img/index/i5.png" alt="con5">
            <p class="p_con8">네스프레소 현대백화점<br>판교점 부티크 리뉴얼 오픈</p>
            <p class="p_con9">네스프레소 부티크에서 최상의 커피를 경험해 보세요</p>
            <p class="p_con10">매장찾기</p>
          </div>
        </div>
      </section>
      <section class="page" id="page5">
        <div class="page_wrap5">
          <div class="pic3">
            <h2>네스프레소 추천 액세서리와 스낵</h2>
            <div class="album py-5 bg-light">
              <div class="container">
                <div class="row">
                  <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                      <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="<%=request.getContextPath() %>/img/index/i7.png"
                        role="img" aria-label="Placeholder: Thumbnail">
                      <div class="card-body">
                        <p class="card-text">버츄오 카라프 세트</p>
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="btn-group">
                            <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                          </div>
                          <small class="text-muted">70,000원</small>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                      <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="<%=request.getContextPath() %>/img/index/i6.png"
                        role="img" aria-label="Placeholder: Thumbnail">
                      <div class="card-body">
                        <p class="card-text">루메 미아 디스펜서</p>
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="btn-group">
                            <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                          </div>
                          <small class="text-muted">46,000원</small>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                      <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="<%=request.getContextPath() %>/img/index/i8.png"
                        role="img" aria-label="Placeholder: Thumbnail">
                      <div class="card-body">
                        <p class="card-text">버츄오 머그컵 세트</p>
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="btn-group">
                            <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                          </div>
                          <small class="text-muted">39,000원</small>
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
      <section class="page" id="page6">
        <div class="page_wrap6">
          <div class="pic10">
            <img src="<%=request.getContextPath() %>/img/index/i12.jfif" alt="">
            <p class="con1">홀리데이 캘린더 <br>특별 혜택</p>
            <p class="con2">커피 80캡슐 이상 구매 시<br>20% 할인 혜택</p>
          </div>
          <div class="pic11">
            <img src="<%=request.getContextPath() %>/img/index/i11.jfif" alt="">
            <p class="con1">에어로치노 <br>42만원 할인</p>
            <p class="con2">특별한 가격으로 만나보세요</p>
          </div>
          <div class="pic12">
            <img src="<%=request.getContextPath() %>/img/index/i10.jpg" alt="">
            <p class="con1">커피 한 잔의<br>선한 영향력</p>
            <p class="con2">재활용 참여에 함께 해주세요</p>
          </div>
        </div>
      </section>
    </div>
    <!-- TODO footer -->
    <%@ include file="footer.jsp" %>
  </div>
</body>

</html>
