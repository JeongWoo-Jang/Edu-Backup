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

small {
	color: #777;
	font-family: Arial;
	font-size: 27.3px;
	font-weight: lighter;
}

body {
	outline: none;
}

#info {
	margin-top: 30px;
	margin-left: 280px;
}

td {
	text-align: center;
}

th {
	background-color: #999;
	/* color : white; */
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

.customertitle {
	margin-bottom: 20px;
	margin-top: 20px;
}

#img1 {
	width: 500px;
	margin-top: 20px;
	margin-left: -200px;
}

th {
	text-align: center;
}

.btnAll {
	margin-left: 640px;
	width: 200px;
}

#manipulate6{
	margin-left:750px;
}
</style>
</head>
<body>

	<div id="title">
		<h1
			style="color: #555; font-weight: bold; font-family: Arial; font-size: 3em;">
			회원정보 <small>> 고객 관리 > Home </small>
		</h1>
	</div>

	<div id="info" style="margin-left: 700px;">
		<h2 class="customertitle">최근 예매내역</h2>

		<div id="box1" style="width: 1000px;">
			<table class="table table-bordered" style="width: 800px">
				<tr>
					<th style="text-align: center; width: 50px;"><input
						type="checkbox" name="cbAll1"></th>
					<th style="width: 100px; vertical-align: middle;">예매일</th>
					<th style="vertical-align: middle; width: 150px;">예매번호</th>
					<th style="vertical-align: middle;">공연명</th>
					<th style="vertical-align: middle; width: 100px;">관람일시</th>
					<th style="vertical-align: middle; width: 100px;">예매상태</th>

				</tr>
				<tr>
					<td><input type="checkbox" class="cb1"></td>
					<td>2020-05-01</td>
					<td>A10001</td>
					<td>오페라의 유령</td>
					<td>2020-05-01</td>
					<td>만료</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="cb1"></td>
					<td>2020-05-01</td>
					<td>A10001</td>
					<td>오페라의 유령</td>
					<td>2020-05-01</td>
					<td>만료</td>
				</tr>

			</table>
			<div class="btnAll" id="manipulate1">
				<button class="modified" id="makebtn1">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button>
				<button class="modified" id="modifybtn1">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button>
			</div>
			<h2 class="customertitle">Egg포인트 적립내역</h2>

			<div id="box1" style="width: 1000px;">
				<table class="table table-bordered" style="width: 800px">
					<tr>
						<th style="text-align: center; width: 50px;"><input
							type="checkbox" name="cbAll2"></th>
						<th style="width: 200px; vertical-align: middle;">공연명(예매번호)</th>
						<th style="vertical-align: middle;">적립일</th>
						<th style="vertical-align: middle;">Egg포인트</th>
						<th style="vertical-align: middle;">적립상태</th>
						<th style="vertical-align: middle;">적립유형</th>
					</tr>
					<tr>
						<td><input type="checkbox" class="cb2"></td>
						<td>A12100</td>
						<td>2020-02-06</td>
						<td>1000</td>
						<td>유효</td>
						<td>구매포인트</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="cb2"></td>
						<td>A12100</td>
						<td>2020-02-06</td>
						<td>1000</td>
						<td>유효</td>
						<td>구매포인트</td>
					</tr>
				</table>
			</div>
			<div class="btnAll" id="manipulate2">
				<button class="modified" id="makebtn2">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button>
				<button class="modified" id="modifybtn2">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button>
			</div>
			<h2 class="customertitle">관심 공연</h2>

			<div id="box1" style="width: 1000px;">
				<table class="table table-bordered" style="width: 800px">
					<tr>
						<th style="text-align: center; width: 50px;"><input
							type="checkbox" name="cbAll3"></th>
						<th style="width: 100px; vertical-align: middle;">공연명</th>
						<th style="vertical-align: middle;">기간</th>
						<th style="vertical-align: middle;">장소</th>
					</tr>

					<tr>
						<td><input type="checkbox" class="cb3"></td>
						<td>오페라의 유령</td>
						<td>2020-05-01 ~ 2020-12-25</td>
						<td>강남 예술의 극장</td>
					</tr>

					<tr>
						<td><input type="checkbox" class="cb3"></td>
						<td>오페라의 유령</td>
						<td>2020-05-01 ~ 2020-12-25</td>
						<td>강남 예술의 극장</td>
					</tr>
				</table>
			</div>
			<div class="btnAll" id="manipulate3">
				<button class="modified" id="makebtn3">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button>
				<button class="modified" id="modifybtn3">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button>
			</div>
			<h2 class="customertitle">관람 공연</h2>

			<div id="box1" style="width: 1000px;">
				<table class="table table-bordered" style="width: 800px">
					<tr>
						<th style="text-align: center; width: 50px;"><input
							type="checkbox" name="cbAll4"></th>
						<th style="width: 100px; vertical-align: middle;">공연명</th>
						<th style="vertical-align: middle;">기간</th>
						<th style="vertical-align: middle;">장소</th>
					</tr>
					<tr>
						<td><input type="checkbox" class="cb4"></td>
						<td>오페라의 유령</td>
						<td>2020-05-07 ~ 2020-12-30</td>
						<td>강남 예술의 극장</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="cb4"></td>
						<td>오페라의 유령</td>
						<td>2020-05-07 ~ 2020-12-30</td>
						<td>강남 예술의 극장</td>
					</tr>
				</table>
			</div>
			<div class="btnAll" id="manipulate4">
				<button class="modified" id="makebtn4">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button>
				<button class="modified" id="modifybtn4">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button>
			</div>
			<h2 class="customertitle">쿠폰</h2>

			<div id="box1" style="width: 1000px;">
				<table class="table table-bordered" style="width: 800px">
					<tr>
						<th style="text-align: center; width: 50px;"><input
							type="checkbox" name="cbAll5"></th>
						<th style="width: 100px; vertical-align: middle;">할인금액</th>
						<th style="vertical-align: middle;">사용조건</th>
						<th style="vertical-align: middle;">사용기간</th>
						<th style="vertical-align: middle;">등록일</th>

					</tr>

					<tr>
						<td><input type="checkbox" class="cb5"></td>
						<td>1000</td>
						<td>3만원 이상 구매시</td>
						<td>2020-09-10</td>
						<td>2020-05-01</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="cb5"></td>
						<td>1000</td>
						<td>3만원 이상 구매시</td>
						<td>2020-09-10</td>
						<td>2020-05-01</td>
					</tr>


				</table>
			</div>
			<div class="btnAll" id="manipulate5">
				<button class="modified" id="makebtn5">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button>
				<button class="modified" id="modifybtn5">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button>
			</div>
			<h2 class="customertitle">프로필 사진</h2>

			<div id="box1" style="width: 1000px;">
				<table class="table table-bordered" style="width: 800px">
					<tr>
						<th
							style="width: 100px; vertical-align: middle; text-align: center;">사진</th>
						<td style="width: 1000px;">
							<div style="margin-left: -500px; margin-top: 15px;">
								<label for="txtphoto"></label><input type="file" id="txtphoto"
									style="display: inline-block; width: 200px;">
							</div>
							<div class="img_wrap">
								<img id="img1">
							</div>
						</td>

					</tr>
				</table>
			</div>

			<div class="btnAll" id="manipulate6">
				<!-- <button class="modified" id="makebtn6">
					<i class="glyphicon glyphicon-plus"></i>추가
				</button> -->
				<button class="modified" id="modifybtn6">
					<i class="glyphicon glyphicon-pencil"></i>수정
				</button>
				<!-- <button class="modified" id="delbtn">
					<i class="glyphicon glyphicon-trash"></i>삭제
				</button> -->
			</div>
		</div>
	</div>

	<%@include file="/WEB-INF/views/inc/menu.jsp"%>
	<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	
	var cbAll1 = document.all.cbAll1; // 일괄 체크박스
    var cb1 = document.getElementsByClassName("cb1");

    // 모두 선택 기능, 페이지 이동 
    cbAll1.onchange = function () {
        for (var i = 0; i < cb1.length; i++) {
            cb1[i].checked = cbAll1.checked;
        }
    }

    var cbAll2 = document.all.cbAll2; // 일괄 체크박스
    var cb2 = document.getElementsByClassName("cb2");

    // 모두 선택 기능, 페이지 이동 
    cbAll2.onchange = function () {
        for (var i = 0; i < cb2.length; i++) {
            cb2[i].checked = cbAll2.checked;
        }
    }


    var cbAll3 = document.all.cbAll3; // 일괄 체크박스
    var cb3 = document.getElementsByClassName("cb3");

    // 모두 선택 기능, 페이지 이동 
    cbAll3.onchange = function () {
        for (var i = 0; i < cb3.length; i++) {
            cb3[i].checked = cbAll3.checked;
        }
    }

    var cbAll4 = document.all.cbAll5; // 일괄 체크박스
    var cb4 = document.getElementsByClassName("cb4");

    // 모두 선택 기능, 페이지 이동 
    cbAll4.onchange = function () {
        for (var i = 0; i < cb4.length; i++) {
            cb4[i].checked = cbAll4.checked;
        }
    }

    var cbAll5 = document.all.cbAll5; // 일괄 체크박스
    var cb5 = document.getElementsByClassName("cb5");

    // 모두 선택 기능, 페이지 이동 
    cbAll5.onchange = function () {
        for (var i = 0; i < cb5.length; i++) {
            cb5[i].checked = cbAll5.checked;
        }
    }
    
    //추가

    $("#makebtn1").click(function () {
        window.open("/AtTicketProject/customer/cusreservationinsert.do", "예매추가", "width=700,height=430");
    });
    
    
     $("#makebtn2").click(function () {
        window.open("/AtTicketProject/customer/cuspointinsert.do", "포인트 적립추가", "width=500,height=300");
    });

  
     $("#makebtn3").click(function () {
        window.open("/AtTicketProject/customer/cusinterestconcertinsert.do", "관심공연 추가", "width=600,height=350");
    });

   
     $("#makebtn4").click(function () {
        window.open("/AtTicketProject/customer/cusviewconcertinsert.do", "관람공연 추가", "width=600,height=350");
    });

  
     $("#makebtn5").click(function () {
        window.open("/AtTicketProject/customer/cuscouponinsert.do", "쿠폰 추가", "width=600,height=400");
    });
     

 	/* $("#makebtn6").click(function() {
 		if (confirm("정말로 추가하시겠습니까?")) {
 			location.href = "adminCustomer.html";
 		}
 	}); */


    //수정 
    
     $("#modifybtn1").click(function () {
        window.open("/AtTicketProject/customer/cusreservationupdate.do", "예매수정", "width=700,height=430");
    });

    
     $("#modifybtn2").click(function () {
        window.open("/AtTicketProject/customer/cuspointupdate.do", "포인트 적립수정", "width=500,height=300");
    });

  
     $("#modifybtn3").click(function () {
        window.open("/AtTicketProject/customer/cusinterestconcertupdate.do", "관심공연 수정", "width=600,height=350");
    });

   
     $("#modifybtn4").click(function () {
        window.open("/AtTicketProject/customer/cusviewconcertupdate.do", "관람공연 수정", "width=600,height=350");
    });

  
     $("#modifybtn5").click(function () {
        window.open("/AtTicketProject/customer/cuscouponupdate.do", "쿠폰 수정", "width=600,height=400");
    });
     
  
    $("#modifybtn6").click(function () {
        if(confirm("정말로 수정하시겠습니까?")){
            location.href = "adminCustomer.html";
        }
    });


	</script>
</body>
</html>