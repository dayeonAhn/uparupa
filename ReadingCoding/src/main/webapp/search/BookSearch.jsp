<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 검색 상세</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="../resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="../resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="../resources/style/logStyle.css">  <!-- 의연 -->
</head>
<body>
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
</body>
</html>
