<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="columnCount" value="3"/>

<c:forEach var="review" items="${getbookreviewList}" varStatus="status">
    <c:if test="${status.index % columnCount == 0}">
        <div class="row"> <!-- 3개의 독후감씩 한 행(row)으로 묶음 -->
    </c:if>

    <div class="bookreport" onclick="openReviewModal('${review.id}', '${review.revContent}', '${review.revTitle}', '${title}', '${authors}', '${review.emotion}', '${review.revRegdate}')">
        <span class="bookname">${review.id}</span>
        <div class="bookreportcontainer">
            <img src="${thumbnail}" alt="Book Image">
            <span class="bookreportconent">${review.revContent}</span>
        </div>
        <span class="debookTitle2">${title}</span>
        <br>
        <span class="debookpub">${authors}</span>
    </div>

    <c:if test="${status.index % columnCount == columnCount - 1 || status.last}">
        </div> <!-- 3개의 독후감이 출력된 후 행을 닫음 -->
    </c:if>
</c:forEach>


<!-- 독후감 확인 모달 -->
<div id="reviewModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeReviewModal()">&times;</span>

        <form id="Writer">
            <div class="whiteBoard">

            <!-- 책 정보 -->
            <div class="book-mood-container">
                <div id="selectedBookTitle"></div>
                
                <!-- 오늘의 기분 -->
            <div class="mood-container">
                <label class="mood-label">오늘의 기분:</label>
                <div class="mood-selector">
                    <span id="modalSelectedMood">
                        <img id="selectedMoodImage" style="width: 55px; height: 50px;">
                    </span>
                </div>
            </div>

            </div>

            
            
            <!-- 제목 -->
            <div class="title-container">
                <div id="modalTitle"></div>
            </div>
            
            <!-- 날짜 -->
            <!-- <div class="date-container">
                <label for="date" class="date-label"></label>
                	날짜:<div id="modalDate" class="date-label"></div>
            </div> -->
            <!-- 날짜 -->
			<div class="date-container">
			    <span class="date-label">날짜: </span>
			    <span id="modalDate" class="date-label"></span>
			</div>

            <!-- 독후감 내용 -->
            <div class="content-container">
                <div id="modalContent"></div>
            </div>
            </div>
        </form>

    </div>
</div>





	<script>
	    // 독후감 확인 모달 열기
	    function openReviewModal(id, revContent, revTitle, title, authors, emotion, revRegdate) {
	        // 각 필드에 값을 채움
	    	document.getElementById("modalTitle").textContent = revTitle; // 제목
	        document.getElementById("modalContent").textContent = revContent; // 독후감 내용
	        document.getElementById("selectedBookTitle").textContent = title; // 책 제목
	        document.getElementById("modalDate").textContent = revRegdate;  // 기록 날짜
	        document.getElementById("selectedMoodImage").src = '../resources/images/꺄륵.png'; // 이미지 표시
	        document.getElementById("reviewModal").style.display = "block";
	    }
	
	    // 모달 닫기
	    function closeReviewModal() {
	        document.getElementById("reviewModal").style.display = "none";
	    }
	    
	    //날짜 디자인 조정
		function formatDate(dateString) {
		    if (!dateString) return ''; // dateString이 없을 경우 빈 문자열 반환
		    
		    // "2024-09-05 00:55:24" 형식에서 날짜 부분만 추출
		    const datePart = dateString.split(' ')[0]; // 공백을 기준으로 나눔
		    
		    let year = datePart.split('-')[0];
		    let month = datePart.split('-')[1];
		    let day = datePart.split('-')[2];
		    
		    // 원하는 형식으로 반환
		    return `${year}년 ${month}월 ${day}일`;
		}
	</script>

	<style>
	
	/* 독후감 나열관련 css */
		.row {
	    display: flex;
	    flex-wrap: wrap;
	}
	
	.bookreport {
	    flex: 0 0 30%;
	    margin: 10px;
	}
	/* 독후감 나열관련 css 끝*/
	
	
	/* 모달 관련 CSS */
	.modal {
    display: none; 
    position: fixed; 
    z-index: 1000; 
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%); 
    width: 100%;
    height: 100%;
    overflow: auto; 
    background-color: rgba(39, 17, 56, 0.8); 
}


	.modal-content {
	    background-color: #F5F5F5;
	    margin: 15% auto; 
	    padding: 10px 40px;
	    width: 1240px;
	    height: 900px;
	    border-radius: 10px; 
	    position: relative;
	}
	
	.whiteBoard {
	    padding: 80px 40px 30px 40px;
	}
	#modalTitle{
		font-weight: bold;
		font-size:22px;
	}
	
	.close {
	    color: #333;
	    float: right;
	    font-size: 70px;
	    font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	    color: black;
	    text-decoration: none;
	    cursor: pointer;
	}
	
	
	.visibility-options {
	    margin-top: 20px;
	    margin-bottom: 30px; 
	}
	
	#private {
	    margin-left: 30px;
	}
	
	.book-mood-container {
	    display: flex; 
	    justify-content: space-between; 
	    align-items: center; 
	    margin-bottom: 30px; 
	}
	
	#selectedBookTitle {
	color : #A0A0A0;
	font-size: 20px;
	}

	
	.mood-container {
	    position: relative;
	    display: flex;
	    align-items: center;
	    cursor: pointer;
	    margin-left: 20px;  
	}
	
	.mood-label {
	    margin-right: 10px;
	}
	
	.mood-selector {
	    display: flex;
	    align-items: center;
	    font-size: 24px;
	}
	
	.dropdown-arrow {
	    margin-left: 5px;
	    font-size: 16px;
	}
	
	.mood-dropdown {
	    display: grid; 
	    grid-template-columns: repeat(3, 1fr);
	    grid-template-rows: repeat(2, 1fr); 
	    gap: 10px; 
	    position: absolute;
	    top: 100%;
	    left: 0;
	    background-color: #F5F5F5;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    padding: 10px;
	    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	    z-index: 1000; 
	    width: 220px;
	}
	
	
	.mood-option {
	    width: 55px;
	    height: 55px; 
	    object-fit: contain; 
	    cursor: pointer;
	}
	
	.title-container {
	    display: flex;
	    /* justify-content: flex-end;  */
	    margin-bottom: 25px;
	}
	
	.title-text-field {
	    width: 100%;
	    padding: 10px;
	    border: none !important;
	    background-color: transparent !important;
	    outline: none !important;
	    font-size: 22px;
	    color: #333;
	}
	
	.title-input:focus {
	    outline: none; 
	}
	
	.date-container {
	    margin-bottom: 25px; 
	}
	
	.date-label {
	    margin-right: 10px;
	}
	
	.date-field {
	    padding: 10px;
	    border: none !important;
	    background-color: transparent !important;
	    outline: none !important;
	    font-size: 16px;
	    color: #333;
	}
	
	.content-input {
	    display: flex;
	    justify-content: flex-end; 
	    width: 100%;
	    padding: 10px;
	    border: none;
	    background-color: transparent;
	    outline: none;
	    font-size: 16px;
	    color: #333;
	    resize: none;
	    height: 200px;
	}
	
	
	.modal-footer {
	    margin-top: auto; 
	    display: flex;
	    justify-content: flex-end; 
	    margin-top: 20px; 
	    margin-bottom: 20px; 
	}

	</style>