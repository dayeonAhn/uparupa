<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/style/temp.css">
    <title>Insert title here</title>
</head>

<body>
	<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="./header.jsp"></jsp:include>
	<div class="main-page">
		<div class="banner-container">
	        <div class="banner-slide">  
	            <img src="resources/images/banner01.png" alt="배너1 이미지" />
	            <img src="resources/images/banner02.png" alt="배너2 이미지" />
	            <img src="resources/images/banner03.png" alt="배너3 이미지" />
	        </div>
	        <div class="banner-buttons">
        	    <button class="active"></button>
        	    <button></button>
        	    <button></button>
	        </div>
	    </div>
	       
	    <div class="main-book-report">
	    	<div class="book-report-title">
	    		<p>읽은 책의<br>기록서</p>
	    	</div>
	    	<div class="book-report-background">
				<div class="book-report-background-area">
		    		<div class="main-area"> </div>
	    			<div class="main-area"></div>
		    		<div class="main-area"><a href="#">1. 피노키오를 읽고..</a></div>
					<div class="main-area"></div>
					<div class="main-area"></div>
		    		<div class="main-area"><a href="#">2. 해님달님을 읽고..</a></div>
		    		<div class="main-area"><a href="#">3. 신데렐라를 읽고..</a></div>
		    		<div class="main-area"></div>
					<div class="main-area"></div>
		    		<div class="main-area"><a href="#">4. 콩쥐팥쥐를 읽고..</a></div>
		    		<div class="main-area"><a href="#">5. 백설공주를 읽고..</a></div>
		    		<div class="main-area"></div>
		    		<div class="main-area"></div>
		    		<div class="main-area"> </div>
	    		</div>
	    	</div>
	    
	    </div>
	    <div class="today-book">
	    	<div class="today-book-title"><p><b>오늘의 책</b></p></div>
	    	<div class="today-book-area">
	    		<div class="today-book-rect">
	    			<a href="#"><img class="main-book-image" src="resources/images/dragon_book.png" alt="흑막 용을 키우게 되었다" /></a>
	    			<p>흑막 용을 키우게 되었다</p>
	    		</div>
	    		<div class="today-book-rect">
	    			<a href="#"><img class="main-book-image" src="resources/images/lost_thing_book.png" alt="분실물이 돌아왔습니다" /></a>
	    			<p>분실물이 돌아왔습니다</p>
	    		</div>
	    		<div class="today-book-rect">
	    			<a href="#"><img class="main-book-image" src="resources/images/coding_book.png" alt="세상에서 가장 쉬운 코딩책" /></a>
	    			<p>세상에서 가장 쉬운 코딩책</p>
	    		</div>
	    	</div>
	    </div>
	    <div class="tie_bannder">
	    	<a href="#"><img src="resources/images/instagram_banner.png" /></a>
	    	<a href="#"><img src="resources/images/remember_banner.png" /></a>
	    </div>
    </div>
    
		
    <jsp:include page="./footer.jsp"></jsp:include>
    <script src='resources/script/mainPage.js'></script>
</body>

</html>