<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 검색 상세</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
</head>
<body>
<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>
    
    
    
    
    
    
    
    
    
    
    

    
    <div class="BookSearchContent">
        <div class="bookfullinfo">
            <h3>책 소개</h3>
            <div class="BookContent" id="bookver2">
                <div class="debookimg">
                    <img src="../resources/images/exBookimg.png" alt="Book Image">
                </div>
                <div class="debookDetails">
                    <div class="bookInfoCom">
                    	<span class="debookTitle"><a href="#">book.title</a></span>
                    	<ul>
                    		<li class="bookinfoC">저자 | book.author</li>
                    		<li class="bookinfoC">번역 | book.translator</li>
                    		<li class="bookinfoC">출판 | book.publisher</li>
                    		<li class="bookinfoC">book.date</li>
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
                <span class="bookInfo">book.contents
            </div>
        </div>
        <div class="line">
        </div>
        <div class="bookstroyreport">
            <h3>관련 독후감</h3>
            <p>공개한 독후감만 볼 수 있습니다</p>
            <div class="bookreport">
                <span class="bookname">닉네임</span>
                <div class="bookreportcontainer">
                    <img src="../resources/images/exBookimg.png" alt="Book Image">
                    <span class="bookreportconent">독후감 내용</span>
                </div>
                <span class="bookTitle"><a href="#">book.title</a>
                <span class="bookpub">bookauthor</span>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const starIcon = document.querySelector('.star-icon2');
            let isClicked = false;

            starIcon.addEventListener('mouseover', function() {
                if (!isClicked) {
                    starIcon.src = '../resources/images/bookstar2_hover.png';
                } else {
                    starIcon.src = '../resources/images/bookstar2_on.png';
                }
            });

            starIcon.addEventListener('mouseout', function() {
                if (!isClicked) {
                    starIcon.src = '../resources/images/bookstar2_off.png';
                } else {
                    starIcon.src = '../resources/images/bookstar2_on.png';
                }
            });

            starIcon.addEventListener('click', function() {
                isClicked = !isClicked;
                if (isClicked) {
                    starIcon.src = '../resources/images/bookstar2_on.png';
                } else {
                    starIcon.src = '../resources/images/bookstar2_off.png';
                }
            });
        });
    </script>
    
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
    
    
    
    
    
    
    
    
    <jsp:include page="../footer.jsp"></jsp:include>
    
    
    
    
    
    
    
    
    
    
</body>
</html>
