<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIST</title>
    <link rel="stylesheet" type="text/css" href="resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="resources/css/list.css">
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/resources/js/include.js"></script>
    <script src="/resources/js/scripts.js" defer></script>
    
</head>
<body>
    <!-- <div class="header" include-html="./include/header.html"></div> -->
    <div class="header" include-html="include/header.jsp"></div>
    <c:if test="${adminCheck}">
    	<button type="button" onclick="location.href='/write.do';">글쓰기</button>
    </c:if>
    <!-- content -->
     <div class="page_wrap">
        <div class="content_wrap">
<!--             <div class="filter_area">
                <div class="filter_group">
                    <p class="filter_tit">월별</p>
                    <ul class="filter_tab">
				        <li class="list_item">
				            <button type="button" onclick="location.href='/list.do';">전체</button>
				        </li>		        
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=01';">1월</button>
				        </li>	
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=02';">2월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=03';">3월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=04';">4월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=05';">5월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=06';">6월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=07';">7월</button>
				        </li>
				        <li>
				            <button type="button" class="selected" onclick="location.href='list.do?searchField=cno&searchWord=08';">8월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=09';">9월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=10';">10월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=11';">11월</button>
				        </li>
				        <li>
				            <button type="button" onclick="location.href='list.do?searchField=cno&searchWord=12';">12월</button>
				        </li>
				    </ul>
				</div> -->
			
 <!--                <div class="filter_group">
                    <p class="filter_tit">지역</p>
                    <ul class="filter_tab">
                        <li class="list_item">
                            <button type="button" class="selected">전체</button>
                        </li>
                        <li>
                            <button type="button">서울</button>
                        </li>
                        <li>
                            <button type="button">경기</button>
                        </li>
                        <li>
                            <button type="button">인천</button>
                        </li>
                        <li>
                            <button type="button">부산</button>
                        </li>
                        <li>
                            <button type="button">대구</button>
                        </li>
                        <li>
                            <button type="button">대전</button>
                        </li>
                        <li>
                            <button type="button">광주</button>
                        </li>
                        <li>
                            <button type="button">제주</button>
                        </li>
                    </ul>
                </div> -->
            </div>
            
            <!-- 목록 부분 -->
            <ul class="popup_list">
                <c:forEach var="item" items="${popupList}">
                    <li class="list_item">
                        <div class="thumb">
                            <%-- <a href="${pageContext.request.contextPath}/view.do?no=${item.no}&searchField=${map.searchField}&searchWord=${map.searchWord}"> --%>
                            <a href="${pageContext.request.contextPath}/view.do?no=${item.no}">
                                <img src="${pageContext.request.contextPath}/Images/${item.sfile}" alt="${item.title}">
                            </a>
                        </div>
                        <div class="content">
                            <h4 class="popup_tit">
                                <a href="${pageContext.request.contextPath}/view.do?no=${item.no}">${item.title}</a>
                            </h4>
                            <div class="popup_info">
                                <p class="place">${item.location}</p>
                                <p class="date">${item.sdate} ~ ${item.edate}</p>
                            </div>
                        </div>
                    </li>
                </c:forEach>
                
<!--                  <li class="list_item">
                    <div class="thumb">
                        <a href="#"><img src="/resources/images/temp/temp_01.png"></a>
                    </div>
                    <div class="content">
                        <span class="tag tag02">팝업예정</span>
                        <h4 class="popup_tit">포켓몬 팝업스토어 in 잠실 포켓몬 팝업스토어 in 잠실</h4>
                        <div class="popup_info">
                            <p class="place">서울시 송파구</p>
                            <p class="date">24.04.26 ~ 24.05.19</p>
                        </div>
                    </div>
                </li> -->

            </ul>
        </div>
        
<!--         <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#" class="active">1</a>
            <a href="#" class="">2</a>
            <a href="#" class="">3</a>
            <a href="#" class="">4</a>
            <a href="#" class="">5</a>
            <a href="#" class="">6</a>
            <a href="#">&raquo;</a>
        </div> -->

		<div class="pagination">
			<!-- 페이지네이션 HTML을 JSP에서 직접 출력 -->
			${map.pagingImg}
		</div>
	</div>
        <!-- //content -->
    <div class="footer" include-html="include/footer.jsp"></div>
    

    

</body>
</html>