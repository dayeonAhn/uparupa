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
    <link rel="stylesheet" href="/resources/style/temp.css"> <!-- CSS 파일 연결 -->
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
    	<div class="sign">
    		<div class="signtext" >
    			<a href="#">로그아웃</a>
    			</div>
    	</div>
        <!-- 메뉴 영역 -->
        <div>
            <div class="menu-container default">
                <div class="menu">
                    <a href="/reason/reasonBook.jsp">책의 이유</a>
                    <a href="/map/mapsearch.jsp">동네 도서</a>
                    <a href="/myPage/bookWrite.jsp">독서 기록</a>
                </div>
                <div class="headerlogo">
                    <img src="/resources/images/uparuLogo.png" alt="로고"> <!-- 로고 이미지 경로를 수정하세요 -->
                </div>
                <div class="menu">
                    <a href="/myPage/bookCalender.jsp">내 서재</a>
                    <a href="/community/list.jsp">커뮤니티</a>
                    <a href="/admin/notice/list.jsp">공지사항</a>
                </div>
            </div>
        </div>
        
        <!-- GNB 영역 -->
        <div class="gnb-background">
            <div class="gnb default">
            	
                <div id="category" class="category" onclick="btnClick(this)">
                    <div class='category-icon'>
                    	<i class="fa fa-bars"></i>
                    </div>
                    <div class='category-text'>
                    	<span>카테고리</span>
                    </div>
                </div>
                <div class="search">
                    <input type="text" placeholder="검색어를 입력하세요">
                    <a href="#">
                    	<i class="fa fa-search"></i>
                    </a>
                </div>
            </div>
            <div id="category-list" class="category-list">
		    <div class="category-frame">
		        
		        
				<a href="#">
			    	<div class="category-box">역사, 지리, 관광</div>
				</a>
			
				<a href="#">
				    <div class="category-box">자연과학</div>
				</a>
				
				<a href="#">
				    <div class="category-box">사회과학</div>
				</a>
				
				<a href="#">
				    <div class="category-box">기술과학</div>
				</a>
				
				<a href="#">
				    <div class="category-box">문학</div>
				</a>
				
				<a href="#">
				    <div class="category-box">언어</div>
				</a>
				
				<a href="#">
				    <div class="category-box">예술</div>
				</a>
				
				<a href="#">
				    <div class="category-box">철학, 심리학, 윤리학</div>
				</a>
		        
		    </div>
		</div>
        </div>

        <!-- Category list 영역 -->
		

    </header>

    <script>
        function btnClick(element) {
            const categorylist = document.getElementById('category-list');
            const category = document.getElementById('category');
            
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
        document.querySelector('category').addEventListener('click', function() {
            this.querySelector('i').classList.toggle('fa-bars');
            this.querySelector('i').classList.toggle('fa-times');
        });
    </script>
</body>
</html>