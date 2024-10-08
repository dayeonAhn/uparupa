<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 검색</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- <script src="../resources/script/BookSearchEvent.js" charset="UTF-8"></script> -->
    
    
    <link rel="stylesheet" href="../resources/style/temp.css"> 
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> -->
    
</head>
<body>

<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>
    
    
    
    



<!--     <input id="bookName" type="text" placeholder="도서명을 입력하세요">
    <button id="search">검색</button> -->
    
    <div class="BookSearchContent">
        <div class="BookSearchListTop">
            <span class="bookpagetitle">카탈로그 - ISBN</span>
            <span class="dropdown-el">
                <input type="radio" name="sortType" value="latest" checked="checked" id="sort-relevance">
                <label for="sort-relevance">최신순</label>
                <input type="radio" name="sortType" value="booktitle" id="sort-best">
                <label for="sort-best">도서명순</label>
            </span>
        </div>
		
        <div class="BookContentList">
            <div class="BookContent">
                <div class="bookimg"><img src="../resources/images/exBookimg.png"></div>
                <div class="bookDetails">
                    <h3 class="bookTitle"><a href="BookSearch.jsp">어린왕자</a></h3>
                    <div class="bookInfo">
                        <!-- <span class="bookinfo" id="bookauthor"></span>
                        <span class="bookinfo" id="booktranslators"></span>
                        <span class="bookinfo" id="bookpublisher"></span>
                        <span class="bookinfo" id="bookdatetime"></span> -->
                    	<ul>
                    		<li class="bookinfo">저자 | book.author</li>
                    		<li class="bookinfo">번역 | book.translator</li>
                    		<li class="bookinfo">출판 | book.publisher</li>
                    		<li class="bookinfo">book.date</li>
                        </ul>
                    
                    </div>
                </div>
                <div class="bookstar" ><!-- style="display: none;" -->
                    <img src="../resources/images/bookstar_off.png" alt="Star Rating" class="star-icon">
                </div>
                
                  
            </div>
            <hr>
            <div class="PageingNum">
           		<!-- <a>< 1 2 3 4 5 ></a> -->
        	</div>
        </div>
    </div>
    
    
    
    
    
    <jsp:include page="../footer.jsp"></jsp:include>
    
    
    <script>
    $('.dropdown-el').click(function(e) {
        e.preventDefault();
        e.stopPropagation();
        $(this).toggleClass('expanded');
        $('#'+$(e.target).attr('for')).prop('checked',true);
        });
        $(document).click(function() {
        $('.dropdown-el').removeClass('expanded');
        });
        
      //즐겨찾기 이미지 클릭 이벤트
        $(document).ready(function() {
            $('.star-icon').click(function() {
                var isOn = $(this).attr('src') === '../resource/image/bookstar_on.png';
                if (isOn) {
                    $(this).attr('src', '../resources/images/bookstar_off.png');
                    $(this).data('star', false);
                } else {
                    $(this).attr('src', '../resources/images/bookstar_on.png');
                    $(this).data('star', true);
                }
                console.log("Star status:", $(this).data('star'));
            });
        });
    </script>
    
    
    
    

</body>
</html>
