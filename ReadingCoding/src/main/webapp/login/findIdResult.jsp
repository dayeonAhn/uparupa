<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
	<link rel="stylesheet" href="../resources/style/logStyle.css">  <!-- 의연 -->
</head>
<body>
	<div id="wrap">
        <div class="indexImg"><img src="../resources/images/LogoAxlot.png" alt="logoImg"></div>
        <div class="findInfo">
            <h2>아이디 찾기</h2>
            <span>조회된 결과입니다</span>
        </div>
        <div>
            <b>아이디</b>
    		<span>${dto.id}</span>
        </div>
	    <button type="button" class="goLogin"><a href="login/login.do">로그인 화면으로</a></button>
        <button type="button" class="FindPwd"><a href="/findPwd.do">비밀번호 찾기</a></button>
	</form>
    
<script>
	document.querySelector('.goLogin').addEventListener('click', function() {
	    window.location.href = 'login/login.do';
	});
	document.querySelector('.FindPwd').addEventListener('click', function() {
	    window.location.href = 'findPwd.do';
	});
</script>
</body>
</html>