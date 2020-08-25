<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminMain</title>
<style>
		
		/*------------------ 공통 시작--------------------*/
		
		/* 스플릿 hr */
        .splitHr {
            border : 1px solid #999;
            margin-left : 330px;
            width : 1400px;
        }
        
        
        
		
		
		
		/* --------------사내 공지사항 관련 css 시작--------------*/
       .basicBox {
            margin-left: 330px;
            margin-top: 50px;
            width: 1400px;
            height : 540px;
            padding: 20px;
        }
        
        /* 테이블 내 타이틀 중앙정렬 */
        #nttable th{
            text-align : center;
            background-color: #999;
        }

        #nttable {
            width : 100px;
            font-size: 1.2em;
        }
		
		/* 공지사항 안내 테이블 의 각 열의 길이조절 */
        #nttable th:nth-child(1) {width : 50px;}
        #nttable th:nth-child(2) {width : 400px;}
        #nttable th:nth-child(3) {width : 200px;}
        #nttable th:nth-child(4) {width : 100px;}
        #nttable th:nth-child(5) {width : 80px;}
        
        
        
        /* 게시판 내 요소 중앙정렬 해주기 -> 공지명은 왼쪽으로 */
        #nttable td {
            text-align: center;
        }

        #nttable tbody td:nth-child(2) {
            text-align: left;
            padding-left : 20px;
        }


        .pagebar {
            margin-left : 575px;
        }
        
        #slctp2 {
            margin-top : 10px;
            margin : 10px auto;
            margin-bottom: 10px;
            width : 400px;
            margin-left: 930px;
        }
        
        /* 사내공지사항 타이틀 */
        #empNoticeTitle {
            font-size : 1.7em;
            font-weight : bold;
        }
       /* 사내 공지사항 타이틀 강조 */
        #empNoticeTitleImport {
            
            font-size : .7em;
            color: #444444;
            position : relative;
            top : -2px;  
        }
        
        /* 새로운 공지 강조하는 역할 */
        .starpoint {
            color : red;
            border : 1px solid red;
            font-size : .9em;
            /* margin-left : 10px; */
        }
        
        /* 사내 공지사항 건드리면 공짓사항 수정하는 페이지로 이동한다 */
        #empNoticeTitle:hover {
            cursor : pointer;
            text-decoration: underline;
        }
        
        /* 글 제목을 누르면 해당글을 상세히 볼 수 있게 해준다. */
        #nttable td:nth-child(2):hover {
        	cursor : pointer;
        	text-decoration: underline;
        }
        
        /* 페이지 하단바  색 조정 */
        .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
               background-color:#999999;
           border-color: #eeeeee;
        }
        
        .pagination > li > a, .pagination > li > span{
          color: black;
        }
        
        
        
        /* --------------사내 공지사항 관련 css 끝--------------*/
        
       

</style>


<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
</head>

<body>
	<!-- -------------------사내공지 게시판 시작------------------------- -->
	<div class = "basicBox" style = "height : 600px">
        <div id = "selectable">
           <div id = "empNoticeTitle"><span id = "empNoticeTitleImport"><span><i class = "glyphicon glyphicon-pushpin"></i></span></span>&nbsp;사내 공지사항 안내</div>
           <div id = "slctp2">
	    		<div class="input-group">
	    			<input type="text" class="form-control" placeholder = "ex) 랜섬웨어로 인한 복구작업">
	    			<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
	    		</div>
            </div>
            <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>

                </tbody>
            </table>

        <!-- 하단 페이지 선택 바 -->
            <nav class = "pagebar">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class = "active"><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>

              </ul>
            </nav>
        </div>       
    </div>
    <!-- -------------------사내공지 게시판 끝------------------------- -->
    
    <hr class = "splitHr">
    
    
    
    <!-- -------------------방문자 & 예매율 그래프 시작------------------------- -->
    
    <style>
        
        /* 방문자 & 예매율 그래프 */
        #vistreserve {
            margin-left : 350px;
            font-size : 1.7em;
            font-weight : bold;
            margin-bottom : 50px;
        }  
        
        
         /* 그리드 사용 */
        .wrapper {
            width : 1400px;
            height : 600px;
            display : grid;
            grid-template-columns: 700px 700px;
            grid-template-rows: 100px 100px;
            /* border: 1px solid red; */
            margin-left : 330px;
            margin-top : 20px;
            
        }
        .wrapper div {
            /* border : 1px solid blue; */
        }
        .wrapper div:nth-child(1) {
            /* background-color: #F4F4F4; */
            width : 280px;
            /* margin-left : 20px; */
        }
        .wrapper div:nth-child(2) {
            margin-left : 10px;
            /* background-color: #F4F4F4; */
            width : 280px;

        }
        
        .wrapper div:nth-child(3) {
            margin-top : 10px;
            height : 500px;
            border: 3px solid #EEEEEE;
        }
        .wrapper div:nth-child(4) {
            margin-left : 10px;
            margin-top : 10px;
            height : 500px;
            border: 3px solid #EEEEEE;

        }

    </style>
    
    
    
    <div id = "vistreserve">방문자 & 예매율 그래프</div>
    
    <div class = "wrapper">
        <!-- 일별 방문자수 요약 -->
        <div style = "margin-left : 200px;">
            <h4 style="margin-right: 140px; color: #666;" class = "chartWord">방문자</h4>
            <span style="color: #555; font-size: 25px;" class = "chartWord">11.2k</span><span style="color:red"> ▲ 2.1k</span>
            <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>
        </div>

        <!-- 예매율 요약 -->
        <div style = "margin-left : 200px;">
            <h4 style="margin-right: 140px; color: #666;" class = "chartWord">예매율</h4>
            <span style="color: #555; font-size: 25px;" class = "chartWord">11.1%</span><span style="color: blue"> ▼ 1.6%</span>
            <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>
        </div>

        <!-- 일별 방문자 수 -->
        <div id = "container2">

        </div>    
        
        <!-- 예매율 -->
        
        <div id = "container1">
            
        </div>
    </div>
    
    <script>
    //일별 방문자수
    Highcharts.chart('container2', {
        colors: [
            "#8389E0"
        ],
        chart: {
            type: 'line'
        },
        title: {
            text: '2020-07-15 ~ 2020-07-21'
        },
        subtitle: {
            text: 'At-Ticket.com'
        },
        xAxis: {
            categories: ['15', '16', '17', '18', '19', '20', '21']
        },
        yAxis: {
            title: {
                text: '방문자수(k)'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: '일별 방문자(천)',
            data: [12.7, 15.0, 25.6, 27.8, 22.2, 23.8, 25.9]
        }]
    });
    
    // 예매율
    Highcharts.chart('container1', {
    colors: [
        "#92D050"
    ],
    chart: {
        type: 'column'
    },
    title: {
        text: '2020-07-15 ~ 2020-07-21'
    },
    subtitle: {
        text: 'At-Ticket.com'
    },
    xAxis: {
        categories: [
            '15',
            '16',
            '17',
            '18',
            '19',
            '20',
            '21',
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: '예매율(%)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f}%</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: '일별 예매율(%)',
        data: [26.0, 35.6, 18.5, 16.4, 14.1, 35.6, 26.9]

    }]
});
    
    </script>
    
   
    <!-- -------------------방문자 & 예매율 그래프 끝------------------------- -->
     
     
     <hr class = "splitHr" style = "margin-top : 100px;">
     

     
     
     <!-- -------------------매출관리 시작------------------------- -->
     
     <style>
       
        /* *--이전 다음 버튼 조작--* */
        .npbtn {
            position: relative;
        }

        /* 이전 버튼 */
        #prevbtn {
            position : absolute;
            top : 1750px;
            left : 330px;
        }
        #prevbtn:hover {
            cursor: pointer;
        }

        #nextbtn {
            position : absolute;
            top : 1750px;
            left : 1679px;

        }
        #nextbtn:hover {
            cursor:pointer;
        }
     	
     	/* *-- --* */
     	
 		/* 매출에 대한 표와 같은 볼거리  -> 하나하나의 자료라고 보면된다*/
        .inContent {
            float : left;
            position : relative;
            /* border: 1px solid blue; */
            width : 1400px;
            height : 500px;
        }

        /* 포스터1 */
        #backp1 {
            background-image: url("<%= request.getContextPath() %>/images/classic10.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }


        /* 포스터에 대한 내용1 */
        #innertextjam1 {
            width : 400px;
            height : 430px;
            border : 0px;

        }

        /* 포스터2 */
        #backp2 {
            background-image: url("<%= request.getContextPath() %>/images/classic11.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* 포스터3 */
        #backp3 {
            background-image: url("<%= request.getContextPath() %>/images/classic17.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }





        /* 엔터테이먼트 이미지  */
        .conttables > tbody > tr:nth-child(1) > td{
            
            width : 300px;
            height : 430px;
           
        }

        .innervector {
            float : left;
        }

        /* 스플릿 hr */
        .splitHr {
            border : 1px solid #999;
            margin-left : 330px;
            width : 1400px;
        }

        /* 매출관리 페이지 */
        #moneyTitle {
            margin-left : 350px;
            /* border: 1px solid black; */
            font-size : 1.7em;
            font-weight : bold;
            margin-bottom : 50px;
        }
        /* 매출관리 페이지 타이틀을 선택하면 상세페이지로 가게 만들것이다. */
        #moneyTitle:hover {
            cursor : pointer;
            text-decoration: underline;
        } 

        /* 방문자 & 예매율 그래프 */
        #vistreserve {
            margin-left : 350px;
            font-size : 1.7em;
            font-weight : bold;
            margin-bottom : 50px;
        }    
           
        /* 방문자 & 예매율 그래프 타이틀은 선택하면 상세 페에지로 이동*/
        #vistreserve:hover {
            cursor : pointer;
            text-decoration: underline;
        } 
        
        /* 매출액을 연속적으로 보여주기 위해서 위에 부모 div 역할 수행하는~ */
        #incomeParent {
            /* border : 1px solid red; */
            margin-top : 20px;
            margin-left : 330px;
            width : 1400px;
            height : 500px;
            overflow: hidden;
        }


        /* 매출액  */
        #income {
            /* border : 1px solid yellow; */
            margin-left : 50px;
            height : 500px;
            width : 5570px;
            position: relative;
            transition : all 1s;
            /* overflow: hidden; */
            /* margin-left: 40px; */
        }    
     
     </style> 
     
     
 <div class = "npbtn" id = "prevbtn" style = "z-index : 10;"><img src="<%= request.getContextPath() %>/images/slide-dir-prev.png" alt=""></div>
    <div id = "moneyTitle">매출관리</div>
    <div id = "incomeParent">
        <div id = "income">
    
            <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp1"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다   
                    </pre>
                </div>
                <div id="saleRateGraph" class = "innervector"></div>
            </div>

           <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp2"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다
                    </pre>
                </div>
                <div id="saleRateGraph1" class = "innervector"></div>
            </div>
           <!-- 1 element -->

           <!-- 1 element -->
            <div class = "inContent">
                <div id = "enterimg" class = "innervector">
                    <table class = "conttables">
                        <tr>
                            <td id = "backp3"></td>
                        </tr>
                    </table>
                </div>
                <div style = "float : left; margin-left : 10px;" >
                    <pre id = "innertextjam1">                     
            <span style = "font-size: 1.4em; font-weight: bold;">뮤지컬<미아 파밀리아></span>

                2020.06.09~2020.08.23

                예스24스테이지 2관    

            죽는 날까지 하늘을 우러러
                한점 부끄럼 없기를 
                잎새에 이는 바람에도
                나는 괴로와했다
                별을 노래하는 마음으로
          모든 죽어가는 것들을 사랑해야지
         그리고 나한테 주어진 길을 걸어가겠다
                
            오늘 밤에도 별이 바람에
                   스치운다   
                    </pre>
                </div>
                <div id="saleRateGraph2" class = "innervector"></div>
            </div>
           <!-- 1 element -->

            <!-- inContent -->
        </div>
    </div>
   
    <!-- 다음으로 가기 -->
    <div class = "npbtn" id = "nextbtn"><img src="<%= request.getContextPath() %>/images/slide-dir-next.png" alt=""></div>      
     
     
   	
	<script>
    //순이익 ~1 -> 이거 다시 고쳐야 한다 -> 배열로
    Highcharts.chart('saleRateGraph', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 10억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });



     //순이익 ~2 -> 이거 다시 고쳐야 한다
    Highcharts.chart('saleRateGraph1', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 1100억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });

      //순이익 ~3 -> 이거 다시 고쳐야 한다
    Highcharts.chart('saleRateGraph2', {
        colors: [
            "cornflowerblue",
            "orange",
            "#8389E0",
            "#92D050",
            "#555"
        ],
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: "pie",
        },
        title: {
            text: "sales Rate(총 매출액 : 1100억)",
        },
        tooltip: {
            pointFormat:
                "{series.name}: <b>{point.percentage:.1f}%</b>",
        },
        accessibility: {
            point: {
                valueSuffix: "%",
            },
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: "pointer",
                dataLabels: {
                    enabled: true,
                    format:
                        "<b>{point.name}</b>: {point.percentage:.1f} %",
                },
            },
        },
        series: [
            {
                name: "Brands",
                colorByPoint: true,
                data: [
                    {
                        name: "비용",
                        y:70
                        // y: 41.41,
                    },
                    {
                        name: "순이익",
                        // y: 33.48,
                        y:30
                        
                    }
                ],
            },
        ],
    });	
	
	
    // 다음 버튼 누를때
    var positionX = 0;//매출의 x좌표
    var positionY = 0;//매출의 y좌표
    var clickCount = 0;//페이지가 계속 넘어가면 안되므로 제한을 걸어준다
    var imgCount = 2;//이미지 개수-1

    $("#nextbtn").click(function(){

        if (clickCount < imgCount) {
            positionX -= 1400;
            $("#income").css("transform","translate(" + positionX +"px,0px)");   
            clickCount++;
        }
    });
    
    //이전 버튼 누를때
    $("#prevbtn").click(function(){

        if(clickCount > 0) {
            positionX += 1400;
            $("#income").css("transform","translate(" + positionX +"px,0px)");   
            clickCount--;
        }
    
    });
	
    
    
	</script>   	
   		
     
     <!-- -------------------매출관리 끝------------------------- -->
     
    
    
	 <%@include file="/WEB-INF/views/inc/menu.jsp" %> <!-- 왼쪽 메뉴 페이지 왜 세션유지가 안되는거지?... -->
<%-- 				<% out.flush();
			    RequestDispatcher dmenu = request.getRequestDispatcher("/WEB-INF/views/inc/menu.jsp");
				dmenu.include(request, response);
				%> --%>
					

<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	/* 기본적인 자바스크립트 */

</script>	


</body>
</html>