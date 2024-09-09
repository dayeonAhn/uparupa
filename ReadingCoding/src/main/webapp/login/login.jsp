<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
	<link rel="stylesheet" href="../resources/style/logStyle.css">  <!-- 의연 -->
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
        <div class="indexImg"><img src="../resources/images/LogoAxlot.png" alt="logoImg"></div>

        <form class="loginFrm" action="login.do" method="post" onsubmit="return valForm(this)">
            <input type="text" class="joinId" id="joinId" name="joinId" placeholder="아이디를 입력해주세요"/>
            <input type="password" class="joinPwd" id="joinPwd" name="joinPwd" placeholder="비밀번호를 입력해주세요"/>
            <div>
                <a href="/findId.do">아이디</a>
                <a href="/findPwd.do">비밀번호</a>
                <span>찾기</span>
            </div>

            <input type="submit" value="로그인">
        </form>
        <div class="easyLogin">
            <span>간편 로그인</span>
            <button type="button">
            	<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=b26305eb6ef4340de79fb30b1b16a85a&redirect_uri=http://localhost:9999/login/kakaoLogin.do">카카오톡으로 로그인하기</a>
            </button>
        </div>
        <span class="noMem">
            <a href="joinMemForm.do">회원이 아니신가요?</a>
        </span>
    </div>
    <c:if test="${not empty msg }">
    	<script>
    		alert('${msg }')
    	</script>
    	<c:remove var="msg" scope="session" />
    </c:if>
    
    
    
    <!— 카카오 SDK —>
    <!-- <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script> -->
   <!--  <script type="text/javascript">
    //f239eb428106623739174c246d568271
    window.Kakao.init("f239eb428106623739174c246d568271");
    
    function kakaoLogin(){
    	window.Kakao.Auth.login({
    		scope:'profile_nickname, profile_image, account_email',
    		success : function(authObj){
    			console.log(authObj);
    			window.Kakao.API.request({
    				url:'/v2/user/me',
    				success :  res =>{
    					const kakao_account = res.kakao_account;
    					console.log(kakao_account);
    				}
    			})
    		}
    	})
    }
    </script> -->
</body>
</html>