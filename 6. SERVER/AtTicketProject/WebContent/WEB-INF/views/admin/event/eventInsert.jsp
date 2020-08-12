<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
 #box {
            margin-left: 30px;
            font-size: 15px;
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
        
        label{
        	font-weight:normal;
        }
</style>
</head>
<body>
	 <legend style="width: 200px; margin:20px 25px; font-weight: bold;">이벤트 추가</legend>
    <div id="box">
    <span>구분 : </span>
        <span id="sel">
            <select name="sel1" size="1" style="height: 25px;">
                <optgroup label="구분">
                    <option value="1">프로</option>
                    <option value="2">초대</option>
                    <option value="3">기획</option>
                    </optgroup>
            </select>
 
     <div style="margin-top:10px;"><span>제목 : </span><input style="position: relative; top: -2px;" type="text" placeholder="제목을 입력하세요." name="txt" id="txt"
                autofocus></div>
          
      
      <div style="margin-top: 10px;">
			<label for="txtname">기간 : </label> <input style="width: 100px; text-align: center;"
				type="text" name="date" value=" /      /" id="date"><label
				for="date"><span style="font-size: 1em; margin-left: 10px;"
				class="glyphicon glyphicon-calendar" id="cal"></span></label> ~ <input
				style="width: 100px; text-align: center;" type="text" name="date"
				value=" /      /" id="date1"><label for="date1"><span
				style="font-size: 1em; margin-left: 10px;"
				class="glyphicon glyphicon-calendar" id="cal1"></span></label>
		</div>
       
            <div id = "manipulate" style="margin-left: 255px; margin-top:20px;">
                <button class = "modified" id = "makebtn"><i class="glyphicon glyphicon-plus"></i>추가</button>
                <button class = "modified" id = "closebtn">닫기</button>
            </div>
    </div>
 
    <script>

        var now = new Date();

        $("#date").datepicker({
            dateFormat: "yy-mm-dd",
            minDate: now.getFullYear() + "-1-1",
            maxDate: now.getFullYear() + "-12-" + "31"
        });

        $("#date1").datepicker({
            dateFormat: "yy-mm-dd",
            minDate: now.getFullYear() + "-1-1",
            maxDate: now.getFullYear() + "-12-" + "31"
        });

        $("#makebtn").click(function(){
            if (confirm("추가하시겠습니까?")){

            }
        });

        $("#closebtn").click(function(){
           window.close();
        });
     </script>
</body>
</html>