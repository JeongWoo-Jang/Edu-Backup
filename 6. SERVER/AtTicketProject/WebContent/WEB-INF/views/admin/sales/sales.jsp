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
   #title {
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        #box {
            margin-left: 280px;
            background-color: #999999;
            padding: 20px;
            width: 700px;
        }

        .img {
            width: 200px;
            height: 200px;
            background-color: #555555;
            margin: 20px;
        }

        .info {
            margin-left: 280px;
            margin-top: 100px;
        }

        .p {
            display: block;
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
<style type="text/css">
        .highcharts-figure,
        .highcharts-data-table table {
            min-width: 320px;
            max-width: 660px;
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

        .highcharts-data-table td,
        .highcharts-data-table th,
        .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr,
        .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }
    </style>

</head>
<body>
    
    <div id="title">
        <h1 style="color: #555; font-weight: bold;
        font-family: Arial;
        font-size: 3em;">매출 관리 <small>> Home </small></h1>
    </div>
    <div style="margin-left: 400px; margin-top: 20px; width: 1000px;">
        <select style="margin-left: 280px; margin-top: 10px;" name="genre" id="genre">
            <optgroup label="장르">
                <option value="1">콘서트</option>
                <option value="2">뮤지컬</option>
                <option value="3">연극</option>
                <option value="4">클래식</option>
                <option value="5">전시</option>
            </optgroup>
        </select>


        <table style="margin-left: 280px; margin-top: 10px; width: 500px;"
            class="table  table-bordered table-striped table-hover">
            <tr>
                <td
                    style="width: 100px; background-color: #555555; text-align: center; vertical-align: middle; color: white;">
                    총 매출액</td>
                <td style="text-align: center; font-weight: bold; font-size: 2em;">30억</td>
            </tr>
        </table>

        <div id="box">
            <div style="margin-top: 5px;"><label for="txtname" style="font-weight: bold;">&nbsp기간별 조회 :
                    &nbsp&nbsp&nbsp</label>
                <input style="width: 100px; text-align: center; " type="text" name="date2" value=" /      /"
                    id="date2"><label for="date2"><span
                        style="font-size: 1em; margin-top: -30px; margin-left: 10px; position: relative; top: 2px; left: 0px;"
                        class="glyphicon glyphicon-calendar" id="cal"></span></label> ~ <input
                    style="width: 100px; text-align: center;" type="text" name="date1" value=" /      /"
                    id="date1"><label for="date1"><span style="font-size: 1em; margin-left: 10px;"
                        class="glyphicon glyphicon-calendar" id="cal1"></span></label>
                <input style="margin-left: 34px; background-color: #333333; color: white; border: 0px;" type="button"
                    value="조회">
            </div>
            <div style="margin-top: 30px;">
                <span style="font-weight: bold; margin-right: 20px; margin-left: 2px;">공연 제목 : </span>
                <input style="width: 300px;" type="text" name="txt" id="txt" autofocus>
                <input style="margin-left: 10px; background-color:#333333; color: white;  border: 0px;" type="button"
                    value="조회">
            </div>
        </div>


        <div id="box1">
            <div class="info" style="float: left; margin-right: 90px;" id="info1">
                <input style="position: relative; top: -100px;" type="checkbox" class="cb" name="checkRow" value="1">
                <div class="img" style="display: inline-block;"></div>
                <span class="p" style="position:relative; top: -170px; left: 250px; font-weight: bold;">뮤지컬<미아 파밀리아>
                        </span>
                <span class="p"
                    style="position:relative; top: -180px; left: 250px; font-weight: bold;"><br>2020.06.09~2020.08.23</span>
                <span class="p" style="position:relative; top: -190px; left: 250px; font-weight: bold;"><br>예스24스테이지
                    2관</span>

            </div>

            <figure style="float: left;" class="highcharts-figure">
                <div style="width:300px; margin-left: 60px;" id="container"></div>
                <p class="highcharts-description">
                </p>
            </figure>
        </div>

        <div style="clear: both;"></div>

        <div id="box2">
            <div class="info" style="float: left;margin-right: 90px;" id="info2">
                <input style="position: relative; top: -100px;" type="checkbox" class="cb" name="checkRow" value="2">
                <div class="img" style="display: inline-block;"></div>
                <span class="p" style="position:relative; top: -170px; left: 250px; font-weight: bold;">뮤지컬<미아 파밀리아>
                        </span>
                <span class="p"
                    style="position:relative; top: -180px; left: 250px; font-weight: bold;"><br>2020.06.09~2020.08.23</span>
                <span class="p" style="position:relative; top: -190px; left: 250px; font-weight: bold;"><br>예스24스테이지
                    2관</span>

            </div>

            <figure style="float: left;" class="highcharts-figure">
                <div style="width:300px; margin-left: 60px;" id="container1"></div>
                <p class="highcharts-description">
                </p>
            </figure>
        </div>
        <div style="clear: both;"></div>
        <div id="box3">
            <div class="info" style="float: left;margin-right: 90px;" id="info3">
                <input style="position: relative; top: -100px;" type="checkbox" class="cb" name="checkRow" value="3">
                <div class="img" style="display: inline-block;"></div>
                <span class="p" style="position:relative; top: -170px; left: 250px; font-weight: bold;">뮤지컬<미아 파밀리아>
                        </span>
                <span class="p"
                    style="position:relative; top: -180px; left: 250px; font-weight: bold;"><br>2020.06.09~2020.08.23</span>
                <span class="p" style="position:relative; top: -190px; left: 250px; font-weight: bold;"><br>예스24스테이지
                    2관</span>

            </div>

            <figure style="float: left;" class="highcharts-figure">
                <div style="width:300px; margin-left: 60px;" id="container2"></div>
                <p class="highcharts-description">
                </p>
            </figure>
        </div>

        <div style="clear: both;"></div>
        <nav class="pagebar" style="margin-left: 400px;">
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

    </div><!-- selectable -->

    </div>
    <div id="manipulate" style="margin-top:20px; margin-bottom: 80px; margin-left: 1300px; width: 130px;">
        <button class="modified" id="modifybtn"><i class="glyphicon glyphicon-pencil"></i>수정</button>
        <button class="modified" id="delbtn"><i class="glyphicon glyphicon-trash"></i>삭제</button>
    </div>

	<%@include file="/WEB-INF/views/inc/menu.jsp"%>
	

    <script type="text/javascript">
        // Make monochrome colors
        var pieColors = (function () {
            var colors = [],
                base = Highcharts.getOptions().colors[0],
                i;

            for (i = 0; i < 10; i += 1) {
                // Start out with a darkened base color (negative brighten), and end
                // up with a much brighter color
                colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
            }
            return colors;
        }());

        // Build the chart
        Highcharts.chart('container', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },  credits: {
                enabled: false
            },

            title: {
                text: 'sales Rate (총매출액: 10억)'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    colors: pieColors,
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                        distance: -50,
                        filter: {
                            property: 'percentage',
                            operator: '>',
                            value: 4
                        }
                    }
                }
            },
            series: [{
                name: 'Share',
                data: [
                    { name: '순이익', y: 55 },
                    { name: '비용', y: 45 },

                ]
            }]
        });

        Highcharts.chart('container1', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },   credits: {
                enabled: false
            },

            title: {
                text: 'sales Rate (총매출액: 10억)'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    colors: pieColors,
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                        distance: -50,
                        filter: {
                            property: 'percentage',
                            operator: '>',
                            value: 4
                        }
                    }
                }
            },
            series: [{
                name: 'Share',
                data: [
                    { name: '순이익', y: 55 },
                    { name: '비용', y: 45 },

                ]
            }]
        });

        Highcharts.chart('container2', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },  credits: {
                enabled: false
            },

            title: {
                text: 'sales Rate (총매출액: 10억)'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    colors: pieColors,
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                        distance: -50,
                        filter: {
                            property: 'percentage',
                            operator: '>',
                            value: 4
                        }
                    }
                }
            },
            series: [{
                name: 'Share',
                data: [
                    { name: '순이익', y: 55 },
                    { name: '비용', y: 45 },

                ]
            }]
        });
        // Make monochrome colors
        var pieColors = (function () {
            var colors = [],
                base = Highcharts.getOptions().colors[0],
                i;

            for (i = 0; i < 10; i += 1) {
                // Start out with a darkened base color (negative brighten), and end
                // up with a much brighter color
                colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
            }
            return colors;
        }());

        // Build the chart

        // $("#btn1").click=function(){

        // };
    </script>

    <script>
    <%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	

        $("#modifybtn").click(function () {
                if ($('input').is(':checked') == true) {
                    window.open("/AtTicketProject/sales/salesupdate.do", "수정", "width=400 ,height=300");
                } else {
                    alert("하나 이상을 체크하시오.");
                }

            });

            $("#delbtn").click(function () {
                if ($('input').is(':checked') == true) {
                    if (confirm("정말로 삭제하시겠습니까?")) {
                        $("input[name=checkRow]:checked").each(function () {
                            var tr_value = $(this).val();
                            var box = $("#box" + tr_value);
                            console.log(1);
                            box.remove();
                        });
                    }
                } else {
                alert("하나 이상을 체크하시오.");
                }
            });


    </script>
</body>
</html>