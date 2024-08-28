<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ŀ�´�Ƽ ����Ʈ</title>
	<link rel="stylesheet" href="/resources/style/com.css">
    <script src="/resources/script/com.js"></script>
</head>
<body>
    <div class="com-container">
        <!-- ��� �� -->
        <div class="top-bar">
            <!-- ������ ���� -->
            <div class="community-title">Ŀ�´�Ƽ</div>

            <!-- ���� ���� ���� �޴� -->
            <div class="sort-menu">
                <select id="sort-options" class="sort-select">
                    <option value="latest">�ֽż�</option>
                    <option value="views">��ȸ����</option>
                </select>
            </div>

            <!-- �˻�â�� ����â�� ���δ� �����̳� -->
            <div class="search-container custom-border">
                <select id="search-category" class="search-select custom-input-border">
                    <option value="title">����</option>
                    <option value="content">����</option>
                </select>
                <input type="text" id="search-input" class="search-input custom-input-border" placeholder="�˻��� �Է�">
            </div>

            <!-- �۾��� ��ư -->
            <button class="write-button" onclick="window.location.href='communityForm.jsp'">�۾���</button>
        </div>

        <div class="post-box">
            <!-- ��� ����: �ۼ��� �̸��� ��ȸ�� -->
            <div class="post-header">
                <div class="author-name">ä����</div>
                <div class="view-count">��ȸ�� 7</div>
            </div>
            
            <!-- �߰� ����: Ŀ�´�Ƽ ���� -->
            <div class="post-title">
                <a href="communityBoard.jsp">�θǽ� �Ҽ� ��õ ���ֽ� �� �������?</a>
            </div>
            
            <!-- �ϴ� ����: ��� ���� ���ƿ� �� -->
            <div class="post-footer">
                <div class="comment-count">���(1)</div>
                <div class="straight-line">|</div>
                <div class="likes-count">
                    <img id="likeImage" src="/resources/images/heart1.png" alt="��Ʈ" class="like-image-custom">
                    <span>23</span>
                </div>
            </div>
        </div>
        <div class="more">+������</div>
        <!-- Ŀ�´�Ƽ ����Ʈ ������ �� �κ� -->
    </div>
</body>
</html>
