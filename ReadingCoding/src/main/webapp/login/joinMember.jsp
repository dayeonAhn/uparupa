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
	    //joinMember
	    function validateForm(form){
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
	
	    if(form.joinPwdChk.value == ""){
	        alert("비밀번호를 확인해주세요");
	        form.joinPwdChk.focus();
	        return false;
	    }
	    if(form.joinPwd.value != form.joinPwdChk.value){
	        alert("비밀번호가 서로 일치하지 않습니다");
	        form.joinPwd.focus();
	        return false;
	    }
	    if(form.joinName.value == ""){
	        alert("이름을 입력해주세요");
	        form.joinName.focus();
	        return false;
	    }
	    if(form.joinNick.value == ""){
	        alert("닉네임을 입력해주세요");
	        form.joinNick.focus();
	        return false;
	    }
	    if(form.joinPhone.value == ""){
	        alert("휴대폰 번호를 입력해주세요");
	        form.joinPhone.focus();
	        return false;
	    }
	    if(form.joinEmail.value == ""){
	        alert("이메일을 입력해주세요");
	        form.joinEmail.focus();
	        return false;
	    }
	    return true;
	}
	</script>
</head>
<body>
	
	<div id="wrap">
	
	    <div class="indexImg"><img src="/resources/images/LogoAxlot.png" alt="logoImg"></div>
	    
		<form class="joinFrm" action="/login/joinMember.do" method="post" onsubmit="return validateForm(this)">
		
		<div class="joinId">
	        <b>아이디</b>
	        <input type="text" id="joinId" name="joinId">
	        <input type="button" id="idCheking" onclick="idCk()" value="중복확인"> 
	    </div>
	
	    <div class="joinPwd">
	        <b>비밀번호</b>
	        <input type="password" id="joinPwd" name="joinPwd">
	    </div>
	
	    <div class="joinPwdChk">
	        <b>비밀번호 확인</b>
	        <input type="password" id="joinPwdChk">
	    </div>
	
	    <div class="joinName">
	        <b>이름</b>
	        <input type="text" id="joinName" name="joinName">
	    </div>

	    <div class="joinNickNam">
	        <b>닉네임</b>
	        <input type="text" id="joinNick" name="joinNick">
	        <input type="button" id="nickCheking" onclick="nickCk()" value="중복확인"> 
	    </div>
	
	    <div class="joinPhone">
	        <span>'-'빼고 숫자만 입력하세요</span>
	        <b>휴대폰번호</b>
	        <input type="text" id="joinPhone" name="joinPhone">
	    </div>
	
	    <div class="joinEmail">
	        <b>이메일</b>
	        <input type="email" name="joinEmail" id="joinEmail">
	        <input type="button" id="emailCheking" onclick="emaCk()" value="중복확인">
	    </div>
	    <input type="submit" value="회원가입 완료">
					
		</form>
	
	
	</div>
	
</body>
</html>