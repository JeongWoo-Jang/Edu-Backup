<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        html {
            /* border: 1px solid black; */
            width : 900px;
            height : 900px;
        }
        /* 회원이 적은 제목 */
        #title {
            /* border: 1px solid black; */
            width : 700px;
            height: 30px;
            margin-top : 10px;
            margin-left : 10px;
            font-weight : bold;
            font-size: 2em;
        }   
        /* 줄 나누는곳 */
        .splitLine {
            border: 1px solid #F0F0F0;
            /* color : #111; */
        }
        /* 고객정보 */
        #cusotomerInfo {
            width : 700px;
            height : 45px;
            margin-left : 10px;
            margin-top : 25px;
            /* border : 1px solid red; */
        }
        /* 고객 얼굴 */
        #face {
            background-image: url("../images/woman.png");
            width : 40px;
            height: 40px;
            background-repeat: no-repeat;
            background-size: cover;
            border: 1px solid #F0F0F0;
            border-radius: 100%;
            float : left;
        }
        .csinfo {
            /* border: 1px solid red; */
            float : left;
            margin-left : 10px;
            margin-top : 10px;
            font-weight: bold;
        }

</style>

</head>
<body>

    <div id = "title" >아니 이 사이트 관리자는 노는겁니까?</div>
    <div id = "cusotomerInfo">
        <div id = "face"></div>
        <div class = "csinfo">성춘향</div>
        <div class = "csinfo">2020.08.10&nbsp;&nbsp;&nbsp;02:45</div>
    </div>
    
          <p style="margin-top:45px; font-size : 1.2em;">&nbsp;&nbsp;&nbsp;&nbsp;아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나아니 환불문의를 엊그제 한거 같은데 아직도 답이없어요? 아니 사람을 졸로 보는것도 아니고...참나  
      </p>

    
          <style>
          #commentgo {
            font-size: 1.2em;  
            margin-left : 10px;
          }
          #commentgo:hover {
            cursor : pointer;
            font-weight: bold;
          }
          .commenttxt {
              margin-left : 10px;
          }
          .reply {
              margin-top : 10px;
          }
          .replyon {
              margin-top : 10px;
          }


      </style>

      
      <div id = "comment" style = "margin-top : 100px;">
        <span id = "commentgo">댓글쓰기</span>
        <hr class = "splitLine">

        <div class = "commenttxt">
            <span>죄송합니다 고객님</span>
            <div>2020.08.09</div>
            <div class = "reply"><button>답글달기</button></div>
            <div class = "replyon" style = "visibility : hidden;">
                <textarea style = "resize:none;" rows = "5" cols = "100"></textarea>
                <div><input type="submit"></div>
            </div> 
        </div>
        <hr class = "splitLine">


      </div>

      <script>
          
          //답글달기
          var onoff = false;

          $(".reply").click(function(){

                if (onoff) {
                    $(".replyon").css("visibility","hidden");
                    onoff = false;
              
                } else {
                    $(".replyon").css("visibility","visible");
                    onoff = true;
                }

          })

          //글쓰기
          $("#commentgo").click(function(){
                
            
          });

          
      </script>
    
    
    
    <img src="../images/title.png" alt="">

</body>
</html>