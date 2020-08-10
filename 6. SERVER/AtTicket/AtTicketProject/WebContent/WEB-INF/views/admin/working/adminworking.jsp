<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">

    <style>

       #right {
            /* border : 1px solid red; */
            margin-left: 500px;
            margin-top: 30px;
            width : 1000px;

        }
        #visitTitle {
            margin : 15px auto;
            border : 5px solid #C27BA0;
            color : #C27BA0;
            text-align: center;
            width : 120px;
            font-size: 2em;
        }

        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }
        #btnadd {
            position: relative;
            top: -35px;
            left: 250px;

            border : 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color : rgb(220,220,220);
            height : 35px;
            font-weight: bold;   
        }
        #btnadd:hover {
            color : white;

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
        
        #tbl th {
            background-color: #999;
            text-align: center;
        }
        #tbl td { text-align: center;}
        #tbl td:nth-child(3) {
            text-align: left;
            padding-left: 20px;
        }

        #slctp1, #slctp2 {
            float : left;
            /* margin-left : 100px; */
            margin-bottom: 0px;
        }

        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 300px;
            margin-left: 700px;
        }
        .selectNotice {
                width : 80px;
                /* text-align: center; */
                margin: 10px 0px;
                margin-bottom: -10px;
                background-color: white;
                border : 0px;
                height : 20px;
                border-right: 1px solid #999;
                color : #777;
                padding: 0px;
                padding-right: 5px;
               /* font-size: 1.5em; */
               position: relative;
               top: 40px;
        }
        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color : #111;
            font-weight: bold;
        }
        
        /* 페이징바 색상 */
       .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
           background-color:#999999;
           border-color: #eeeeee;
       }
        
      .pagination > li > a, .pagination > li > span{
          color: black;
      }
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminWorking</title>
</head>

<body>

    <div id = "title">
        <h1 style="color:#555">업무 현황</h1>
    </div>

	

    
    <div id = "right">

        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
            <!-- <input type="button" class = "selectNotice" value = "등록순">
            <input type="button" class = "selectNotice" value = "오름차순">
            <input type="button" class = "selectNotice" value = "내림차순"> -->
        </div>
        
        <!-- <select style=" position: relative; left: 370px; top: 43px; height: 30px; outline: none;">
            <option>개발부</option>
            <option>영업부</option>
            <option>마케팅부</option>
            <option>인사부</option>
            <option>디자인부</option>
            <option>총무부</option>
        </select> -->

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>


        <table id="tbl" class="table table-striped table-bordered table-condensed">
            <tbody id="tbody">
                <tr>
                    <th>번호</th>
                    <!-- <th>부서</th> -->
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회수</th>
                </tr>
                <tr>
                    <td>1</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>2</td>
                    <!-- <td>영업부</td> -->
                    <td>새로운 이벤트 정보입니다.</td>
                    <td>[영]홍길동</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>3</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>11</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>10</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>9</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>8</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>7</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>6</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>5</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                
                <tr>
                    <td>3</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>2</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>1</td>
                    <!-- <td>개발부</td> -->
                    <td>이벤트 디자인 파일 보내주세요.</td>
                    <td>[개]아무개</td>
                    <td>2020-07-21</td>
                    <td>3</td>
                </tr>

            </tbody>
        </table>
        <hr style="width: 940px;">

        <nav class="pagebar" style="width: 500px; position: relative; margin: 20px auto;">
            <ul class="pagination">
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
            </ul>
            <a class="btn" id="btnadd"><i class="glyphicon glyphicon-plus"></i> 글쓰기</a>
        </nav>

    </div>
    
    <%@include file="/WEB-INF/views/inc/menu.jsp" %>

</body>

<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>
    $("#btnadd").click(function(){
        location.href="boardWrite.html";
    });

    var date = document.getElementById("date");
    var now = new Date();
    var sw = document.images["sw"];


</script>

</html>