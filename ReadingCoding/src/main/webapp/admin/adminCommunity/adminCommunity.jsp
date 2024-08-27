<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ŀ�´�Ƽ ����Ʈ</title>
   <link rel="stylesheet" href="/resources/style/com.css">
</head>
<body>
    <div class="container">
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
        </div>

        <!-- Ŀ�´�Ƽ ����Ʈ -->
        <div class="community-list">
            <!-- ���� -->
            <div class="admin-post-header">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">��ȣ</span>
                <span class="com-post-title">����</span>
                <span class="post-author">�ۼ���</span>
                <span class="post-date">�ۼ�����</span>
                <span class="post-views">��ȸ��</span>
            </div>

            <!-- �� �׸� -->
            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">1</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">ù ��° ���� ����</a></span>
                <span class="post-author">�ۼ���1</span>
                <span class="post-date">2024-08-01</span>
                <span class="post-views">123</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">2</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">�� ��° ���� ����</a></span>
                <span class="post-author">�ۼ���2</span>
                <span class="post-date">2024-08-02</span>
                <span class="post-views">234</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">3</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">�� ��° ���� ����</a></span>
                <span class="post-author">�ۼ���3</span>
                <span class="post-date">2024-08-03</span>
                <span class="post-views">345</span>
            </div>
            <hr>

            <div class="post-item">
                <input type="checkbox" class="post-checkbox">
                <span class="post-number">4</span>
                <span class="com-post-title"><a href="adminCommunityBoard.jsp">�� ��° ���� ����</a></span>
                <span class="post-author">�ۼ���4</span>
                <span class="post-date">2024-08-04</span>
                <span class="post-views">456</span>
            </div>
            <hr>
        </div>
        <div class="buttons">
            <button class="delete-button">����</button>
        </div>
        <div class="pagination">
            <a href="#">&lt;</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">&gt;</a>
        </div>
    </div>
</body>
</html>
