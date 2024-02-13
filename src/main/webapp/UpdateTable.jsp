<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AJAX MySQL Table Query1</title>
<link rel="stylesheet" type="text/css" href="./css/style.css"> <!-- style.css 파일을 불러옴 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
#searchContainer {
    position: fixed;
    top: 0;
    left: 7%;
    width: 70%;
    background-color: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    padding: 10px;
    z-index: 2; /* 다른 요소들 위에 보이도록 z-index 설정 */
    margin-top: 1%;
}

#result {
    margin-top: 55%; /* 검색창과 겹치지 않게 여백 추가 */
    /* 여기에 테이블 결과의 스타일을 추가하세요 */
    overflow-y: auto; /* 테이블 결과가 넘칠 경우 스크롤 표시 */
    max-height: calc(100vh - 200px); /* 화면 높이의 100%에서 검색창과 여백 높이만큼 제외한 값으로 최대 높이 지정 */
    width: 100%; /* 테이블 결과의 너비를 80%로 설정 */
    margin: 0 auto 0; /* 수평 가운데 정렬을 위해 좌우 여백을 자동으로 설정 */
    padding: 0; /* 패딩 제거 */
    box-sizing: border-box; /* 박스 모델 속성 설정 */
}

#result table {
    width: 100%; /* 테이블 너비를 100%로 설정 */
    border-collapse: collapse; /* 테이블 셀 경계를 병합하여 테두리를 생성 */
    margin-top: 6%;
}

#result th, #result td {
    border: 1px solid #dddddd; /* 테이블 셀의 테두리 스타일 지정 */
    padding: 8px; /* 셀 안의 콘텐츠와 경계 사이의 공간 설정 */
    text-align: center; /* 텍스트 가운데 정렬 */
}

#result th {
    background-color: #f2f2f2; /* 테이블 머리글의 배경색 설정 */
}

#result td {
    background-color: #ffffff; /* 테이블 셀의 배경색 설정 */
}

#result tr:nth-child(even) {
    background-color: #f2f2f2; /* 짝수 번째 행의 배경색 설정 */
}

#container {
    display: flex;
    align-items: center; /* 수직 방향으로 위쪽 정렬 */
    margin-right: 10%;
     /* 테이블과 텍스트 사이 여백 */
}

#result {
    max-width: 70%; /* 테이블의 최대 너비 설정 */
}

#text input[type="text"] {
    width: 100%; /* 텍스트 필드의 너비를 100%로 설정 */
}

#text table {
    width: 120%; /* 텍스트 필드 테이블 너비를 100%로 설정 */
    border-collapse: collapse; /* 테이블 셀 경계를 병합하여 테두리를 생성 */
    margin-right: 10px;
}

#text th, #text td {
    border: 1px solid #dddddd; /* 테이블 셀의 테두리 스타일 지정 */
    padding: 20px; /* 셀 안의 콘텐츠와 경계 사이의 공간 설정 */
}

#text th {
    background-color: #f2f2f2; /* 테이블 머리글의 배경색 설정 */
}

#text td {
    background-color: #ffffff; /* 테이블 셀의 배경색 설정 */
}

</style>
</head>
<body>
    <div id="searchContainer">
        <input type="text" id="name" placeholder="성명 입력">
        <button id="queryButton">검색</button>
    </div>
    <div id="container">
        <div id="result"></div>
        <div id="text">
            <table>
                <tr>
                    <th>카테고리</th>
                    <td><input type="text" id="proCategory"></td>
                </tr>
                <tr>
                    <th>제품이름</th>
                    <td><input type="text" id="proName"></td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td><input type="text" id="proGender"></td>
                </tr>
                <tr>
                    <th>수량</th>
                    <td><input type="text" id="proQty"></td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td><input type="text" id="proPrice"></td>
                </tr>
                <tr>
                    <th>색상</th>
                    <td><input type="text" id="proColor"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage"></td>
                </tr>
            </table>
            <br>
            <button type="button" id="submitBtn">수정</button>
        </div>
    </div>
    <script src="./js/queryupdate.js"></script> <!-- queryTable.js 파일을 불러옴 -->
    <script>
        $(document).ready(function() {
            // 검색 버튼 클릭 시 결과 영역의 높이를 조절
            $('#queryButton').click(function() {
                adjustResultHeight();
            });

            // 페이지 로드 시 테이블 결과 영역의 높이를 조절
            adjustResultHeight();

            // 윈도우 크기가 변경될 때 테이블 결과 영역의 높이를 다시 조절
            $(window).resize(adjustResultHeight);
        });

        // 테이블 결과 영역의 높이를 조절하는 함수
        function adjustResultHeight() {
            var windowHeight = $(window).height();
            var searchContainerHeight = $('#searchContainer').outerHeight();
            var resultHeight = windowHeight - searchContainerHeight;
            $('#result').css('max-height', resultHeight + 'px');
        }
    </script>
</body>
</html>
