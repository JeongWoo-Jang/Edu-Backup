<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
    <style>


        #cal {
            position: relative;
            top: 15px;
            left: 5px;
        }

        body{
            font-family: 'NanumBarunGothic';
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

        #content {
            /* border: 1px solid red; */
            width: 80%;
            height: 1880px;
            position: absolute;
            left: 250px;
            top: 120px;
        }

        #tbl {
            /* border: 1px solid gray; */
            border-collapse: collapse;
            width: 800px;
            height: 100px;
            position: relative;
            margin: 0px auto;
        }
        #tbl th {
            text-align: center;            
            background-color: #999;
            height: 30px;
        }
        #tbl td {
            height: 30px;
        }
        #tbl th:nth-child(1), #tbl td:nth-child(1) {
            width: 70px;
            text-align: center;
        }
        #tbl th:nth-child(2), #tbl td:nth-child(2) {
            width: 70px;
            text-align: center;
        }
        #tbl th:nth-child(3), #tbl td:nth-child(3) {
            width: 100px;
            text-align: center;
        }
        #tbl th:nth-child(4), #tbl td:nth-child(4) {
            width: 200px;
            padding-left: 10px;
            text-align: center;
        }
        #tbl th:nth-child(5), #tbl td:nth-child(5) {
            width: 300px;
            text-align: center;
        }
        
        #btns {
            width: 600px;
            position: relative;
            margin-left: 940px;
            outline: none;
            font-weight: border;
            height : 35px;
            font-weight: bold;
            margin-top: 10px;
        }
        #btns > a {
            background-color: #999;
            color : rgb(220,220,220);
            margin: 3px;
            box-shadow: none;
            border: 0px;
        }
        #btns > a:hover {
            color: white;
        }
        
        /* 페이징바 색상 */
        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
            background-color:#999999;
            border-color: #eeeeee;
        }
        
        .pagination > li > a, .pagination > li > span{
            color: black;
        }

         #slctp1 {
            width: 250px;
            /* margin-top: px; */
            position: relative;
            left: 365px;
            top: 40px;
        }
        #slctp2 {
            margin-top : 10px;
            margin-bottom: 10px;
            margin-left: 860px;
            /* margin : 10px auto; */
            width : 300px;
        }
        .selectNotice {
                /* border: 1px solid black; */
                text-align: center;
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
        }
        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color : #111;
            font-weight: bold;
        }
        
    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminShow</title>
   
</head>

<body>

    <div id = "title">
        <h1 style="color:#555">공연 관리 <small> > Home  </small></h1>
    </div>
	<%@include file="/WEB-INF/views/inc/menu.jsp" %>


    <div id="content">

        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>내림차순</button>
        </div>

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>

        <table id="tbl" class="table table-striped table-bordered table-condensed">
            <tbody id="tbody">
                <tr>
                    <th>선택</th>
                    <th>번호</th>
                    <th>장르</th>
                    <th>제목</th>
                    <th>기간</th>

                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>1</td>
                    <td>뮤지컬</td>
                    <td>렌트</td>
                    <td>2020.07.20-2020.09.17</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>2</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>3</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>4</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>5</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>6</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>7</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>8</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>9</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>10</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>11</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>12</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>13</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>14</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="cb" name="is_check"></td>
                    <td>15</td>
                    <td>뮤지컬</td>
                    <td>마틸다</td>
                    <td>2020.06.11-2020.08.24</td>
                </tr>
                
            </tbody>
        </table>
        
        <div id="btns">
            <a class="btn btn-primary" id="btnadd"><i class="glyphicon glyphicon-plus"></i> 추가</a>
            <a class="btn btn-primary" id="btnmodify"><i class="glyphicon glyphicon-pencil"></i> 수정</a>
            <a class="btn btn-primary" id="btndelete"><i class="glyphicon glyphicon-trash"></i> 삭제</a>
        </div>

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
            
        </nav>
        

       

    </div>

</body>
<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
    
    // 추가
    $("#btnadd").click(function(){
        // window.location.href="adminShowAdd.html";
        window.open("adminShowAdd.html","_self");
    });
    // 수정
    $("#btnmodify").click(function(){
        if ($("input:checkbox[name=is_check]:checked").length > 1 || $("input:checkbox[name=is_check]:checked").length < 1){
            alert("하나만 선택하세요.");
        }else {
            //선택된 체크박스의 내용 불러오기

            // window.location.href="adminShowModify.html";
            window.open("adminShowModify.html","_self");
        }
    });
    // 삭제
    $("#btndelete").click(function(){
        var result = confirm("정말 삭제하시겠습니까?");
        console.log(result);
        if(result) {
            alert("삭제되었습니다.")
        }else {

        }
    });
    

</script>

</html>