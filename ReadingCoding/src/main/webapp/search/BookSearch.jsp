<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 검색 상세</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>
    
    <!-- get방식으로 받아온 정보 -->
    <%
        String title = request.getParameter("title");
        String authors = request.getParameter("authors");
        String translators = request.getParameter("translators");
        String publisher = request.getParameter("publisher");
        String datetime = request.getParameter("datetime");
        String thumbnail = request.getParameter("thumbnail");
        String contents = request.getParameter("contents");
        String isbn = request.getParameter("isbn");
        
        System.out.println("ISBN full(상세에서) : " + isbn); 
    %>
    
    <div class="BookSearchContent">
        <div class="bookfullinfo">
            <h3>책 소개</h3>
            <div class="BookContent" id="bookver2">
                <div class="debookimg">
                     <img src="<%= thumbnail %>" alt="Book Image">
                </div>
                <div class="debookDetails">
                    <div class="bookInfoCom">
                    	<span class="debookTitle"><%= title %></span>
                    	<ul>
                    		<li class="bookinfoC">저자 | <%= authors %></li>
                            <li class="bookinfoC">번역 | <%= translators %></li>
                            <li class="bookinfoC">출판 | <%= publisher %></li>
                            <li class="bookinfoC"><%= datetime %></li>
                        </ul>
                    </div>
                </div>
                <div class="bookstar2">
                    <img src="../resources/images/bookstar2_off.png" alt="Star Rating" class="star-icon2">
                </div>
            </div>
        </div>
        <div class="line" id="linedi">
        </div>
        <div class="bookstory">
            <h3>줄거리</h3>
            <div class="bookstorycontent">
                <span class="bookInfo"><%= contents %> ...</span>
            </div>
        </div>
        <div class="line">
        </div>
        <div class="bookstroyreport">
		    <h3>관련 독후감</h3>
		    <p>공개한 독후감만 볼 수 있습니다</p>

		    
		    <div id="reviewContainer"></div>
		</div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const starIcon = document.querySelector('.star-icon2');
        let isClicked = false;

        // ISBN 13자리 추출
        let isbn = "<%= isbn %>".split(' ')[1];  // ISBN 13자리 사용
        
        //session에 저장되어있는 id가져오기
        const sessId = '<%= session.getAttribute("sessId") %>';
        
        //const userId = "test";  // 임시 사용자 ID 사용
		console.log("13자리 : " + isbn);  //제대로 받아옴
		console.log("사용자 아이디 : " + sessId);  //제대로 받아옴
        
        // 페이지 로드 시 북마크 상태를 확인
        function getBookMarkStatus() {
			console.log("상태 확인 실행 중")  //실행 됨
            $.ajax({
                type: 'GET',
                url: 'statusinterestBook.do',
                data: {
                    isbn: isbn,
                    id: sessId
                    
                },
                dataType: 'json',
                success: function(status) {
                    if (status === 1) {
                        starIcon.src = '${pageContext.request.contextPath}/resources/images/bookstar2_on.png';
                        //location.reload();
                        //alert("북마크 등록되어있음")
                        isClicked = true;
                        
                    } else {
                        starIcon.src = '${pageContext.request.contextPath}/resources/images/bookstar2_off.png';
                        //alert("북마크 등록 안되어 있음")
                        isClicked = false;
                        //location.reload();
                    }
                },
                error: function(status, error) {
                    alert("상태 점검에 성공하지 못함");
                }
            });
        }

        // 초기 북마크 상태를 가져오기
        getBookMarkStatus();
        

        starIcon.addEventListener('mouseover', function() {
            if (!isClicked) {
                starIcon.src = '../resources/images/bookstar2_hover.png';
            }
        });

        starIcon.addEventListener('mouseout', function() {
            if (!isClicked) {
                starIcon.src = '../resources/images/bookstar2_off.png';
            }
        });
        
        

        starIcon.addEventListener('click', function(e) {
            e.preventDefault(); // 기본 동작 방지
            e.stopPropagation(); // 이벤트 전파 방지
            
            isClicked = !isClicked;
            if (isClicked) {
                starIcon.src = '../resources/images/bookstar2_on.png';
            } else {
                starIcon.src = '../resources/images/bookstar2_off.png';
            }

            // 서버로 북마크 상태 전송
            $.ajax({
                type: 'GET',
                url: 'saveinterestBook.do',
                data: {
                    isbn: isbn,
                    id: userId,
                    title: "<%= title %>",  
                    thumbnail: "<%= thumbnail %>"
                },
                /* dataType : "json", */
                success: function (status) {
                    if (status === 1) {
                        console.log("관심 도서로 등록되었습니다.");
                        alert("관심 도서로 등록 취소 되었습니다.");
                    } else if (status === 0) {
                        console.log("관심 도서가 취소되었습니다.");
                        alert("관심 도서가 등록되었습니다.");
                    }
                },
                error: function (xhr, status, error) {
                    console.error("오류 발생: " + error);
                    alert("북마크 실패");
                }
            });

            return false; // 클릭 시 다른 액션(페이지 이동) 방지
        });
    });
    
    
     //독후감 목록 불러오기
    $(document).ready(function() {
    	// ISBN 13자리 추출
        let isbn = "<%= isbn %>".split(' ')[1];  // ISBN 13자리 사용

        const userId = "test";  // 임시 사용자 ID 사용
		//console.log("13자리(독후감 전달용) : " + isbn);  //제대로 받아옴
		//console.log("임시 아이디(독후감 전달용) : " + userId);  //제대로 받아옴
	    $.ajax({
	        type: 'GET',
	        url: 'getBookReviewList.do',
	        data : {
	        	isbn :isbn,
	        	id : userId,
	        	title : "<%= title %>",
	        	authors : "<%= authors %>",
	        	thumbnail : "<%= thumbnail %>"
	        },
	        dataType : "html",
	        success: function(data) {
	            // 받아온 HTML 데이터를 특정 div에 삽입
	            //alert("독후감을 드디어 마참네 받아옴");
	            $('#reviewContainer').html(data);
	        },
	        error: function(xhr, status, error) {
	        	//console.log("이게 동작하면 안되는데");
	            //console.error('독후감 리스트를 불러오지 못했습니다: ' + error);
	        }
	    });
	});
     
     
     
	</script>
	
	
    
    
    
    
    
    
    
    
    <jsp:include page="../footer.jsp"></jsp:include>
    
    
    
    
    
    
    
    
    
    
</body>
</html>
