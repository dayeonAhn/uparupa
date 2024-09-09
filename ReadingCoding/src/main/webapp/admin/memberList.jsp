<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
	<link rel="stylesheet" href="/resources/style/temp.css"> <!--재성 -->
	<link rel="stylesheet" href="/resources/style/logStyle.css">  <!-- 의연 -->
</head>
<body>

	<jsp:include page="../adminHeader.jsp"></jsp:include>
	
	
    <div id="wrap">
        <h2 class="memberMngList">회원 관리 목록</h2>
        <form action="deleteMember.do" method="post">
        <table>
            <thead>
                <tr>
                    <th></th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>닉네임</th>
                    <th>가입일</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>프로필</th>
                    <th>게시글 수/<br>댓글 수</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="member" items="${members}">
                    <tr>
                        <td>
                            <input type="checkbox" id="memberChk_${member.id}" name="members" value="${member.email}">
                        </td>
                        <td>${member.id}</td>
                        <td>${member.name}</td>
                        <td>${member.nickName}</td>
                        <td>${member.regDate}</td>
                        <td>${member.phone}</td>
                        <td>${member.email}</td>
                        <td>
                        <img src="${member.profile}" 
                        alt="프로필" width="20" height="20"></td>
                        <!-- <img class="memImg" src="/resources/images/testPic.png" 
                        alt="프로필" width="20" height="20"></td> -->
                        <td>${member.postCount}/${member.commentCount}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <button onclick="return confirm('정말 탈퇴시키겠습니까?')" type="submit">삭제</button>
    </form>
    <!-- 페이징 -->
    <div class="pagination">
        <c:forEach var="i" begin="1" end="${totalPages}">
            <a href="?page=${i}" class="${i == currentPage ? 'active' : ''}">${i}</a>
        </c:forEach>
    </div>
    </div>
     <c:if test="${not empty msg }">
    	<script>
    		alert('${msg }')
    	</script>
    	<c:remove var="msg" scope="session" />
    </c:if> 
    
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
