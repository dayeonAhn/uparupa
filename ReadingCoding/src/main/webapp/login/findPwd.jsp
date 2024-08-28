<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert title here</title>
   	<link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="../resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="../resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="../resources/style/logStyle.css">  <!-- 의연 -->
<script>
//findPwd
    function findPwdForm(form){
        if(form.findId.value == ""){
                alert("아이디를 입력해주세요");
                form.findId.focus();
                return false;
            }
        if(form.findName.value == ""){
                alert("이름을 입력해주세요");
                form.findName.focus();
                return false;
            }
        if(form.findEmail.value == ""){
            alert("이메일을 입력해주세요");
            form.findEmail.focus();
            return false;
        }
        return true;
    }
</script>
</head>
<body>
	<div id="wrap">
        <div class="indexImg"><img src="../resources/images/LogoAxlot.png" alt="logoImg"></div>
        <div class="findInfo">
            <h2>비밀번호 찾기</h2>
            <span>회원가입 시 등록했던 정보를 입력해주세요</span>
        </div>

	<form class="findPwdFrm" action="login/findPwd.do" method="post" onsubmit="return findPwdForm(this)">
        <div class="findPwd">
            <b>아이디</b>
            <input type="text" class="findId" id="findId" name="findId" placeholder="아이디를 입력해주세요"/>
        </div>
        <div class="findPwd2">
            <b>이름</b>
            <input type="text" class="findName" id="findName" name="findName" placeholder="이름을 입력해주세요"/>
        </div>
        <div class="findPwd3">
            <b>이메일</b>
            <input type="email" class="findEmail" id="findEmail" name="findEmail" placeholder="example@upa.com"/>
        </div>

	    <input type="submit" value="작성완료">
	</form>
    
</body>
</html>