<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="./images/favicon.ico">
    <style>

        body {
            background-color: #F8F8F8;
        }
        #top {
            /* border: 1px solid black; */
            width: 900px;
            height: 100px;
            margin: 50px auto;
            margin-top: 20px;
        }
        #topleft {
            display: inline-block;
            /* border: 1px solid white; */
            width: 100px;
            height: 65px;
            background-image: url("./images//title.png");
            background-repeat: no-repeat;
            background-position: center center;
            cursor: pointer;
        }
        #topleft + h1 {
            font-size: 25px;
            font-weight: bold;
            display: inline-block;
            position: relative;
            top: -10px;
            left: 10px;
            color: #333;
        }
        #middle {
            border: 1px solid #C8C8C8;
            border-radius: 10px;
            background-color: white;
            width: 900px;
            height: 1100px;
            margin: 0 auto;
            margin-top: -50px;
            margin-bottom: 100px;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 50px;
        }
        #menu {
            border-bottom: 1px solid #EBEBEB;
        }
        #menu > ul {
            list-style: none;
            padding: 0;
            text-align: center;
            margin-bottom: 0;
        }
        #menu > ul > li {
            display: inline-block;
            font-size: 17px;
            font-weight: bold;
            padding: 15px 0px 10px 0px;
            cursor: pointer;
        }
        #menu > ul > li:first-child {
            margin-right: 40px;
            color: #196AB3;
            border-bottom: 3px solid #196AB3;
        }
        #info {
            /* border: 1px solid black; */
            margin: 70px auto;
            width: 85%;
            height: 780px;
            margin-bottom: 0;
        }
        #info > h2 {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        #tbl1 {
            border-top: 1px solid #D8D8D8;
            border-bottom: 1px solid #D8D8D8;
            width: 100%;
            margin-top: 15px;
        }
        #tbl1 th {
            width: 20%;
            border-right: 1px solid #EBEBEB;
            border-bottom: 1px solid #EBEBEB;
            padding: 15px 10px;
            font-size: 16px;
            text-align: center;
            background-color: #F8F8F8;
        }
        #tbl1 td {
            border-bottom: 1px solid #EBEBEB;;
            padding: 15px;
            font-size: 16px;
            color: #555;
        }
        .text {
            font-size: 12px;
            color: #999;
            margin-left: 5px;
        }
        .btn {
            padding: 8px 13px;
            border-radius: 0;
            color: #333;
            font-weight: bold;
        }
        #nickname {
            border: 1px solid #EBEBEB;
            padding: 7px 8px;
            font-size: 14px;
            font-weight: bold;
            width: 180px;
        }
        #postcode, #address, #detailAddress {
            border: 1px solid #EBEBEB;
            padding: 7px 8px;
            font-size: 14px;
            font-weight: bold;
            width: 180px;
        }
        #address, #detailAddress {
            width: 350px;
        }
        #btnname, #btnpassword, #btnaddress, #btntel, #btnemail, #btntelfix {
            outline: none;
        }
        #buttonbox { text-align: center; }
        #enter {
            outline: none;
            color: white;
            padding: 15px 20px;
        }
        #telnum {
            border: 0;
            font-size: 16px;
            width: 120px;
            outline: none;
        }
        #telfix {
            display: none;
        }
        .phonenum {
            border: 1px solid #EBEBEB;
            padding: 7px 8px;
            font-size: 14px;
            font-weight: bold;
            outline: none;
            width: 80px;
        }
        .email {
            border: 1px solid #EBEBEB;
            padding: 7px 8px;
            font-size: 14px;
            font-weight: bold;
            outline: none;
            width: 150px;
        }
        #emailaddress {
            width: 200px;
            border: 0;
            font-size: 16px;
            font-weight: normal;
            padding: 0;
            width: 170px;
        }
        #emailfix { display: none; }
        #name {
            border: 0;
            font-size: 16px;
            outline: none;
            width: 60px;
            display: inline-block;
        }
        #namefixed {
            border: 1px solid #EBEBEB;
            padding: 7px 8px;
            font-size: 14px;
            font-weight: bold;
            outline: none;
            width: 150px;
        }
        #namefix { display: none; }

        #footer {
            width: 900px;
            margin: 0 auto;
        }
        #copyright {
            text-align: center;
            color: #666;
            margin-top: -70px;
            letter-spacing: -.1px;
        }
        #copyright > span {
            font-weight: bold;
        }
        * {
            outline: none;
        }
        #menu > ul > li:hover {
            color: #196AB3;
        }
        #mypage {
            float: right;
            position: relative;
            top: 30px;
            outline: none;
        }

    </style>
</head>
<body>
    
    <div id="top">
        <!-- 상단메뉴 좌측(메인화면으로 돌아가기) -->
        <a href="main.html" id="topleft"></a>
        <!-- 상단메뉴 좌측(로그인 문구) -->
        <h1>나의 정보</h1>
        <!-- 상단메뉴 우측(마이페이지로 돌아가기) -->
        <input type="button" value="마이페이지" class="btn btn-default" id="mypage">
    </div>
    <div id="middle">
        <div id="menu">
            <ul>
                <li>회원정보</li>
                <li id="withdraw">회원탈퇴</li>
            </ul>
        </div>
        <div id="info">
            <h2>필수정보</h2>
            <table id="tbl1">
                <tbody>
                    <tr>
                        <th>아이디</th>
                        <td><span class="info">jwoo0823</span></td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td>
                            <input type="text" id="nickname">
                            <span class="text">20자 이내로 입력해주세요.</span>
                        </td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td>
                            <div id="nameori">
                                <input type="text" id="name" value="장정우" class="name" readonly>
                                <button class="btn btn-default" id="btnname">이름변경</button>
                                <span class="text">개명하신 경우 본인인증 후 이름변경이 가능합니다.</span>
                            </div>
                            <div id="namefix">
                                <input type="text" id="namefixed" class="name" autocomplete="">
                                <button class="btn btn-default" id="btnnamefix">이름변경 완료</button>
                                <span class="text">개명하신 경우 본인인증 후 이름변경이 가능합니다.</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>성별</th>
                        <td>
                            <span class="info">남</span>
                        </td>
                    </tr>
                    <tr>
                        <th>생년월일</th>
                        <td>
                            <span class="info">****년 **월 **일</span>
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <!-- Modal 사용예정 -->
                            <button class="btn btn-default" id="btnpassword">비밀번호 변경</button>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="3">주소</th>
                        <td>
                            <input type="text" id="postcode" readonly>
                            <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="btn btn-default" id="btnaddress">
                        </td>
                    </tr>
                    <tr>
                        <!-- <th></th> -->
                        <td>
                            <input type="text" id="address" readonly>
                        </td>
                    </tr>
                    <tr>
                        <!-- <th></th> -->
                        <td>
                            <input type="text" id="detailAddress">
                        </td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>
                            <div id="telori">
                                <input type="text" value="010-4820-3060" id="telnum" readonly>
                                <button class="btn btn-default" id="btntel">수정</button>
                            </div>
                            <div id="telfix">
                                <select id="frontphonenum" class="phonenum">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="017">017</option>
                                    <option value="019">019</option>
                                </select>
                                -
                                <input type="text" id="middlephonenum" class="phonenum" autocomplete="">
                                -
                                <input type="text" id="backphonenum" class="phonenum" autocomplete="">
                                <button class="btn btn-default" id="btntelfix">수정완료</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일주소</th>
                        <td>
                            <div id="emailori">
                                <input type="text" value="jwoo0823@naver.com" id="emailaddress" class="email" readonly>
                                <button class="btn btn-default" id="btnemail">수정</button>
                            </div>
                            <div id="emailfix">
                                <input type="text" id="frontemail" class="email" autocomplete="off">
                                @
                                <input type="text" id="backemail" class="email" autocomplete="off">
                                <select id="emaillist" class="email">
                                    <option value="default">email.com</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="google.com">google.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                </select>
                                <button class="btn btn-default" id="btnemailfix">수정완료</button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="buttonbox">
            <button class="btn btn-primary" id="enter">회원정보 수정</button>
        </div>
    </div>
    <div id="footer">
        <div id="copyright">
            Copyright &copy; <span>AT-Ticket Corp.</span> All rights reserved.
        </div>
    </div>
    

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>

        //회원탈퇴 페이지로 이동
        $("#withdraw").click(function() {
            location.href = "mypage_revision_withdraw.html";
        });

        //마이페이지로 이동
        $("#mypage").click(function() {
            location.href = "mypage.html";
        });


        //주소 API
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address").value = roadAddr;
                    document.getElementById("address").value = data.jibunAddress;

                }
            }).open();
        };

        
        //이름 수정
        $("#btnname").click(function() {
            $("#nameori").css("display", "none");
            $("#namefix").css("display", "inline-block");
        });

        var nameCheck = RegExp(/^[가-힣]{2,6}$/);

        $("#btnnamefix").click(function() {

            var name = $("#namefixed").val();

            //이름 공백 확인
            if (name == "") {
                alert("이름을 입력해주세요.");
                $("#namefixed").focus();
                return false;
            };
            //이름 유효성검사
            if (!nameCheck.test(name)) {
                alert("형식에 맞게 입력해주세요.");
                $("#namefixed").val('');
                $("#namefixed").focus();
                return false;
            };

            alert("이름이 수정되었습니다.")
            $("#namefix").css("display", "none");
            $("#nameori").css("display", "inline-block");
            $("#name").val($("#namefixed").val());
        });



        //전화번호 수정
        $("#btntel").click(function() {
            $("#telori").css("display", "none");
            $("#telfix").css("display", "inline-block");
        });

        var phonNumberCheck = RegExp(/(01[0179])-{1}([1-9]{1}[0-9]{2,3})-{1}([0-9]{4})$/);

        $("#btntelfix").click(function() {

            var phonenum = $("#frontphonenum").val() + '-' + $("#middlephonenum").val() + '-' + $("#backphonenum").val();

            //휴대폰번호 공백 확인
            if (phonenum == "010--" || phonenum == "011--" || phonenum == "017--" 
                || phonenum == "019--") {
                    alert("휴대폰번호를 입력해주세요.");
                    $("#middlephonenum").focus();
                    return false;
            };
            //휴대폰번호 유효성검사
            if (!phonNumberCheck.test(phonenum)) {
                alert("형식에 맞게 입력해주세요.")
                $("#middlephonenum").val('');
                $("#backphonenum").val('');
                $("#middlephonenum").focus();
                return false;
            };

            alert("전화번호가 수정되었습니다.");
            $("#telfix").css("display", "none");
            $("#telori").css("display", "inline-block");
            $("#telnum").val($("#frontphonenum").val() + '-' + $("#middlephonenum").val() + '-' + $("#backphonenum").val());
        });




        //이메일 수정
        $("#btnemail").click(function() {
            $("#emailori").css("display", "none");
            $("#emailfix").css("display", "inline-block");
        });

        var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

        $("#btnemailfix").click(function() {

            var email = $("#frontemail").val() + '@' + $("#backemail").val();

            //이메일 공백 확인
            if (email == "@") {
                alert("이메일을 입력해주세요.");
                $("#frontemail").focus();
                return false;
            };
            //이메일 유효성검사
            if (!emailCheck.test(email)) {
                alert("형식에 맞게 입력해주세요.")
                $("#frontemail").val('');
                $("#backemail").val('');
                $("#frontemail").focus();
                return false;
            };

            alert("이메일이 수정되었습니다.");
            $("#emailfix").css("display", "none");
            $("#emailori").css("display", "inline-block");
            $("#emailaddress").val($("#frontemail").val() + '@' + $("#backemail").val());
        });


        //이메일 자동입력
        $("#emaillist").change(function() {
            $("#emaillist option:selected").each(function() {
                if ($(this).val() == 'default') {
                    $("#backemail").val('');
                } else {
                    $("#backemail").val($(this).text());
                };
            });
        });

    </script>


</body>
</html>