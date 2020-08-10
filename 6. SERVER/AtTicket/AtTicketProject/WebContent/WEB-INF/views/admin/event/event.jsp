<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
<style>
 #title {
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        * {
            outline: none;
        }

        #info {
            margin-top: 30px;
            margin-left: 280px;
        }

        td {
            text-align: center;
        }

        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
           background-color:#999999;
           border-color: #eeeeee;
       }
        
      .pagination > li > a, .pagination > li > span{
          color: black;
      }
      
      th {
            background-color:  #999;
            /* color : white; */
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
        
</style>
</head>
<body>
 <div id="title">
        <h1 style="color: #555; font-weight: bold;
        font-family: Arial;
        font-size: 3em;">이벤트 관리 <small>> Home </small></h1>
    </div>

    <div id="info" style="position: relative; left: 300px;">
        <h2>이벤트 관리</h2>
        <div style="margin-bottom: 10px; margin-left: 430px;" id="header">
            <select style="float:left; margin-right: 20px; width: 100px;" name="sel1" id="sel1" class="form-control">
                <option value="name">제목</option>
                <option value="month">기간(월)</option>
                <option value="year">기간(년)</option>
                <option value="sale">구분</option>
            </select>

            <span class="search">
                <span class="form-group">
                    <span style="width: 300px;" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                        <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
                    </span>
                </span>
            </span>
        </div>
        <table style="width: 850px;" class="table table-striped table-bordered table-condensed" id="tbl">
            <tbody id="tbody1">
                <tr>
                    <th style="text-align: center;"><input type="checkbox" name="cbAll"></th>
                    <th class="title" style="width: 100px;text-align: center;">번호</th>
                    <th class="title" style="width: 150px;text-align: center;">제목</th>
                    <th class="title" style="width: 400px;text-align: center;">기간</th>
                    <th class="title" style="width: 200px;text-align: center;">구분</th>
                  
                <tr value="1">
                    <td><input type="checkbox" class="cb" name="checkRow" value="1"></td>
                    <td class="data" id="index">1</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
                <tr value="2">
                    <td><input type="checkbox" class="cb" name="checkRow" value="2"></td>
                    <td class="data" id="index">2</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
                <tr value="3">
                    <td><input type="checkbox" class="cb" name="checkRow" value="3"></td>
                    <td class="data" id="index">3</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
                <tr value="4">
                    <td><input type="checkbox" class="cb" name="checkRow" value="4"></td>
                    <td class="data" id="index">4</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
                <tr value="5">
                    <td><input type="checkbox" class="cb" name="checkRow" value="1"></td>
                    <td class="data" id="index">5</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
                <tr value="6">
                    <td><input type="checkbox" class="cb" name="checkRow" value="6"></td>
                    <td class="data" id="index">6</td>
                    <td class="data">출석이벤트</td>
                    <td class="data">2020.01.01-2020.12.31</td>
                    <td class="data">프로모션</td>
                </tr>
        	</tbody>
        </table>
       
        <div style="margin-left: 700px; width: 150px;">
            <button class = "modified" id = "makebtn"><i class="glyphicon glyphicon-plus"></i>추가</button>
            <button class="modified" id="viewbtn">보기</button>
            <button class = "modified" id = "delbtn"><i class="glyphicon glyphicon-trash"></i>삭제</button>
        </div>
        <nav style="margin-left: 230px;" class = "pagebar">
            <ul class="pagination">
              <li>
                <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li class = "active"><a href="#">7</a></li>
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
  
	<%@include file="/WEB-INF/views/inc/menu.jsp"%>
	<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
	var cbAll = document.all.cbAll; // 일괄 체크박스
    var child;
    var cb = document.getElementsByClassName("cb");

    // 모두 선택 기능, 페이지 이동 
    cbAll.onchange = function () {
        for (var i = 0; i < cb.length; i++) {
            cb[i].checked = cbAll.checked;
        }
    }

    $("#viewbtn").click(function () {
            if ($('input').is(':checked') == true) {
                location.href = "/AtTicketProject/event/eventinfo.do";
            } else {
                alert("하나 이상을 체크하시오.");
            }
        });

        //추가
     $("#makebtn").click(function () {
        window.open("/AtTicketProject/event/eventinsert.do", "추가", "width=500, height=330");
    });

     //삭제
     $("#delbtn").click(function () {
            if ($('input').is(':checked') == true) {
                if (confirm("정말로 삭제하시겠습니까?")) {
                    $("input[name=checkRow]:checked").each(function () {
                        var tr_value = $(this).val();
                        var tr = $("tr[value='" + tr_value + "']");
                        tr.remove();
                    });
                }
            } else {
                alert("하나 이상을 체크하시오.");
            }

        });

   document.getElementsByTagName("a").onclick=function(){
            console.log(1);
            event.srcElement.location.href="event.html";
   };


	</script>
</body>
</html>