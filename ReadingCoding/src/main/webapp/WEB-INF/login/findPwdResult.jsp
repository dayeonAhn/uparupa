<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
   	<link rel="stylesheet" href="/resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="/resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="/resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="/resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="/resources/style/logStyle.css">  <!-- 의연 -->
    <script>
        function pwdResultForm(form){
            if(form.pwdResult.value ==""){
                alert("비밀번호를 입력해주세요");
                form.pwdResult.focus();
                return false
            }
            if(form.pwdResultChk.value ==""){
                alert("비밀번호를 확인 해주세요");
                form.pwdResultChk.focus();
                return false
            }
            if(form.pwdResult.value != form.pwdResultChk.value){
                alert("비밀번호가 일치하지 않습니다");
                form.pwdResultChk.focus();
                return false
            }
        }
    </script>
</head>
<body>
	<div id="wrap">
        <div class="indexImg"><img src="/resources/images/LogoAxlot.png" alt="logoImg"></div>
        <div class="findInfo">
            <h2>비밀번호 찾기</h2>
            <span>설정할 새로운 비밀번호를 입력해주세요</span>
        </div>
        <form class="findPwdFrm" action="/login/updatePwd.do" method="post" onsubmit="return pwdResultForm(this)">
            <div class="findPwdResult">
                <b>비밀번호</b>
                <input type="text" class="pwdResult" id="pwdResult" name="pwdResult" placeholder="새로운 비밀번호를 입력해주세요"/>
            </div>

            <div class="findPwdChkResult">
                <b>비밀번호 확인</b>
                <input type="password" class="pwdResultChk" id="pwdResultChk" name="pwdResultChk"/>
            </div>

    	    <input type="submit" value="작성완료">
	    </form>
	</div>
    
</body>
</html>