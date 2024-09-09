<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <link rel="stylesheet" href="resources/style/temp.css"> <!-- CSS 파일 연결 -->
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
       <div class="mainPage-sign">
          <div class="mainPage-signtext" >
             <a href="${pageContext.request.contextPath}/login/login.jsp">로그아웃</a>
             </div>
       </div>
        <!-- 메뉴 영역 -->
        <div>
            <div class="mainPage-menu-container default">
                <div class="mainPage-menu">
                    <a href="${pageContext.request.contextPath}/reason/reasonBook.jsp">책의 이유</a>
                    <a href="${pageContext.request.contextPath}/map/mabsearch.jsp">동네 도서</a>
                    <a href="#">책BTI</a>
                </div>
                <div class="mainPage-headerlogo">
                    <img src="${pageContext.request.contextPath}/resources/images/uparuLogo.png" alt="로고"> <!-- 로고 이미지 경로를 수정하세요 -->
                </div>
                <div class="mainPage-menu">
                    <a href="${pageContext.request.contextPath}/BookReview.jsp">내 서재</a>
                    <a href="${pageContext.request.contextPath}/community/community.jsp">커뮤니티</a>
                    <a href="${pageContext.request.contextPath}/notice/notice.jsp">공지사항</a>
                </div>
            </div>
        </div>
        
        <!-- GNB 영역 -->
        <div class="gnb-background">
            <div class="gnb default">
               
                <div id="mainPage-category" class="mainPage-category" onclick="btnClick(this)">
                    <div class='mainPage-category-icon'>
                       <i class="fa fa-bars"></i>
                    </div>
                    <div class='mainPage-category-text'>
                       <span>카테고리</span>
                    </div>
                </div>
                
                
                <!-- 검색의 영역 -->
                <div class="mainPage-search">
                    <input id="bookName" type="text" placeholder="검색어를 입력하세요">
                    <!-- <span id="searchButton"> -->
                       <button id="searchButton" class="fa fa-search"></button>
                    <!-- </span> -->
                </div>
            </div>
            <div id="mainPage-category-list" class="mainPage-category-list">
          <div class="mainPage-category-frame">
		    <a href="${pageContext.request.contextPath}/search/BookCatenew.jsp" class="mainPage-category-box" >
		        <div class="mainPage-category-box">신간도서</div>
		    </a>
		    <a href="${pageContext.request.contextPath}/search/BookCatekor.jsp" class="mainPage-category-box">
		        <div class="mainPage-category-box">국내도서</div>
		    </a>
		    <a href="${pageContext.request.contextPath}/search/BookCatefor.jsp" class="mainPage-category-box">
		        <div class="mainPage-category-box">외국도서</div>
		    </a>
		    <a href="${pageContext.request.contextPath}/search/BookCategortList.jsp" class="mainPage-category-box">
		        <div class="mainPage-category-box">[EVENT] 슬램덩크 개봉 기념</div>
		    </a>
		    <!-- <a href="#" class="mainPage-category-box" onclick="searchCategory('문학')">
		        <div class="mainPage-category-box">문학</div>
		    </a>
		    <a href="#" class="mainPage-category-box" onclick="searchCategory('언어')">
		        <div class="mainPage-category-box">언어</div>
		    </a>
		    <a href="#" class="mainPage-category-box" onclick="searchCategory('예술')">
		        <div class="mainPage-category-box">예술</div>
		    </a>
		    <a href="#" class="mainPage-category-box" onclick="searchCategory('철학,심리학,윤리학')">
		        <div class="mainPage-category-box">철학, 심리학, 윤리학</div>
		    </a> -->
		</div>
      </div>
        </div>

        <!-- Category list 영역 -->
      

    </header>

    <script>
        function btnClick(element) {
            const categorylist = document.getElementById('mainPage-category-list');
            const category = document.getElementById('mainPage-category');
            
            const icon = element.querySelector('i');
            icon.classList.toggle('fa-bars');
            icon.classList.toggle('fa-times');
            
            if(categorylist.style.display === 'block') {
                categorylist.style.display = 'none';
                category.style.color = '#FFFFFF'; /* 기본 색상으로 변경 */
                category.style.background = 'none'; /* 배경색 기본으로 변경 */
                
            } else {
                categorylist.style.display = 'block';
                category.style.color = 'var(--maincolor)'; /* 글자색을 --maincolor로 변경 */
                category.style.background = '#FFFFFF'; /* 배경색을 흰색으로 변경 */
            }
        }
        /* document.querySelector('mainPage-category').addEventListener('click', function() {
            this.querySelector('i').classList.toggle('fa-bars');
            this.querySelector('i').classList.toggle('fa-times');
        }); */
        
        
        //다연 추가  - 검색을 통해 도서 검색 페이지 이동 
        
         document.addEventListener('DOMContentLoaded', function() {
		    const searchButton = document.getElementById('searchButton');
		    
		    searchButton.addEventListener('click', function(event) {
		        event.preventDefault();  // 기본 동작 막기
		        const searchInpBook = document.getElementById('bookName').value.trim();
		        if (searchInpBook) {
		            const encodedSearchTitle = encodeURIComponent(searchInpBook);
		            console.log("Encoded Search Query:", encodedSearchTitle);  // 로그 확인
		            window.location.href = "${pageContext.request.contextPath}/search/BookSearchBoard.jsp?query=" + encodedSearchTitle;
		        } else {
		            alert('검색어를 입력하세요');
		        }
		    });
		});
        


    
	</script>
</body>
</html>