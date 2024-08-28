<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/style/BookReview.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        //joinMember
        function validateForm(form) {
            if (form.joinId.value == "") {
                alert("아이디 입력해주세요");
                form.joinId.focus();
                return false;
            }
            if (form.joinPwd.value == "") {
                alert("비밀번호를 입력해주세요");
                form.joinPwd.focus();
                return false;
            }

            if (form.joinPwdChk.value == "") {
                alert("비밀번호를 확인해주세요");
                form.joinPwdChk.focus();
                return false;
            }
            if (form.joinPwd.value != form.joinPwdChk.value) {
                alert("비밀번호가 서로 일치하지 않습니다");
                form.joinPwd.focus();
                return false;
            }
            if (form.joinName.value == "") {
                alert("이름을 입력해주세요");
                form.joinName.focus();
                return false;
            }
            if (form.joinNick.value == "") {
                alert("닉네임을 입력해주세요");
                form.joinNick.focus();
                return false;
            }
            if (form.joinPhone.value == "") {
                alert("휴대폰 번호를 입력해주세요");
                form.joinPhone.focus();
                return false;
            }
            if (form.joinEmail.value == "") {
                alert("이메일을 입력해주세요");
                form.joinEmail.focus();
                return false;
            }
            return true;
        }

        function nickCk() {
            const nick = document.getElementById('joinNick').value;
            const usedNicknames = ['이채윤아닙니다.', 'readingcoding', 'uparupa']; // 예시로 사용 중인 닉네임 목록

            if (usedNicknames.includes(nick)) {
                alert('사용하고 있는 닉네임입니다.');
            } else {
                alert('사용가능한 닉네임입니다.');
            }
        }

        function validateForm() {

            alert("회원 수정이 완료되었습니다.");

            return true;
        }

        function confirmDeletion() {
            if (confirm('회원탈퇴를 진행하시겠습니까?\n탈퇴 후에는 계정이 삭제되며, 모든 정보가 삭제됩니다.')) {
                alert('탈퇴가 완료되었습니다.\n이용해주셔서 감사합니다');
                return true;
            } else {
                return false;
            }
        }
    </script>
    
    <link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
</head>

<body>

<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>
    <div class="nickname-container">
        <div>
            <img src="../resources/images/프로필 사진.png" alt="profile" class="profile-image">
        </div>
        <h1>니크네임데스</h1>
        <p>님의 서재</p>
    </div>

    <hr class="divider">

    <div class="menu">
        <a href="../BookReview.jsp">독서기록</a>
        <a href="interestBook.jsp">관심등록</a>
        <a href="updateMember.jsp">회원수정</a>
        <a href="../webChat/UserChatpage.jsp">1:1 고객문의</a>
    </div>

    <div class="wrap">

        <form class="joinFrm" method="post" onsubmit="return validateForm(this)">

            <div class="joinId">
                <b>아이디</b>
                <input type="text" id="joinId" name="joinId" value="readingCoding" readonly>
            </div>

            <div class="joinPwd">
                <b>비밀번호</b>
                <input type="password" id="joinPwd" name="joinPwd" value="●●●●●●">
            </div>

            <div class="joinPwdChk">
                <b>비밀번호 확인</b>
                <input type="password" id="joinPwdChk" value="●●●●●●">
            </div>

            <div class="joinName">
                <b>이름</b>
                <input type="text" id="joinName" name="joinName" value="readingCoding" readonly>
            </div>

            <div class="joinNickNam">
                <b>닉네임</b>
                <input type="text" id="joinNick" name="joinNick" value="이채윤아닙니다.">
                <input type="button" id="nickCheking" onclick="nickCk()" value="중복확인">
            </div>

            <div class="joinPhone">
                <span class="inputhint">'-' 빼고 숫자만 입력하세요</span>
                <div>
                    <b>휴대폰번호</b>
                    <input type="text" id="joinPhone" name="joinPhone" value="01012345678">
                </div>
            </div>

            <div class="joinEmail">
                <b>이메일</b>
                <input type="email" name="joinEmail" id="joinEmail" value="love@every.one">
            </div>

            <div class="button-container">
                <button class="submitButton" type="submit" onclick="return validateForm(this.form);">회원수정 완료</button>
                <button class="deleteButton" type="button" onclick="return confirmDeletion();">회원탈퇴</button>
            </div>
    </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>