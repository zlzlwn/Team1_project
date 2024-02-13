<%@page import="com.javalec.dto.NoticeDtoPJH"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.javalec.dto.NoticeDtoPJH"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="./js/accordion.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script src="./js/searchFunctions.js"></script>


</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->

				<div class="board">
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">&nbsp;&nbsp;NOTICE</font>
						</h3>
						<div class="wrap">


							<!-- 검색 결과를 표시할 영역 (초기에는 숨겨둠) 이거로 검색했을때 데이터를 업데이트 시킬꺼-->
							<div id="searchResults" style="display: none;"></div>
							<!-- 아코디언 메뉴 -->
							<ul class="accordion-list">
								<!-- 아코디언 이름,  -->
								<c:forEach items="${list}" var="dto" varStatus="loop">
									<li class="accordion-item"><a href="#"
										class="accordion-link">
											<div class="accordion-name">
												<span class="number">${dto.noCategory}</span> <span
													class="title">${dto.noTitle}</span> <span class="views1">조회수</span>
												<span class="date">${dto.noDate.substring(0, 10)}</span>
											</div>
									</a>
										<div class="accordion-desc">
											<span class="title">${dto.noContent}</span>
											<!-- 이미지가  있으면  출력한다-->
											<c:if test="${not empty dto.noImage}">
												<span> <img
													src="${pageContext.request.contextPath}/images/${dto.noImage}"
													width="756px" height="945px">
												</span>
											</c:if>
								</c:forEach>

							</ul>
							<!-- 세션에 담은 페이지수 출력부분 pageList만큼 반복한다-->
							<div style="text-align: center;">

								<c:if test="${currentPage > 1}">
									<a href="notice.do?page=${currentPage - 1}"
										style="display: inline-block; margin: 10px;">&nbsp;이전</a>
								</c:if>

								<c:forEach items="${pageList}" var="page">
									<c:choose>
										<c:when test="${page == currentPage}">
											<span
												style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${page}</span>
										</c:when>
										<c:otherwise>
											<a href="notice.do?page=${page}"
												style="display: inline-block; margin: 10px;">&nbsp;${page}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${currentPage < totalPage}">
									<a href="notice.do?page=${currentPage + 1}"
										style="display: inline-block; margin: 10px;">&nbsp;다음</a>
								</c:if>
							</div>




						</div>
					</div>

					<div
						class="xans-element- xans-board xans-board-search board-search-form ">
						<fieldset>
							<select id="search_date" name="search_date">
								<option value="week">일주일</option>
								<option value="month">한달</option>
								<option value="month3">세달</option>
								<option value="all">전체</option>
							</select> <select id="search_key" name="search_key">
								<option value="subject">제목</option>
								<option value="content">내용</option>
							</select> <input id="search" name="search" class="inputTypeText"
								placeholder="검색어를 입력하세요" value="" type="text" /> 
								<a onclick="submitSearchForm12(event)" href="notice.do" class="search-button"></a>
								<input type="submit" onclick="submitSearchForm12(event)" >
						</fieldset>
					</div>
					<div
						class="xans-element- xans-board xans-board-buttonlist board-admin-actions  ">
						<a href="/noticeWrite.do" class="primary-button "><span>WRITE</span></a>
					</div>




					<!-- 여기까지 작성 -->

					<!-- ============================== [[ Body  section]] ==============================-->

					<!-- =============================  [[ Footer section ]]  ============================= -->

					<%@ include file="../include/footer.jsp"%>

				</div>
			</div>
		</div>
		<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>