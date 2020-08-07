<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
#title {
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        h1 {
            font-weight: bold;
            font-family: Arial;
            font-size: 3em;
            color: #555;
        }

        body {
            outline: none;
        }

        .search {
            float: left;
            width: 200px;
        }

        #sel1 {
            width: 150px;
            float: left;
        }

        #header {
            width: 1000px;
            margin-top: 10px;
            background-color: gray;
        }

        #box {
            margin: 70px auto;
        }

        th {
            text-align: center;
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

        #manipulate {
            margin-left: 1100px;
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

        .input-group-addon:hover{
            cursor: pointer;
        }

        tr td:nth-child(3):hover {
            cursor: pointer;
            text-decoration: underline;
        }
</style>
<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">

</head>
<body>
	<%@include file="/WEB-INF/views/inc/menu.jsp" %>
	 <div id="title">
        <h1>고객 관리 <small>> Home </small></h1>
    </div>

    <div style="margin-left: 870px;" id="header">
        <select style="margin-left: 220px; width: 100px;" name="sel1" id="sel1" class="form-control">
            <option value="name">이름</option>
            <option value="tel">전화번호</option>
            <option value="id">회원아이디</option>
            <option value="ssn">주민번호</option>
        </select>

        <span style="margin-left: 20px;" class="search">
            <span class="form-group">
                <span style="width: 300px;" class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
                </span>
            </span>
        </span>
    </div>

    <div id="box" style="margin-left: 300px;">
        <table style="width: 930px; margin-left: 280px;" class="table  table-bordered table-striped table-condensed"
            id="tbl">
            <tbody id="tbody1">
            <thead>
                <tr>
                    <th style="text-align: center;"><input type="checkbox" name="cbAll"></th>
                    <th style="width: 50px;">번호</th>
                    <th style="width: 90px;">이름</th>
                    <th style="width: 110px;">아이디</th>
                    <th style="width: 160px;">주민번호</th>
                    <th style="width: 110px;">고객등급</th>
                    <th style="width: 160px;">이메일</th>
                    <th class="title" style="width: 150px;text-align: center;">전화번호</th>
                    <th class="title" style="width: 120px;text-align: center;">비번</th>
                    <th class="title" style="width: 250px;text-align: center;">주소</th>
                </tr>
               </thead>
               <!-- not empty search and  -->
               <c:if test = "${list.size() == 0}">
                    <tr>
                    	<td colspan = "8">검색 결과가 없습니다.</td>
                    </tr>
                </c:if>

				<c:forEach items="${list}" var="dto">
					<tr>
						<td><input type="checkbox" class="cb"></td>
						<td>${dto.getSeq()}</td>
						<td>${dto.getName}</td>
						<td>${dto.getId()}</td>
						<td>${dto.getSsn()}</td>	
						<td>${dto.getGrade()}</td>
						<td>${dto.getEmail()}</td>
						<td>${dto.getTel()}</td>	
						<td>${dto.getPwd()}</td>
						<td>${dto.getAddr()}</td>
					</tr>
				</c:forEach>
				

			</tbody>
        </table>
        <div id="manipulate">
            <button class="modified" id="makebtn"><i class="glyphicon glyphicon-plus"></i> 추가</button>
            <button class = "modified" id = "delbtn"><i class="glyphicon glyphicon-trash"></i>삭제</button>
        </div>
    </div>
    
    <nav style=" margin-top: -70px; margin-left:830px; width: 500px;" class = "pagebar">
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
	<script>
		<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
		  var index = 1;
	        var list = [];
	        var count = 10;
	        var tbl = document.getElementById("tbl");
	        var tbody1 = document.getElementById("tbody1");
	        var sel1 = document.getElementById("sel1");
	        var tr = document.getElementsByTagName("tr");
	        var cbAll = document.all.cbAll; // 일괄 체크박스
	        var cb = document.getElementsByClassName("cb");
	        var td = document.getElementsByTagName("td");
	      
	        // select에서 바뀌면 검색창에 focus가 가도록 한 구문
	       $("#sel1").change(function(){
	            $(".form-control").focus();
	        });
	      
	        // 테이블 만드는 구문 
	        // box.appendChild(table);
	        /* if (count != 0) {
	            index = 1;

	            for (var i = 0; i < count; i++) {
	        
	                list = ['<input type="checkbox" class="cb">',index, "홍길동", "hongil", "932921-1859144","010-1234-5555","cheryy1234","서울시 강남구 역삼동"];
	                tr = document.createElement("tr");
	               
	                for (var j = 0; j < 8; j++) {
	                    var td = document.createElement("td");
	                    td.innerHTML = list[j];
	                    tr.appendChild(td);
	                }
	                index++;
	                tbody1.appendChild(tr);

	                tr.children[2].onclick = function () {
	                    console.log(1);
	                    location.href = "customerInfo.html"
	                };
	            }

	        } else {

	            tr = document.createElement("tr");
	            tbody1.innerText = "일치하는 데이터가 없습니다.";

	        } */

	        for (var i = 2; i < tr.length; i++) {
	            tr[i].children[2].onclick = function () {
	                // location.href="hansiyeoncontent.html";
	            };
	        }

	        cbAll.onchange = function(){
	            for(var i=0;i<cb.length;i++){
	                    cb[i].checked = cbAll.checked;
	                }
	        }

	        $("#makebtn").click(function () {
	            // if ($('input').is(':checked') == true) {
	            //     location.href = "customerInfo.html";
	            // } else {
	            //     alert("하나 이상을 체크하시오.");
	            // }
	            window.open("customerInfoinsert.html","추가","width=880,height=450")
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
	</script>
</body>
</html>