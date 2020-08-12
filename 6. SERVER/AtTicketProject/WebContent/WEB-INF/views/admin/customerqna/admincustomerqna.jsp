<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %> 


  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">

<style>
        /* 최상단 타이틀 */
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
            color : #444444;
        }

</style>

</head>
<body>
	
	
	<div id = "title">
        <h1 id = "titesub">1:1 문의 <small id = "mainHome" style = "color : #777;"> > 문의조회  </small></h1>
    </div>

	<!-- ------------------- 문의조회 게시판 시작-------------------  -->
 	<!-- 게시판 -->
 	
 	<style>
        /* 페이지 하단바  색 조정 */
        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
               background-color:#999999;
           border-color: #eeeeee;
        }
        
        .pagination > li > a, .pagination > li > span{
          color: black;
        }

        /* 최상단 타이틀 */
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
            color : #444444;
        }

        /* 표가 존재하는 구역 */
        #selectable {
            /* border : 1px solid black; */
            width : 1330px;
            margin-left : 350px;
            height : 1700px;
            margin-top : 100px;
        }
        .selectNotice {
            width : 100px;
            text-align: center;
            margin: 10px 0px;
            margin-bottom: 0px;
            background-color: white;
            border : 0px;
            border-radius: 5px;
            font-size: 1.3em;
            border-right: 1px solid #999;
            border-radius: 0px;
            color : #777;
            height : 40px;
        }
        .selectNotice:last-child {
            border-right: 0px;
        }
        .selectNotice:hover {
            color : black;
        }
        #nttable {
            margin-left : 0px;
        }
        #nttable th {
            background-color:  #999;
            /* color:white; */
            text-align: center;
        }
        #nttable th:nth-child(1) {width : 30px;}
        #nttable th:nth-child(2) {width : 130px;}
        #nttable th:nth-child(3) {width : 375px;}
        #nttable th:nth-child(4) {width : 200px;}
        #nttable th:nth-child(5) {width : 180px;}
        #nttable th:nth-child(6) {width : 100px;}
        
        #nttable tbody td {
            /* color :red; */
            text-align: center;
            font-size: 1em;
        }
        
        /*  제목은 중앙정렬 하지 않는다.*/
        #nttable tbody td:nth-child(3) {
            padding-left : 20px;
            text-align: left;

        }

        #nttable > tbody > tr > td:nth-child(3):hover {
            cursor : pointer;
            text-decoration: underline;
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
        }
        .pagebar {
            margin-left : 400px;
        }


        #slctp1, #slctp2 {
            float : left;
            /* margin-left : 100px; */
        }
        #slctp1 {
            margin-left: -12px;
        }

        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 300px;
            margin-left: 735px;
        }
        .secret {
            border:1px solid red;
            color : red;
            font-size: .7em;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        } 	
 	
 	
 	
 	</style>
 	
    <!-- 등록순 오름차순 조회순 -->
    <div id = "selectable">
        
        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
            <!-- <input type="button" class = "selectNotice" value = "등록순">
            <input type="button" class = "selectNotice" value = "오름차순">
            <input type="button" class = "selectNotice" value = "내림차순"> -->
        </div>

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>
        
        <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
            <thead>
                <tr>
                    <th><input type="checkbox" id = "t5title"></th>
                    <th>구분</th>
                    <th>제목</th>
                    <th>작성날짜</th>
                    <th>문의유형</th>
                    <th>열람확인</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td id = "t1input">아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">비밀글</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">비밀글</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">비밀글</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">비밀글</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">삭제대기</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td><span class = "secret">삭제대기</span>&nbsp;&nbsp;아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>미확인</td>
                    
                </tr>
                <tr>
                    <td><input type="checkbox" class = "t5"></td>
                    <td>구매자</td>
                    <td>아니 이 사이트는 관리자는 노는겁니까?</td>
                    <td> 2020.02.17(월) 15:00</td>
                    <td>반품/환불/교환</td>
                    <td>확인</td>
                </tr>
            </tbody>
        </table>

        <!-- 내용물 수정/삭제 페이지 -->
        <div id = "manipulate">
            <button class = "modified" style = "margin-left : 1193px;"><i class="glyphicon glyphicon-trash"></i>해당 문의 내역 삭제</button>
            <!-- <button class = "modified"><i class="glyphicon glyphicon-plus"></i> 공지작성</button>
            <button class = "modified"><i class="glyphicon glyphicon-pencil"></i> 공지수정</button> -->
        </div>
            <!-- <input type="button" class = "modified" value = "공지삭제"> -->
        <!-- <input type="button" class = "modified" value = "공지작성"> -->
        <!-- <input type="button" class = "modified" value = "공지수정"> -->


        <!-- 하단 페이지 선택 바 -->
            <nav class = "pagebar">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li class = "active"><a href="">3</a></li>
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
        
    </div><!-- selectable -->
    
    <script>
    	
    
    
    </script>	
	
	
	
	
	<!-- ------------------- 문의조회 게시판 끝-------------------  -->
	
	
	
	
	

	<%@include file="/WEB-INF/views/inc/menu.jsp" %><!-- 왼쪽 메뉴 페이지 -->

</body>


<script>

	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	/* 기본적인 자바스크립트 */
	
</script>

</html>