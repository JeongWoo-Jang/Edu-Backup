<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
	
    <style>

        #content {
            /* border: 1px solid red; */
            width: 86.5%;
            height: 1880px;
            position: absolute;
            left: 250px;
            top: 120px;
        }

        #tabs{
            width: 1000px;
            margin-left: 30px;
        }
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }
        .wrapper {
            /* border: 1px solid black; */
            position: relative;
            display: grid;
            grid-template-columns: 400px 400px 650px;
            grid-template-rows: 100px 420px 450px;
            margin-left: 20px;
        }
        .item1 {
            grid-column-start: 1;
            grid-column-end: 2;
            text-align: center;
            margin: 7px;
        }
        .item2 {
            text-align: center;
            grid-column-start: 2;
            grid-column-end: 3;
            margin: 7px;
        }
        .item3 {
            /* border: 1px solid black; */
            width: 640px;
            height: 515px;
            border-radius: 10px; 
            background-color: rgb(245, 245, 245);
            grid-column: 3/4;
            grid-row: 1/2;
            padding: 20px;
            margin-top: 5px;
            margin-left: 7px;
        }
        .item4 { grid-column: 1/2; border: 3px solid rgb(244, 244, 244); border-radius: 10px; width: 390px; margin-left: 5px;}
        .item5 { grid-column: 2/3; border: 3px solid rgb(244, 244, 244); border-radius: 10px; width: 390px; margin-left: 5px;}
        .item6 { grid-column: 1/3; border: 3px solid rgb(244, 244, 244); border-radius: 10px; width: 790px; margin-top: 10px; margin-left: 5px;}
        .item7 { grid-column: 3/4; border: 3px solid rgb(244, 244, 244); border-radius: 10px; height: 440px; width: 645px; margin-left: 5px; margin-top: 10px;}

        #rtbl {
            width: 600px;
            height: 50px;
            overflow: hidden;
            margin-top: 20px;
        }
        #rtbl th {
            border-bottom: 1px solid #ccc;
            border-top: 1px solid #ccc;
            text-align: center;
        }
        #rtbl th:nth-child(1) { width: 50px; }
        #rtbl th:nth-child(2) { width: 70px; }
        #rtbl th:nth-child(3) { width: 100px; }
        #rtbl th:nth-child(4) { width: 250px; }
        #rtbl th:last-child { width: 100px;}
        /* #rtbl tr:first-child { height: 70px; }
        #rtbl tr { height: 300px;  text-align: center; } */
        

        #slideItem {
            /* border: 1px solid gray; */
            width: 600px;
            height: 280px;
            position:relative;
            overflow: hidden;
            margin-top: 25px;

        }
        .slide{
            /* border: 1px solid red; */
            height: 280px; /* 이미지 크기 * 이미지 개수 + 여유 */
            position:absolute;	
        }
        .slide li{
            display: block;
            /* margin-bottom: 130px; */
            /* position: absolute; */

        }
        .slide > li > img{
            width:200px; 
            /* position: absolute; */
            margin-left: -5px; 
        }

        .slide > li > span {font-size: 18px; margin-top:120px;}

        .slide > li > span:nth-child(1) { margin-left: -20px;}
        .slide > li > span:nth-child(2) { margin-left: 30px; display:inline-block; width: 70px;}
        .slide > li > span:nth-child(3) { margin-left: 27px; display:inline-block; width: 100px;}
        .slide > li > span:last-child { margin-left: 65px; display:inline-block; width: 65px;}

        #aa {
            text-decoration: none;
            color: #777;
            position: relative;
            left: 530px;    
            top: 50px; 
            display: block;
        }
        #aa:link { color: #999; text-decoration: none;}
        #aa:visited { color: #999; text-decoration: none;}
        #aa:hover { color: #999; text-decoration: none;}


    </style>

    <style type="text/css">
    /* 그래프*/
        .highcharts-figure, .highcharts-data-table table {
            min-width: 360px; 
            max-width: 800px;
            margin: 1em auto;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #EBEBEB;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }
        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }
        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }
        .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
            padding: 0.5em;
        }
        .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }
        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }


    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminViews</title>

    <script src="../js/highcharts.js"></script>
</head>

<body>
    <div id = "title">
        <h1 style="color:#555">방문자 통계 <small> > Home  </small></h1>
    </div>

	<%@include file="/WEB-INF/views/inc/menu.jsp" %>
	
    <div id="content">

        <div class="wrapper">
            <div class="item1" style="border-radius: 10px; background-color: rgb(244, 244, 244);">
                <h4 style="margin-right: 140px; color: #666;">방문자</h4>
                <span style="color: #555; font-size: 25px;">11.2k</span><span style="color:red"> ▲ 2.1k</span>
                <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>
            </div>
            <div class="item2" style="border-radius: 10px; background-color: rgb(244, 244, 244);">
                <h4 style="margin-right: 140px; color: #666;">예매율</h4>
                <span style="color: #555; font-size: 25px;">11.1%</span><span style="color: blue"> ▼ 1.6%</span>
                <span class="glyphicon glyphicon-stats" style="font-size: 35px; margin-left: 100px; color: #e09b9b;"></span>

            </div>
            <div class="item3">
                <!-- 실시간 공연 예매 랭킹 -->
                <h4>실시간 공연 예매 랭킹</h4>

                <table id="rtbl">
                    <tbody>
                        <tr>
                            <th>순위</th>
                            <th>장르</th>
                            <th>제목</th>
                            <th>포스터</th>
                            <th>예매율</th>
                        </tr>
                    </tbody>
                </table>

                <div id="slideItem">
                    <ul class="slide">
                        <li>
                            <span>1</span>
                            <span>뮤지컬</span> 
                            <span>cats</span> 
                            <img src="../images/notice3.jpg">
                            <span>3.8%</span>
                        </li>

                        <li>
                            <span>2</span> 
                            <span>뮤지컬</span> 
                            <span>베르테르</span> 
                            <img src="../images/notice1.jpg" alt="">
                            <span>2.6%</span>

                        </li>
                        <li>
                            <span>3</span> 
                            <span>뮤지컬</span> 
                            <span>레베카</span> 
                            <img src="../images/music11.jpeg" alt="">
                            <span>1.8%</span>

                        </li>
                        <li>
                            <span>4</span> 
                            <span>콘서트</span> 
                            <span>팬텀싱어</span> 
                            <img src="../images/consert6.jpeg">
                            <span>1.3%</span>

                        </li>
                        <li>
                            <span>5</span> 
                            <span>뮤지컬</span> 
                            <span>머더발라드</span> 
                            <img src="../images/music10.jpeg" alt="">
                            <span>1.2%</span>

                        </li>
                    </ul>
                </div>

                <a href="Ranking.html" id="aa" style="width: 100px;">자세히 보기</a>
    

            </div>

            <div class="item4">
                <figure class="highcharts-figure">
                    <div id="container2"></div>
                </figure>
            </div>
            <div class="item5">
                <figure class="highcharts-figure">
                    <div id="container1"></div>
                </figure>
            </div>
            <div class="item6">
                <figure class="highcharts-figure">
                    <div id="container3"></div>
                </figure>
            </div>
            <div class="item7">
                <figure class="highcharts-figure">
                    <div id="container4"></div>
                </figure>
            </div>

        </div>

  


    </div>


</body>
<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>


    //실시간 공연 예매 랭킹
    var idx = 0; // 함수 호출 횟수
    var i=0; // 이미지 인덱스
    var imgNum=5; // 이미지 개수
    var imgSize=280; // 이미지 크기

    var imgs = ["notice3.jpg","notice1.jpg","music11.jpeg", "consert6.jpeg","music10.jpeg"];
    var category = ["<span>뮤지컬</span>","<span>뮤지컬</span>","<span>뮤지컬</span>","<span>콘서트</span>","<span>뮤지컬</span>"];
    var titles = ["<span>cats</span>","<span>베르테르</span>","<span>레베카</span>","<span>팬텀싱어</span>","<span>머더발라드</span>"];
    var booking = ["<span>3.8%</span>","<span>2.6%</span>","<span>1.8%</span>","<span>1.3%</span>","<span>1.2%</span>"];

    function imgSlide() {
        idx++;
        if(i > 4){
            i=0;
        }
        $('.slide').css({"top":"-20px"});
        $('.slide').stop().animate({'top' : -imgSize+"px"}, "slow");


        if(idx > 1) {
            $('.slide>li:first').remove(); 
        
            $('.slide').append('<li><span>' + (i+1) +'</span>'+ category[i] + titles[i] +
            '<img style="margin-left:5px" src="../images/'+imgs[i]+'" alt="">' + booking[i] + '</li>');
            i++;
        }

        
    }

    setInterval(function() { imgSlide() }, 4000);

    //장르별 예매율
    Highcharts.chart("container4", {
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
            text: "장르별 예매율",
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
                        name: "콘서트",
                        y: 41.41,
                        sliced: true,
                        selected: true,
                    },
                    {
                        name: "뮤지컬",
                        y: 33.48,
                    },
                    {
                        name: "전시",
                        y: 12.45,
                    },
                    {
                        name: "클래식",
                        y: 5.87,
                    },
                    {
                        name: "연극",
                        y: 6.79,
                    },
                ],
            },
        ],
    });

    
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

    //성별/연령별
    var categories = [
        '10-14', '15-19',
        '20-24', '25-29', '30-34', '35-39', '40-44',
        '45-49', '50-54', '55-59', '60-64', '65-69',
        '70-74', '75-79', '80-84', '85-89'
    ];

    Highcharts.chart('container3', {
        colors: [
            "cornflowerblue","orange"
        ],
        chart: {
            type: 'bar'
        },
        title: {
            text: '성별/연령별 예매율  통계'
        },
        subtitle: {
            text: 'At-Ticket.com'
        },
        accessibility: {
            point: {
                valueDescriptionFormat: '{index}. Age {xDescription}, {value}%.'
            }
        },
        xAxis: [{
            categories: categories,
            reversed: false,
            labels: {
                step: 1
            },
            accessibility: {
                description: '나이 (남)'
            }
        }, { // mirror axis on right side
            opposite: true,
            reversed: false,
            categories: categories,
            linkedTo: 0,
            labels: {
                step: 1
            },
            accessibility: {
                description: '나이 (여자)'
            }
        }],
        yAxis: {
            title: {
                text: null
            },
            labels: {
                formatter: function () {
                    return Math.abs(this.value) + '%';
                }
            },
            accessibility: {
                description: 'Percentage population',
                rangeDescription: 'Range: 0 to 5%'
            }
        },
        
        plotOptions: {
            series: {
                stacking: 'normal'
            }
        },

        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' +
                    'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 1) + '%';
            }
        },

        series: [{
            name: '남',
            data: [
                 -2.2, -2.4,
                -2.7, -3.0, -3.3, -3.2,
                -2.9, -3.5, -4.4, -4.1,
                -3.4, -2.7, -2.3, -2.2,
                -1.6, -0.6
            ]
        }, {
            name: '여',
            data: [
                2.1, 2.3, 2.6,
                2.9, 3.2, 3.1, 2.9, 3.4,
                4.3, 4.0, 3.5, 2.9, 2.5,
                2.7, 2.2, 1.1
            ]
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



    $("#tabs").tabs({
            active: 0 //기본으로 선택할 것 고르기
    });
    
    

</script>

</html>