<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <%@include file="/WEB-INF/views/inc/asset.jsp"%>
    <link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
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

        small {
            color: #777;
            font-family: Arial;
            font-size: 27.3px;
            font-weight: lighter;
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
            margin-left: 490px;
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

        th {
            background-color: #999;
            /* color : white; */
        }

        #manipulate {
            margin-left: 1540px;
        }

        .modified {
            border: 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color: rgb(220, 220, 220);
            height: 35px;
            font-weight: bold
        }

        .modified:hover {
            color: white;
            /* background-color: #333; */
        }

        .input-group-addon:hover {
            cursor: pointer;
        }

        tr td:nth-child(4) a{
           text-decoration:none;
           color:black;
        } 
        
         tr td:nth-child(4) a:hover{
           color:red;
           
        } 

        /* 추가 */
        #list {
            margin-top: 10px;
        }

        li {
            margin-bottom: 10px;
        }
      	
    </style>

</head>

<body>

    <div id="title">
        <h1>
            고객 관리 <small>> Home </small>
        </h1>
    </div>


    <div style="margin-top: 30px;margin-left:480px;">
        <c:if test="${not empty search}">
            <div style="width: 300px; float: left;margin-bottom:0px;"
                class="message well well-sm">'${search}'(으)로 ${list.size()}건의 게시물을 검색했습니다.
             </div>
        </c:if>
        <!-- <select style="margin-left: 220px; width: 100px;" name="sel1"
			id="sel1" class="form-control">
			<option value="name">이름</option>
			<option value="tel">전화번호</option>
			<option value="id">회원아이디</option>
			<option value="ssn">주민번호</option>
		</select>  -->
		
        <form style="margin-left:1010px;" method="GET" action="/AtTicketProject/customer/admincustomerlist.do" id="searchForm">
            <div class="input-group search">
                <input placeholder="검색어를 입력하세요." type="text" class="form-control" aria-describedby="basic-addon2"
                    name="search" id="search" required value="${search}" autocomplete="off"> <span class="input-group-addon"
                    id="basic-addon2" style="cursor: pointer;" onclick="$('#searchForm').submit();"><span
                        class="glyphicon glyphicon-search"></span></span>
            </div>
        </form>
       
    </div>
   
    <div style="clear:both;"></div>
    
    <div id="box" style="margin-left: 200px; margin-top:30px;">
        <table style="width: 1220px; margin-left: 280px;" class="table  table-bordered table-striped table-condensed"
            id="tbl">
            <tbody id="tbody1">
                <thead>
                    <tr>
                        <th style="text-align: center;">
                        <input type="checkbox" name="cbAll"></th>
                        <th style="width: 80px;">번호</th>
                        <th style="width: 90px;">이름</th>
                        <th style="width: 110px;">아이디</th>
                        <th style="width: 200px;">주민번호</th>
                        <th style="width: 110px;">고객등급</th>
                        <th style="width: 160px;">이메일</th>
                        <th class="title" style="width: 150px; text-align: center;">전화번호</th>
                        <th class="title" style="width: 120px; text-align: center;">비번</th>
                        <th class="title" style="width: 200px; text-align: center;">주소</th>
                    </tr>
                </thead>
                <c:if test="${not empty search and list.size() == 0}">
                    <tr>
                        <td colspan="10">검색 결과가 없습니다.</td>
                    </tr>
                </c:if>
                <c:if test="${empty search and list.size() == 0}">
                    <tr>
                        <td colspan="10">검색 결과가 없습니다.</td>
                    </tr>
                </c:if>
                <c:forEach items="${list}" var="dto">
                    <tr>
                        <td><input type="checkbox" class="cb"></td>
                        <td>${dto.seq}</td>
                        <td>${dto.name}</td>
                        <td><a href="/AtTicketProject/customer/admincustomerinfo.do?seq=${dto.seq}&search=${search}">${dto.getId()}</a>
                               </td>
                        <td>${dto.getSsn()}</td>
                        <td>${dto.getGrade()}</td>
                        <td>${dto.getEmail()}</td>
                        <td>${dto.getTel()}</td>
                        <td>${dto.getPw()}</td>
                        <td>${dto.getAddr()}</td>
                    </tr>
                </c:forEach>
            </tbody>

        </table>
    </div>

    <div id="manipulate">
        <button class="modified" id="makebtn">
            <i class="glyphicon glyphicon-plus"></i>추가
        </button>

        <%-- <div role="dialog" id="dialog1">
            <ul id="list">
                <li>이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input style="width: 150px;" type="text" name="name"
                        id="name" class="data" autocomplete="off"></li>
                <li>이메일 &nbsp;&nbsp;&nbsp;&nbsp;: <input style="width: 150px;" type="text" name="email" id="email"
                        class="data" autocomplete="off">
                </li>
                <li>전화번호 : <input style="width: 150px;" type="text" name="tel" id="tel" class="data" autocomplete="off">
                </li>
                <li>주민번호 : <input style="width: 150px;" type="text" name="ssn" id="ssn" class="data" autocomplete="off">
                </li>
                <li>아이디 &nbsp;&nbsp;&nbsp;&nbsp;: <input style="width: 150px;" type="text" name="id" id="id"
                        class="data" autocomplete="off"></li>
                <li>비번 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input style="width: 150px;" type="text" name="pwd"
                        id="pwd" class="data" autocomplete="off"></li>
                <li>주소 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%@include
						file="/WEB-INF/views/inc/adminaddress.jsp"%></li>
            </ul>
        </div> --%>
        <button class = "modified" id = "modifybtn"><i class="glyphicon glyphicon-pencil"></i>수정</button>
        <button class="modified" id="delbtn">
            <i class="glyphicon glyphicon-trash"></i>삭제
        </button>
    </div>
    <div style="margin-left: 850px;">${pagebar}</div>

    <%@include file="/WEB-INF/views/inc/menu.jsp"%>
    <script>
		<%@include file = "/WEB-INF/views/inc/adminScript.jsp" %>	
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
        $("#sel1").change(function () {
            $(".form-control").focus();
        });


        for (var i = 2; i < tr.length; i++) {
            tr[i].children[2].onclick = function () {
                // location.href="hansiyeoncontent.html";

            };
        }

        cbAll.onchange = function () {
            for (var i = 0; i < cb.length; i++) {
                cb[i].checked = cbAll.checked;

            }
        }

        //삭제

        $("#delbtn").click(function () {
            if ($('input').is(':checked') == true) {
                if (confirm("정말로 삭제하시겠습니까?")) {

                }
            } else {
                alert("하나 이상을 체크하시오.");
            }

        });

        $("#name").keyup(function () {
            if (event.keyCode == 13)
                $("#email").focus();
        });

        $("#email").keyup(function () {
            if (event.keyCode == 13)
                $("#tel").focus();
        });

        $("#tel").keyup(function () {
            if (event.keyCode == 13)
                $("#ssn").focus();
        });

        $("#ssn").keyup(function () {
            if (event.keyCode == 13)
                $("#id").focus();
        });

        $("#id").keyup(function () {
            if (event.keyCode == 13)
                $("#pwd").focus();
        });

        $("#pwd").keyup(function () {
            if (event.keyCode == 13)
                $("#addr").focus();
        });

        //추가
        $("#dialog1").hide();

        $("#makebtn").click(function () {
           
                /* $("#dialog1").dialog({
                    title: "고객정보 추가",
                    width: 1000,
                    height: 400,
                    draggable: false,
                    resizable: false,
                    modal: true,
                    buttons: {
                        // "text":function(){alert();}
                        "추가": function () {
                            alert("고객 정보를 추가했습니다.");
                            $("#dialog1").dialog("close");
                        },
                        "취소": function () {
                            $("#dialog1").dialog("close");
                            //dialog에 관련된 함수를 dialog 밖에 없고 매개변수로 통제를 함
                        }
                    }
                }); */
                window.open("/AtTicketProject/customer/cuslistinsert.do","추가","width=880,height=550");
           
        });
        
        $("#modifybtn").click(function(){
        	 if ($('input').is(':checked') == true) {
                 /* $("#dialog1").dialog({
                     title: "고객정보 추가",
                     width: 1000,
                     height: 400,
                     draggable: false,
                     resizable: false,
                     modal: true,
                     buttons: {
                         // "text":function(){alert();}
                         "추가": function () {
                             alert("고객 정보를 추가했습니다.");
                             $("#dialog1").dialog("close");
                         },
                         "취소": function () {
                             $("#dialog1").dialog("close");
                             //dialog에 관련된 함수를 dialog 밖에 없고 매개변수로 통제를 함
                         }
                     }
                 }); */
                 window.open("/AtTicketProject/customer/cuslistupdate.do","수정","width=880,height=550");
             } else {
                 alert("하나 이상을 체크하시오.");
             }
        });

        $("#pagebar").val(${page}); // 서블릿이 준값을 기본값으로 

    </script>
</body>

</html>