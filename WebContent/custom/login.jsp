<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <meta charset="UTF-8">
   	<%@ include file="../head.jsp" %>
    <style>
    /* TODO content */
    .page {width: 100%;}
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee;}
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:50vh;  margin-top: 50px;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 48px;  text-align: center;}
    .frm_tb td { width:300px; height: 48px; }

    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#f36; font-size:16px; text-indent:0.5em; }
    .in_btn:first-child { margin-left: 70px;}
    .in_btn { display:block; background-color:#333; min-width:100px; height: 32px; 
    line-height: 32px; border-radius:20px; float:left; margin-left:30px; margin-right:10px; cursor:pointer; }
    .in_btn:hover { background-color: #111; color: #fff;}
    .a_btn { display:block; background-color:#333; min-width:100px; height: 32px; 
    line-height: 32px; border-radius:20px; float:left; margin-left:30px; margin-right:10px; cursor:pointer; text-decoration: none; color: #fff; text-align: center;} 
    .a_btn:hover { background-color: #111; color: #fff;}

    /* ul > li 를 테이블 처럼 출력 */
    .frm_tb { display:table; border: 2px solid #111; height: 200px;}
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:200px; }
    .frm_tb .td2 { width:400px; }
    </style>
</head>
<body>
    <div class="wrap">
        <!-- TODO header -->
        <%@ include file="../header.jsp" %>
        <!-- TODO content -->
        <div class="content">
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">로그인</h2>
                    <div class="form_fr">
                        <form name="frm1" id="frm1" action="<%=request.getContextPath() %>/CustomLoginCtrl" method="post">
                            <table class="frm_tb">
                                <tbody>
                                    <tr>
                                        <th><label for="id">아이디</label></th>
                                        <td>
                                            <input type="text" id="cusId" name="cusId" class="in_dt" placeholder="아이디 입력" required autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="id">비밀번호</label></th>
                                        <td>
                                            <input type="password" id="cusPw" name="cusPw" placeholder="비밀번호 입력" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button type="submit" class="in_btn">로그인</button>
                                            <button type="reset" class="in_btn">취소</button>
                                            <a href="<%=request.getContextPath() %>/custom/membership.jsp" class="a_btn">회원가입</a>  
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </section>
        </div>

        <!-- TODO footer -->
        <%@ include file="../footer.jsp" %>
    </div>
</body>
</html>