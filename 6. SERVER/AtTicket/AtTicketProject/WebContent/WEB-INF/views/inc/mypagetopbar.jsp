<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="top">
    <div id="topmenu">
        <!-- 상단메뉴 좌측(메인화면으로 돌아가기) -->
        <a href="/AtTicketProject/userindex.do" id="topleft"></a>
        <!-- 상단메뉴 센터(콘서트, 뮤지컬, 연극, 클래식, 전시) -->
        <span data-lo="user_concert.html" class="menubar">콘서트</span>
        <span data-lo="user_musical.html" class="menubar">뮤지컬</span>
        <span data-lo="user_theater.html" class="menubar">연극</span>
        <span data-lo="user_classic.html" class="menubar">클래식</span>
        <span data-lo="user_Exhibition.html" class="menubar">전시</span>
        <!-- 상단메뉴 우측(랭킹, 이벤트, 검색창, 마이페이지) -->
        <div id="topright">
            <span data-lo="/AtTicketProject/userranking.do" class="menubar">랭킹</span>
            <span data-lo="user_event.html" class="menubar">이벤트</span>
            <input type="text" value="" id="search">
            <label for="search" class="glyphicon glyphicon-search"
                style="font-size: 14px; cursor: pointer;"></label>
            <c:if test = "${!empty userid}">
            <div class="glyphicon glyphicon-user" id="mypage" 
                style="font-size: 14px; cursor: pointer; margin: 0 10px; "></div>
            </c:if>
        </div>
    </div>
</div>

<script>

//상단 메뉴 css
$(".menubar").mouseover(function() {
    $(this).css("border-bottom", "5px solid orange");
});
$(".menubar").mouseout(function() {
    $(this).css("border-bottom", "");
});
//상단 메뉴 클릭시
$(".menubar").click(function() {
    location.href = $(this).data("lo");
});

//마이페이지 클릭시 이동
$("#mypage").click(function() {
    location.href = "#!";
});

</script>