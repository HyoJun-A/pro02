<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <%@ include file="../head.jsp" %>
</head>
<style>
	.wrap { 
		width: 1200px;
		margin: 0 auto;		
	}
	.wrap h2{
		text-align: center;
		margin-top: 30px;
		margin-bottom: 30px;
	}
	.btn{
		max-width: 150px;
	}
	.in_btn1{
		background-color: #0069d9;
		border: 2px solid #0062cc;
		border-radius: 5px;
		pading: 3px 3px;
		color: #fff;
		display: block;
		float: left;
		margin-left: 30px;
	}
	
	.f_id{
		width: 700px;
		float: left;
		display: block;
	}
</style>

<body>
    <%@ include file="../header.jsp" %>
        <div class="wrap">
            <h2>회원 가입</h2>
            <form action="<%=request.getContextPath() %>/InsertCustomCtrl" method="post" id="frm1" name="frm1" class="frm1"
                onsubmit="return joinCheck(this)">
                <table class="table">
                    <tbody>
                        <tr>
                            <th>아이디</th>
                            <td class="f_td">
                                <input type="text" id="cusId" name="cusId" value="" class="form-control f_id" placeholder="아이디 입력" autofocus
                                    required>
                                <button type="button" class="in_btn1 btn btn-primary" id="id_ck" onclick="idCheck()">아이디 중복 확인</button>
                                <input type="hidden" name="idck" id="idck" value="false">
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td>
                                <input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호 입력" required><br>
                                <input type="password" id="cusPw2" name="cusPw2" class="form-control" placeholder="비밀번호 확인" required>
                            </td>
                        </tr>
                        <tr>
                            <th>이름</th>
                            <td><input type="text" id="cusName" name="cusName" class="form-control" placeholder="이름입력" required></td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td><input type="text" name="address1" id="address1" placeholder="기본 주소 입력"
                                    class="form-control" required /><br>
                                <input type="text" name="address2" id="address2" placeholder="상세 주소 입력"
                                    class="form-control" required /><br>
                                <input type="text" name="postcode" id="postcode"
                                    style="width:160px;float:left;margin-right:20px;" placeholder="우편번호"
                                    class="form-control">
                                <button id="post_btn" onclick="findAddr()" class="btn btn-primary">우편번호 검색</button>
                            </td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td><input type="text" id="tel" name="tel" class="form-control" placeholder="전화번호 입력 EX)000-0000-0000" required>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="가입" class="btn btn-primary"></td>
                            <td><input type="reset" value="취소" class="btn btn-primary"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <script>
                function idCheck(f) {
                    var id = document.frm1.cusId.value;
                    if (id != "") {
                        var win = window.open("idCheck.jsp?id=" + document.frm1.cusId.value, "idCheck", "width=400, height=300");
                    } else {
                        alert("아이디를 입력해 주세요")
                    }
                    if (f.idck.value != "true") {
                        alert("아이디 중복 체크를 하지 않으셨습니다.");
                        return false;
                    }
                }
                function joinCheck(t) {
                    if (t.cusPw1.value != t.cusPw2.value) {
                        alert("비밀번호를 일치 시켜 주세요")
                    }
                }

            </script>
            <script>
                function findAddr() {
                    new daum.Postcode({
                        oncomplete: function (data) {
                            console.log(data);
                            var roadAddr = data.roadAddress;
                            var jibunAddr = data.jibunAddress;
                            document.getElementById("postcode").value = data.zonecode;
                            if (roadAddr !== '') {
                                document.getElementById("address1").value = roadAddr;
                            } else if (jibunAddr !== '') {
                                document.getElementById("address1").value = jibunAddr;
                            }
                            document.getElementById("address2").focus();
                        }
                    }).open();
                }
            </script>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        </div>

        <%@ include file="../footer.jsp" %>

</body>

</html>