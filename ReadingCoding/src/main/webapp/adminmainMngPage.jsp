<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/resources/style/temp.css">
    <title>관리자 메인페이지</title>
</head>
<body>
<jsp:include page="./adminHeader.jsp"></jsp:include>

	<div class="main-page">
	    <div class="today-book">
	    	<div class="today-book-title"><p><b>오늘의 책</b></p></div>
	    	<div class="today-book-area">
	    		<div class="today-book-rect">
					<div class="image-button-container">
			            <button class="image-button" data-button-id="1">+</button>
			            <button class="reset-button" data-button-id="1" style="display:none;">X</button>
			        </div>
					
	    		</div>
	    		<div class="today-book-rect">
	    			 <div class="image-button-container">
			            <button class="image-button" data-button-id="2">+</button>
			            <button class="reset-button" data-button-id="2" style="display:none;">X</button>
			        </div>

	    		</div>
	    		<div class="today-book-rect">
	    			<div class="image-button-container">
			            <button class="image-button" data-button-id="3">+</button>
			            <button class="reset-button" data-button-id="3" style="display:none;">X</button>
			        </div>
    		</div>

   			</div>
   		</div>
   		
   		
    <div id="imageModal" class="modal">
        <div class="modal-content">
            <!-- 검색 영역 -->
            <input type="text" id="searchInput" class="search-input" placeholder="Search images...">
            
            <div class="grid-container">
                <!-- 3x3 그리드 구성 -->
                <div class="grid-item" data-image="/resources/images/dragon_book.png" data-text="흑막용을 키우게 되었다">
                    <img src="/resources/images/dragon_book.png" alt="Image 1">
                    <p>흑막용을 키우게 되었다</p>
                </div>
                <div class="grid-item" data-image="/resources/images/dragon_book.png" data-text="흑막용을 키우게 되었다">
                    <img src="/resources/images/dragon_book.png" alt="Image 2">
                    <p>흑막용을 키우게 되었다</p>
                </div>
                <div class="grid-item" data-image="/resources/images/dragon_book.png" data-text="흑막용을 키우게 되었다">
                    <img src="/resources/images/dragon_book.png" alt="Image 3">
                    <p>흑막용을 키우게 되었다</p>
                </div>
                <div class="grid-item" data-image="/resources/images/coding_book.png" data-text="세상에서 가장 쉬운 코딩책">
                    <img src="/resources/images/coding_book.png" alt="Image 4">
                    <p>세상에서 가장 쉬운 코딩책</p>                </div>
                <div class="grid-item" data-image="/resources/images/coding_book.png" data-text="세상에서 가장 쉬운 코딩책">
                    <img src="/resources/images/coding_book.png" alt="Image 5">
                    <p>세상에서 가장 쉬운 코딩책</p>                </div>
                <div class="grid-item" data-image="/resources/images/coding_book.png" data-text="세상에서 가장 쉬운 코딩책">
                    <img src="/resources/images/coding_book.png" alt="Image 6">
                    <p>세상에서 가장 쉬운 코딩책</p>                </div>
                <div class="grid-item" data-image="/resources/images/lost_thing_book.png" data-text="분실물이 돌아왔습니다">
                    <img src="/resources/images/lost_thing_book.png" alt="Image 7">
                    <p>분실물이 돌아왔습니다</p>                </div>
                <div class="grid-item" data-image="/resources/images/lost_thing_book.png" data-text="분실물이 돌아왔습니다">
                    <img src="/resources/images/lost_thing_book.png" alt="Image 8">
                    <p>분실물이 돌아왔습니다</p>                </div>
                <div class="grid-item" data-image="/resources/images/lost_thing_book.png" data-text="분실물이 돌아왔습니다">
                    <img src="/resources/images/lost_thing_book.png" alt="Image 9">
                    <p>분실물이 돌아왔습니다</p>                </div>
            </div>

            <!-- 페이지네이션 영역 -->
            <div class="pagination">
                <button class="page-button">&laquo;</button>
                <button class="page-button">1</button>
                <button class="page-button">2</button>
                <button class="page-button">3</button>
                <button class="page-button">4</button>
                <button class="page-button">5</button>
                <button class="page-button">&raquo;</button>
            </div>

            <!-- 닫기 버튼 -->
            <div class="close-modal-container">
                <button id="closeModal" class="close-modal-button">Close</button>
            </div>
        </div>
    </div>
   		
	</div>
	
	<jsp:include page="./footer.jsp"></jsp:include>
    <script src="/resources/script/adminmainMngPage.js"></script>
</body>
</html>
