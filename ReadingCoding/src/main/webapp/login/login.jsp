<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
   	<link rel="stylesheet" href="/resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="/resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="/resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="/resources/style/logStyle.css">  <!-- 의연 -->
	<script>
	    // Login
	    function valForm(form){
	        if(form.joinId.value == ""){
	                alert("아이디 입력해주세요");
	                form.joinId.focus();
	                return false;
	            }
	
	        if(form.joinPwd.value == ""){
	            alert("비밀번호를 입력해주세요");
	            form.joinPwd.focus();
	            return false;
	        }
	        return true;
	    } 
	</script>
</head>
<body>
	<div id="wrap">
        <div class="indexImg"><img src="/resources/images/LogoAxlot.png" alt="logoImg"></div>

        <form class="loginFrm" action="/login/login.do" method="post" onsubmit="return valForm(this)">
            <input type="text" class="joinId" id="joinId" name="joinId" placeholder="아이디를 입력해주세요"/>
            <input type="password" class="joinPwd" id="joinPwd" name="joinPwd" placeholder="비밀번호를 입력해주세요"/>
            <div>
                <a href="findId.do">아이디</a>
                <a href="findPwd.do">비밀번호</a>
                <span>찾기</span>
            </div>

            <input type="submit" value="로그인">
        </form>
        <div class="easyLogin">
            <span>간편 로그인</span>
            <button type="button"><a href="#">카카오톡으로 로그인하기</a></button>
        </div>
        <span class="noMem">
            <a href="/login/joinMember.do">회원이 아니신가요?</a>
        </span>
    </div>
</body>
</html>