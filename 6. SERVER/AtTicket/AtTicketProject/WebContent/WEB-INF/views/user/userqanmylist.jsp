<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        
        <%@include file="/WEB-INF/views/inc/asset.jsp" %>
        
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet"/>
        <link rel="shortcut icon" href="./images/favicon.ico" />
		<link rel="stylesheet" href="css/usermain.css" />

    <style>

        * {
            outline: none;
        }

        body { margin: 0 auto; }
        h1 { font-family: "Arial Black"; }
        #main { width: 100%; }
        #top {
            /* border: 1px solid black; */
            min-width: 1600px;
            height: 50px;
            margin: 0 auto;
        }
        /*-------------------------------- 화면 하단부 -------------------------------*/
        #bottom {
            /* border: 1px solid black; */
            min-width: 1300px;
            height: 250px;
            background-color: #eee;
        }
        #bottom > div {
            float: left;
            position: relative;
            left: 21%;
            top: 22%;
        }
        #bottom .txt {
            margin-left: 30px;
            line-height: 1.1em;
            color: #666;
            top: 28%;
        }
        #bottom .txt .black {
            color: black;
        }
        #bottom #service {
            margin-left: 200px;
            top: 18%;
        }
        #bottom #service p:first-child {
            border-bottom: 1px solid #BBB;
            padding: 0 0 5px 20px;
            font-weight: bold;
            font-size: 1.1em;
        }
        #bottom #service p > span {
            color: #444;
            font-size: 1.3em;
        }
        #bottom #service p:nth-child(2) {
            text-align: center;
            font-size: 3em;
            padding-left: 10px;
        }
        #bottom #service p {
            margin-bottom: -2px;
            padding-left: 20px;
        }
        #topmenu {
            border-bottom: 1px solid #eee;
            background-color: white;
            width: 100%;
            height: 40px;
            color: black;
            text-align: center;
            font-size: 15px;
            padding: 40px 0;
            position: absolute;
            /* margin-top: -120px; */
        }
        .menubar {
            margin: 0 5px;
            cursor: pointer;
        }
        #topmenu > span {
            cursor: pointer;
        }
        .switch {
            /* border: 1px solid white; */
            position: relative;
            top: 50%;
        }        
        #topleft {
            display: inline-block;
            /* border: 1px solid white; */
            width: 100px;
            height: 65px;
            background-image: url("./images//title.png");
            background-repeat: no-repeat;
            background-position: center center;
            position: absolute;
            left : 10px;
            top: 10px;
            cursor: pointer;
        }
        #topright {
            font-size: 13px;
            position: absolute;
            right : 5px;
            top: 42px;
            cursor: pointer;
        }

        #search {
            border: 0;
            border-bottom: 1px solid white;
            background-color: transparent;
            outline: none;
            color: black;

        }

        /*-------------------------------- 태그 --------------------------------*/
        #tagsearch {
            border: 1px solid #111;
            width: 170px;
            height: 205px;
            position: relative;
            float: right;
            background-color: white;
            margin-right: 60px;
	        margin-top: 2px;
            /* text-align: center; */
            display: none;
	        top: 24px;
        }
        #tagsearch::after {
            content: "";
            display: none;
            clear: both;
        }
        #tag {
            width: 168px;
            /* background-color: rgb(253, 236, 236); */
            background-color: #f6f6f6;
            height: 25px;
            }
        #tag > span {
            color: #222;
            font-size: 14px;
            width: 50px;
            height: 30px;
            font-weight: normal;
            font-family: "IBMPlexSansKR-Regular";
            position: relative;
            left: -20px;
        }

        #tag > label {
            color: #111;
            float: right;
            cursor: pointer;
            font-size: 20px;
            font-weight: 100;
        }
        #tagsearch > a {
            display: block;
            color: #555;
            font-size: 14px;
            font-family: "IBMPlexSansKR-Regular";
            font-weight: normal;
            text-align: left;
            margin-left: 20px;
            margin-top: 2px;
        }
        #tagsearch > span {
            font-size: 12px;
            color: #999;
            font-weight: normal;
            font-family: "IBMPlexSansKR-Regular";

            float: right;
            margin-top: 5px;
            margin-right: 5px;
        }

        #chatbot {
            width: 88px;
            height: 88px;
            position: fixed;
            bottom: 10px;
            left: 10px;
            cursor: pointer;
            z-index: 1;
        }

        #frogue-container, .frogue-chat {
            position: absolute;
            left:20px;
            bottom: 0;
        }

        #movetop {
            width: 40px;
            height: 40px;
            background-color: gray;
            position: fixed;
            bottom: 0;
            right: 0;
            text-align: center;
            padding-top: 3px;
        }
        #movetop:hover {
            background-color: orange;
        }
        #movetop a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }
        /* 내용======================================================================================================== */

        #mainBox {
            width: 1200px;
            /* text-align: center; */
            margin: 120px auto;
            min-height: 890px;
        }

        #mainBox h1 {
            text-align: center;
            font-weight: bold;
        }

        #board {
            /* border-collapse: collapse; */
            width: 1200px;
        }

    

        #board th:nth-child(1) {width: 60px;}
        #board th:nth-child(2) {width: 60px;}
        #board th:nth-child(3) {width: 120px;}
        #board th:nth-child(5) {width: 110px;}
        #board th:nth-child(6) {width: 110px;}
        #board th:nth-child(7) {width: 60px;}
        /* #board tr:nth-child(even) {background-color: #e3e8f1;} */

        #board td:nth-child(3) {text-align: left; padding: 0px 10px;}
        /* #board td:last-child {border-right: none;} */

        /* 탭 */
        #tabMenu {
            width: 1200px;
            padding-bottom: 100px;
            text-align: center;
        }

        #tabMenu::after {
            content: ' ';
            display: block;
            clear: both;
        }

        .tabMenu {
            border-bottom: 2px solid #eee;
            width: 150px;
            height: 70px;
            float: left;
            text-align: center;
            padding-top: 25px;
            border-right: none;
            color: black;
            margin-top: 50px;
        }

        .tabMenu:first-child{
            /* background-color: orange; */
            color: #7E9CB6;
            border-bottom: 2px solid #7E9CB6;
        }

        /* 검색 */
        #searchFAQ {
            padding-top: 50px;
            text-align: center;
        }

        #searchFAQBox {
            width: 630px;
            height: 60px;
            border: 2px solid black;
            padding: 0px 20px;
            padding-right: 80px;
        }

        #searchFAQ div {
            width: 60px;
            height: 60px;
            font-size: 30px;
            display: block;
            float: left;
            position: relative;
            left: 885px;
            /* text-align: center center; */
        }

        #searchFAQ::after {
            content: ' ';
            display: block;
            clear: both;
        }

        #searchFAQ span {
            position: relative;
            top: 15px;
        }

        .pagebar {
            text-align: center;
            /* margin-top: -50px; */
            position: relative;
            top: -70px;
        }

        .pagination > .active > a {
            background-color: #7E9CB6;
            border-color: #7E9CB6;
        }

        .pagination > li > a, .pagination > li > span {
            color: #7E9CB6;
        }

            /* 버튼 */
            .btn-primary {
            outline: none;
            width: 120px;
            height: 40px;
            background-color: #7E9CB6;
            border-color: #7E9CB6;
            float: right;
            outline: none;
            margin-top: 60px;
            margin-left: 10px;
            margin-bottom: 100px;

        }

        .btn-primary::after {
            content: ' ';
            display: block;
            clear: both;
        }

        #delete {
            background-color: #d18b78;
            border-color: #d18b78;
            outline: none;
        }

        #qna {
            width: 150px;
            position: relative;
            top: -210px;
            border: none;
            border-bottom: 1px solid #7E9CB6;
            float: right;
            outline: none;
            background-color: white;
            padding: 10px;
        }

        #myQna span {
            margin-right: 10px;
        }

        input[type="checkbox"] {
            display:none;
        }

        input[type="checkbox"] + label span {
            display:inline-block;
            width: 15px;
            height: 15px;
            /* margin:-2px 10px 0 0; */
            margin: 0px;
            vertical-align:middle;
            background: white;
            border: 1px solid #7E9CB6;
            cursor:pointer;
            /* margin-top: 8px; */
            margin-left: 5px;
        }

        input[type="checkbox"]:checked + label span {
            background: #7E9CB6;
            border: 1px solid white;
        }


    </style>

</head>
<body>

    <div id="main">

        <!-------------------------------- 화면 상단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/usertopbar.jsp" %>
            

        </div>
            
            <!-- 챗봇 : 단비봇 --------------------------------------------------------------------------------------------------------------------------------->
            <!-- <img src="./images/face35.png" id="chatbot"> -->

            <div id="frogue-container" class="position-right-bottom"
                data-chatbot="e4957de9-dad9-448d-a709-e43eeb644f63"
                data-user="사용자ID"
                data-init-key="value">
            </div>
            <!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
            <script>
                (function(d, s, id){
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {return;}
                    js = d.createElement(s); js.id = id;
                    js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'frogue-embed'));
            </script>
            <!-- 제일 위로 돌아가기 버튼 -->
            <div id="movetop"><a href="#top">↑</a></div>
        </div>

        <!-- 내용============================================================================================================================================= -->
        <div id="mainBox">
            <h1>My Q&A List</h1>


            <div id="searchFAQ">
                <input type="text" placeholder="궁금하신 내용을 입력해주세요" id="searchFAQBox">
                <div><span class="glyphicon glyphicon-search"></span></div>
            </div>

            <button id="qna">
                <span class="
                glyphicon glyphicon-th-list"></span>
                Q&A 이동
            </button>
            <div style="clear:both;"></div>

            <div id="tabMenu">
                <div class="tabMenu" data-tab="tab1">전체</div>
                <div class="tabMenu" data-tab="tab2">예매방법</div>
                <div class="tabMenu" data-tab="tab3">결제방법</div>
                <div class="tabMenu" data-tab="tab4">수수료</div>
                <div class="tabMenu" data-tab="tab5">취소/환불</div>
                <div class="tabMenu" data-tab="tab6">티켓수령</div>
                <div class="tabMenu" data-tab="tab7">티켓반매/재휴문의</div>
                <div class="tabMenu" data-tab="tab8">기타</div>
            </div>


            <table id="board" class="table table-striped">
                <thead>
                    <tr>
                        <th>    
                            <input type="checkbox" id="c0" name="c0" />
                            <label for="c0"><span></span></label>
                        </th>
                        
                        <th>번호</th>
                        <th>문의유형</th>
                        <th>제목</th>
                        <th>날짜</th>
                        <th>답변완료</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c1" name="c1" />
                            <label for="c1"><span></span></label>
                        </td>
                        <td>1</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c2" name="c2" />
                            <label for="c2"><span></span></label>
                        </td>
                        <td>2</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c3" name="c3" />
                            <label for="c3"><span></span></label>
                        </td>
                        <td>3</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c4" name="c4" />
                            <label for="c4"><span></span></label>
                        </td>
                        <td>4</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c5" name="c5" />
                            <label for="c5"><span></span></label>
                        </td>
                        <td>5</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c6" name="c6" />
                            <label for="c6"><span></span></label>
                        </td>
                        <td>6</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c7" name="c7" />
                            <label for="c7"><span></span></label>
                        </td>
                        <td>7</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c8" name="c8" />
                            <label for="c8"><span></span></label>
                        </td>
                        <td>8</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c9" name="c9" />
                            <label for="c9"><span></span></label>
                        </td>
                        <td>9</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>    
                            <input type="checkbox" id="c10" name="c10" />
                            <label for="c10"><span></span></label>
                        </td>
                        <td>10</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>

            <!-- 글쓰기 -->

            <button class="btn btn-primary" id="write">
            <span class="glyphicon glyphicon-pencil"></span>
            Write
            </button>

            <!-- 삭제하기 -->
            <button class="btn btn-primary" id="delete">
                <span class="
                glyphicon glyphicon-trash"></span>
                삭제하기
            </button>
            <div style="clear:both;"></div>

            <!-- 페이징바 -->
            <nav class="pagebar">
                <ul class="pagination">
                    <li>
                      <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;&laquo;</span>
                      </a>
                    </li>
                  <li>
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">6</a></li>
                  <li><a href="#">7</a></li>
                  <li><a href="#">8</a></li>
                  <li><a href="#">9</a></li>
                  <li><a href="#">10</a></li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>


        </div>

            <!-------------------------------- 화면 하단부 -------------------------------->
            <%@include file="/WEB-INF/views/inc/userbottombar.jsp" %>
        </div>

    <script>

      //상단 메뉴 css
      $(".menubar").mouseover(function() {
        $(this).css("border-bottom", "5px solid orange");
        });
        $(".menubar").mouseout(function() {
            $(this).css("border-bottom", "");
        });

        //상단 메뉴 클릭시
        $(".menubar").click(function () {
            location.href = $(this).data("lo");
        });

        var flag = false;

        $(document).scroll(function() {
        //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
        // if (!flag) {
            if ($(document).scrollTop() > $("#tabs").position().top) {
                $("#topmenu").css({
                    width: "100%",
                    position: "fixed",
                    top: "0px",
                    bottom: "",
                    zIndex: "1"
                });
            };

        //상단 헤더(top)이 눈에 보일때 쯤
        if ($(document).scrollTop() <= $("#tabs").position().top) {
            $("#topmenu").css({
            position: "absolute",
            top: "0px",
            bottom: ""
        });
                // flag = false;                
            }
        });

        //검색창 커서 있을때 팝업 띄우기
        $("#search").focusin(function () {
            $("#tagsearch").css("display", "block");
            $("#search").css("border-bottom", "2px solid black");
        });
        //검색창 팝업 닫기
        $("#search").focusout(function () {
            $("#tagsearch").css("display", "none");
        });
        $("#tagremove").click(function () {
            $("#tagsearch").css("display", "none");
        });
 
        //이미지에 마우스 올릴때
        $(".img").mouseover(function() {
            $(this).css("box-shadow", "1px 1px 1px 2px gray");
        });
        //이미지에 마우스 뗄때
        $(".img").mouseout(function() {
            $(this).css("box-shadow", "");
        });
        
        //이미지 클릭시 이동
        $(".img").click(function() {
            location.href = "#";
        });

        //챗봇 클릭시 행동
        $("#chatbot").dblclick(function() {
            alert("챗봇입니다!");
        });
        //챗봇 이동 가능
        $("#chatbot").draggable();

        $("#movetop").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: 0
            }, 1000);
        });

   

        // 내용==================================================================================================================================================================
        
        // 글쓰기 링크
        $("#write").click(function() {
            $(location).attr('href','/AtTicketProject/userqnawrite.do');
        });
        // Q&A 링크
        $("#qna").click(function() {
            $(location).attr('href','/AtTicketProject/userqna.do');
        });

        //탭
        $(".tabMenu").click(function(){
            $(".tabMenu").css({
                "border-bottom" : "2px solid #eee",
                "color": "black"
            })
            $(this).css({
                "border-bottom" : "2px solid #7E9CB6",
                "color": "#7E9CB6"
            })
        });

                //탭
                $(".tabMenu").click(function(){
            $(".tabMenu").css({
                "border-bottom" : "2px solid #eee",
                "color": "black"
            })
            $(this).css({
                "border-bottom" : "2px solid #7E9CB6",
                "color": "#7E9CB6"
            })
        });

        $("#c0").click(function(){
            if($("#c0").is(":checked") == true){
                $("#board input[type = checkbox]").prop("checked", true);
            } else {
                $("#board input[type = checkbox]").prop("checked", false);
            }
        });
 



    </script>



        </div>
    </div>



</body>
</html>