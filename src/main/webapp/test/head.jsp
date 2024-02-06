<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


      html,
      body {
        height: 1000px;
        padding: 0px;
        margin: 0px;
  		background-color: #d4ccbb;;
      }
*{ margin:0; padding:0; }
li{ list-style:none; }

header {
  display: flex;
  justify-content: flex-start; /* 왼쪽 정렬로 변경 */
  align-items: center;
  position: fixed; /* 화면 상단에 고정 */
  top: 0;
  left: 0;
  width: 100%; /* 화면 전체 너비를 채우도록 설정 */
  background-color: #d4ccbb;
  z-index: 1000; /* 다른 콘텐츠 위에 헤더가 나타나도록 설정 */
}

.header_wrap {
  width: 80%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.header_wrap h1 {
  color: #FFFFFF;
   /* 로고의 왼쪽 여백 추가 */
}

.header_wrap .gnb {
  display: flex;
  flex-direction: row;
  justify-content: flex-end; /* 왼쪽 정렬로 변경 */
  align-items: center;
}

.header_wrap .gnb li {
  color: #000000;
  margin: 0 20px; /* 여백 조정 */
  margin-top: 75px; /* 로그아웃 링크를 아래로 내리는 간격 조정 */
  
}
 #wrap,#wrap1 {
    position: absolute;
    top: -80px;
    left: 20%;
    transform: translateX(-50%);
    min-height: calc(100% - 150px); /* 더 큰 여유 공간을 주고자 할 때 수정 */
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1;
    flex-direction: column;
    width: 75%; /* 현재 너비의 1.5배로 설정 */
    height: 170%; /* 현재 높이의 1.5배로 설정 */
    min-width: 300px; /* 원래 너비의 최소 1.5배로 설정 */
    min-height: 700px; /* 원래 높이의 최소 1.5배로 설정 */
    max-width: 900px; /* 원래 너비의 최대 1.5배로 설정 */
    max-height: 825px; /* 원래 높이의 최대 1.5배로 설정 */
}
 iframe {
    border: none;
    outline: none;
}
 .iframe-container {
    display: flex;
    flex-direction: column;
    align-items: center;
  }   
   #wrap iframe {
    width: 50%;
    height: 300px;
    margin-bottom: 20px;
    margin-top: 75px;
  }  


.content{
width:80%;
  
  display:flex;
  flex-direction: column;
  justify-content: space-between;
  align-items:center;
  background: linear-gradient(180deg, rgba(228,220,207,1) 0%, rgba(245,240,187,1) 38%, rgba(125,157,156,1) 100%);
  height:2000px;
}

    .logo-img {
        max-width: 10%; /* 최대 너비를 부모 요소의 100%로 설정 */
        height: auto; /* 높이를 자동으로 조절하여 비율 유지 */
        margin-top: 75px;
        margin-left: 40px;
    }
    }



.spacing{
height: 10px;
}
</style>
</head>
<body>
<%
    ArrayList<String> labels = (ArrayList<String>) session.getAttribute("labels");
    ArrayList<Integer> data = (ArrayList<Integer>) session.getAttribute("data");
    out.print(labels);
    out.print(data);
  
%>

<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels = JSON.parse('<%= new Gson().toJson(labels) %>');
    const data = JSON.parse('<%= new Gson().toJson(data) %>');
    out.print(labels);
    
    
    </script>



<header>
  <div class="header_wrap">
    <h1><a href="adminmain.do"><img src="./images/CompanyLogo.png" alt="로고" class="logo-img" ></a></h1>
    <nav>
      <ul class="gnb">
        <li><a href="logout.do">Logout</a></li>
      </ul>
    </nav>
  </div>
  
</header>
<div id="wrap">
  <iframe src="Manager.jsp" frameborder="0"></iframe>

</div>
<div id="wrap1">
</div>
	

  </body>
</html>