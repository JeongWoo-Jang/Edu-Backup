<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
<style> /* 랭킹 */
  /* 등록순, 오름차순, 내림차순 */
        .selectNotice {
            width: 80px;
            /* text-align: center; */
            margin: 10px 0px;
            margin-bottom: -10px;
            background-color: white;
            border: 0px;
            height: 20px;
            border-right: 1px solid #999;
            color: #777;
            padding: 0px;
            padding-right: 5px;
            /* font-size: 1.5em; */
        }

        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color: #111;
            font-weight: bold;
        }

        #selectable {
            margin-top: 10px;
            margin-left: 280px;
        }

        #title {
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        th,
        td {
            text-align: center;
        }

        tr td:nth-child(4) {
            text-align: left;
        }

        th {
            background-color: #999;
            /* color : white; */
        }

        #slctp1,
        #slctp2 {
            float: left;
            margin-left : 100px; 
            margin-bottom: 0px;
        }

        #slctp2 {
            margin-top: 10px;
            margin: 10px auto;
            margin-bottom: 10px;
            width: 300px;
            margin-left: 450px;
        }

        #searchlogo:hover {
            cursor: pointer;
            /* background-color: rgb(red, green, blue); */
        }

        #manipulate {
            margin-left: 1040px;
        }

        /* 수정하는 버튼  */
        .edit {
            width: 120px;
            height: 50px;
            border: 0px;
            font-size: 1.3em;
            font-weight: bold;
            margin: auto 30px;
            margin-top: 80px;
            background-color: #D5D5D5;
            color: #333;
            border-radius: 10px;
            visibility: hidden;
        }

        .pagebar {
            margin-left: 400px;
        }

        /* 페이징바 색상 */
        .pagination>.active>a,
        .pagination>.active>span,
        .pagination>.active>a:hover,
        .pagination>.active>span:hover,
        .pagination>.active>a:focus,
        .pagination>.active>span:focus {
            background-color: #999999;
            border-color: #eeeeee;
        }

        .pagination>li>a,
        .pagination>li>span {
            color: black;
        }

        .modified {
            border : 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color : rgb(220,220,220);
            height : 35px;
            font-weight: bold    
        }
        .modified:hover {
            color : white;
            /* background-color: #333; */

        }
        
        #manipulate2 {
            margin-left: 1560px;
        }
        
          .modified2 {
            border : 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color : rgb(220,220,220);
            height : 35px;
            font-weight: bold    
        }
        .modified2:hover {
            color : white;
            /* background-color: #333; */

        }

        tr td:nth-child(4):hover {
            cursor: pointer;
            width: 250px;
            text-decoration: underline;
        }
        
         .img {
                width: 230px;
                height: 330px;
                /* border: 1px solid black; */
                background-color: cornflowerblue;
                display: inline-block;
                margin: 10px 0 0 10px;
                cursor: pointer;
            }
            
               .event-main-tit {
                text-align: center;
                font-size: 26px;
                font-weight: bold;
                font-family: "Noto Sans KR", "NanumBarunGothic", "맑은 고딕",
                    "Malgun Gothic", sans-serif;
                margin-bottom: 38px;
            }

            .event-division {
                text-align: center;
                font-size: 0;
                margin-bottom: 60px;
            }
            .eventmenubar {
                margin: 0 5px;
            }

            .event-main-list {
                /* display: inline-block; */
                width: 1900px;
                margin: 0px auto;
                margin-left: 185px;
            }

            .eve-mlist-dday {
                text-align: center;
            }

            .evemark {
                width: 60px;
                margin: 10px auto;

                border: 1px solid red;
                color: red;

                text-align: center;
            }

            .evetit {
                text-align: center;
            }
            .evetxt {
                color: orange;
                /* font-size: 11px; */
                text-align: center;
            }
            #eventbox {
                display: inline-block;
                width: 240px;
                margin-left: 50px;
            }
            
             .noticeimg {
                width: 250px;
            }
            
            .event-main-list {
            	margin-top:20px;
            	margin-left:280px;
            }
            
             #boxtable {
            	margin-left:150px;
            }
            
            #topmenu{
            	margin-left:-150px;
            }
            
            .eventcb{
            	margin-left:115px;
            }
            
             
</style>


</head>
<body>
    <div id="title">
        <h1 style="color: #555; font-weight: bold;
        font-family: Arial;
        font-size: 3em;">리뷰 게시판 <small>> Home </small></h1>
    </div>
    <!-- 그림 부분 -->
	<div class="event-main-list">
                    <div id="eventbox">
                        <img
                            class="noticeimg"
                            src="../images/notice1.jpg"
                            alt=""
                        />
                        <div class="eve-mlist-box">
                            <p class="evemark">이벤트</p>
                            <p class="evetit">연극 <가족사진> 리뷰 이벤트</p>
                            <p class="evetxt">2020.07-15 ~ 2020.08.31</p>

                            <p class="eve-mlist-dday">1000 포인트 지급</p>
                        </div>
                            <span class = "eventcb"><input class = "eventch" type = "checkbox"></span>
                    </div>
                    <div id="eventbox">
                        <img
                            class="noticeimg"
                            src="../images/notice2.jpg"
                            alt=""
                        />
                        <div class="eve-mlist-box">
                            <p class="evemark">이벤트</p>
                            <p class="evetit">
                                뮤지컬 <베르테르> 리뷰 이벤트
                            </p>
                            <p class="evetxt">2020.07-15 ~ 2020.08.31</p>

                            <p class="eve-mlist-dday">1000 포인트 지급</p>
                             <span class = "eventcb"><input class = "eventch" type = "checkbox"></span>
                        </div>
                    </div>
                    <div id="eventbox">
                        <img
                            class="noticeimg"
                            src="../images/notice3.jpg"
                            alt=""
                        />
                        <div class="eve-mlist-box">
                            <p class="evemark">이벤트</p>
                            <p class="evetit">연극 <가족사진> 리뷰 이벤트</p>
                            <p class="evetxt">2020.07-15 ~ 2020.08.31</p>

                            <p class="eve-mlist-dday">1000 포인트 지급</p>
                             <span class = "eventcb"><input class = "eventch" type = "checkbox"></span>
                        </div>
                    </div>
                    <div id="eventbox">
                        <img
                            class="noticeimg"
                            src="../images/notice4.jpg"
                            alt=""
                        />
                        <div class="eve-mlist-box">
                            <p class="evemark">이벤트</p>
                            <p class="evetit">뮤지컬 <오페라의 유령> 리뷰 이벤트 -</p>
                            <p class="evetxt">2020.07-15 ~ 2020.08.31</p>

                            <p class="eve-mlist-dday">1000 포인트 지급</p>
                             <span class = "eventcb"><input class = "eventch" type = "checkbox"></span>
                        </div>
                    </div>
                    <div id="eventbox">
                        <img
                            class="noticeimg"
                            src="../images/notice4.jpg"
                            alt=""
                        />
                        <div class="eve-mlist-box">
                            <p class="evemark">이벤트</p>
                            <p class="evetit">뮤지컬 <오페라의 유령> 리뷰 이벤트 -</p>
                            <p class="evetxt">2020.07-15 ~ 2020.08.31</p>

                            <p class="eve-mlist-dday">1000 포인트 지급</p>
                             <span class = "eventcb"><input class = "eventch" type = "checkbox"></span>
                        </div>
                    </div>
                </div>
                
        <div id = "manipulate2">
            <button class = "modified" id = "makebtn2"><i class="glyphicon glyphicon-plus"></i>추가</button>
            <button class = "modified" id = "modifybtn2"><i class="glyphicon glyphicon-pencil"></i>수정</button>
            <button class = "modified" id = "delbtn2"><i class="glyphicon glyphicon-trash"></i>삭제</button>
        </div>
      <!-- 그림 끝 부분 -->
  <div id = "boxtable">
    <div id="selectable">

        <div id="slctp1">
            <button class="selectNotice" style="outline : none;"><span><i
                        class="glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class="selectNotice" style="outline : none;"><span><i
                        class="glyphicon glyphicon-sort"></i>오름차순</button>
            <button class="selectNotice" style="outline : none;"><span><i
                        class="glyphicon glyphicon-sort"></i>내림차순</button>
            <!-- <input type="button" class = "selectNotice" value = "등록순">
            <input type="button" class = "selectNotice" value = "오름차순">
            <input type="button" class = "selectNotice" value = "내림차순"> -->
        </div>
        <div id="slctp2">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
                <span class="input-group-addon" id="searchlogo"><i class="glyphicon glyphicon-search"></i></span>
            </div>
        </div>
		 
        <table style="margin-left: 110px; margin-top: 30px; width: 990px;" class="table table-bordered table-striped">
            <tr>

                <th><input type="checkbox" id="cbAll"></th>
                <th style="width: 70px;">번호</th>
                <th style="width: 70px;">태그</th>
                <th style="width: 500px;">제목</th>
                <th style="width: 100px;">이름</th>
                <th style="width: 100px;">날짜</th>
                <th style="width: 70px;">읽음</th>
                <th style="width: 80px;">좋아요</th>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>15</td>
                <td>후기</td>
                <td>뮤지컬 [베르테르] 후기</td>
                <td>홍길동</td>
                <td>2020-07-15</td>
                <td>11</td>
                <td>11</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>14</td>
                <td>후기</td>
                <td>그랜드 민트 페스티벌 후기.</td>
                <td>아무개</td>
                <td>2020-07-14</td>
                <td>65</td>
                <td>65</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>13</td>
                <td>후기</td>
                <td>님들 오페라의 유령 봄?</td>
                <td>호호호</td>
                <td>2020-07-11</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>12</td>
                <td>잡담</td>
                <td>티켓팅 실패 ㅠㅠ 방탄소년단 티켓 삽니다~</td>
                <td>홍길동</td>
                <td>2020-07-15</td>
                <td>11</td>
                <td>11</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>11</td>
                <td>잡담</td>
                <td>싸이 흠뻑쇼 가보신분들 어떤가요?</td>
                <td>아무개</td>
                <td>2020-07-14</td>
                <td>65</td>
                <td>65</td>
            </tr>
           
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>10</td>
                <td>잡담</td>
                <td>서울 볼만한 전시회 추천좀 해주세요</td>
                <td>호호호</td>
                <td>2020-07-11</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>9</td>
                <td>잡담</td>
                <td>디디피에서 요즘 전시회 안하나요?</td>
                <td>홍길동</td>
                <td>2020-07-15</td>
                <td>11</td>
                <td>11</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>8</td>
                <td>잡담</td>
                <td>
                    뮤지컬 [캣츠] 40주년 오리지널 내한공연 후기!!!
                </td>
                <td>아무개</td>
                <td>2020-07-14</td>
                <td>65</td>
                <td>65</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>7</td>
                <td>잡담</td>
                <td>뮤지컬 [머더 발라드] 후기!!!</td>
                <td>호호호</td>
                <td>2020-07-11</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>6</td>
                <td>잡담</td>
                <td>에미넴 콘서트 보고싶다</td>
                <td>홍길동</td>
                <td>2020-07-15</td>
                <td>11</td>
                <td>11</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>5</td>
                <td>잡담</td>
                <td>손열음 공연 어떤가요?</td>
                <td>아무개</td>
                <td>2020-07-14</td>
                <td>65</td>
                <td>65</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>4</td>
                <td>잡담</td>
                <td>마마미아 내한 계획 아시는분></td>
                <td>호호호</td>
                <td>2020-07-11</td>
                <td>7</td>
                <td>7</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>3</td>
                <td>잡담</td>
                <td>뮤지컬 [머더 발라드] 후기</td>
                <td>홍길동</td>
                <td>2020-07-15</td>
                <td>11</td>
                <td>11</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>2</td>
                <td>잡담</td>
                <td>뮤지컬 [무인도 탈출기] 후기.</td>
                <td>아무개</td>
                <td>2020-07-14</td>
                <td>65</td>
                <td>65</td>
            </tr>
            <tr>
                <td><input type="checkbox" class = "cb">
                <td>1</td>
                <td>잡담</td>
                <td>레미제라블 재밌습니다 ^^</td>
                <td>호호호</td>
                <td>2020-07-11</td>
                <td>7</td>
                <td>7</td>
            </tr>
        </table>

        <!-- 내용물 수정/삭제 페이지 -->
        <div id="manipulate">
            <button class="modified" id="delbtn"><i class="glyphicon glyphicon-trash"></i> 삭제</button>
        </div>

        <!-- 하단 페이지 선택 바 -->
        <nav class="pagebar">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li class="active"><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li><a href="">5</a></li>
                <li><a href="">6</a></li>
                <li><a href="">7</a></li>
                <li><a href="">8</a></li>
                <li><a href="">9</a></li>
                <li><a href="">10</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
		</div>
	<%@include file="/WEB-INF/views/inc/menu.jsp"%>
	<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
	var cbAll = document.getElementById("cbAll");
    var cb = document.getElementsByClassName("cb");
    var count = 0;
    var tr = document.getElementsByTagName("tr");

    cbAll.onchange = function(){
        for(var i=0;i<cb.length;i++){
                cb[i].checked = cbAll.checked;
            }
    }


    // $("#modifybtn").click(function(){
    //     location.href = "freeBoardModify.html"
    // });

    $("#delbtn").click(function(){
        if($('.cb').is(':checked') == true) {
            if(confirm("정말로 삭제하시겠습니까?")){

            }
        } else {
            alert("하나 이상을 체크하시오.");
        }
    });
    
    $("#delbtn2").click(function(){
        if($('.eventch').is(':checked') == true) {
            if(confirm("정말로 삭제하시겠습니까?")){

            }
        } else {
            alert("하나 이상을 체크하시오.");
        }
    });

    for (var i = 2; i < tr.length; i++) {
        tr[i].children[3].onclick = function () {
        	 location.href = "/AtTicketProject/review/reviewupdate.do";
        };
    }
	
    $("#makebtn2").click(function(){
    	   window.open("/AtTicketProject/review/eventupdate.do", "예매추가", "width=500,height=300");
    });
    
    $("#modifybtn2").click(function(){
    	if($('.eventch').is(':checked') == true) {
 	   		window.open("/AtTicketProject/event/eventinfoupdate.do", "예매수정", "width=500,height=300");
    	} else {
    		  alert("하나 이상을 체크하시오.");
    	}
 	});
  

    </script>
</body>
</html>