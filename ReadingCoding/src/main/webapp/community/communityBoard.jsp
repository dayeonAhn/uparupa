<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ŀ�´�Ƽ �� ��������</title>
   	<link rel="stylesheet" href="/resources/style/com.css">
    <script src="/resources/script/com.js"></script>
</head>
<body>
    <div class="container">
        
    <!-- <button class="report-btn-custom">�Ű��ϱ�</button>-->
        <!-- �Խñ� �ڽ� -->
        <div class="post-box-custom">
            <!-- �Ű��ϱ� ��ư -->
            

            <!-- ���� �� ��� ���� -->
            <div class="post-header-custom">
                <h1 class="post-title-custom">Ȥ�� �θǽ� �Ҽ� ��õ ���ֽ� �� �������?</h1>
                <div class="profile-info-custom">
                    <img src="/resources/images/kitty.jpg" alt="������ ����" class="profile-image-custom">
                    <div class="author-info-custom">
                        <div class="author-name-custom">ä����</div>
                        <div class="post-date-custom">2024.08.10</div>
                    </div>
                </div>
            </div>
            
            <hr class="divider-custom">

            <!-- ���� -->
            <div class="post-content-custom">
                ��õ���ּ���
            </div>
            
            <!-- �ؽ��±� -->
            <div class="post-tags-custom">
                <a href="hashtag.jsp"><span class="tag-custom">#��������</span></a>
            </div>
            <hr class="divider-custom">
            <!-- ��ȸ��, ���, ���ƿ� -->
            <div class="post-stats-custom">
                <span class="views-comments-custom">��ȸ�� 7 | ���(1��)</span>
                <div class="like">
                    <img id="likeImage" src="/resources/images/heart1.png" alt="��Ʈ" class="like-image-custom">
                    <span class="likes-custom">���ƿ�</span>
                </div>
            </div>

            <hr class="divider-custom">

            <!-- ��� ���� -->
            <div class="comment-section-custom">
                <div class="comment-author-info-custom">
                    <img src="/resources/images/kitty.jpg" alt="������ ����" class="comment-profile-image-custom">
                    <div class="comment-author-name-custom">���̴�</div>
                    <div class="comment-date-custom">2024.08.10</div>
                </div>
                <div class="comment-buttons-custom">
                    <div class="comment-content-custom">�ø��� ? ���� �� ?</div>
                    <div>
                        <button class="comment-edit-btn-custom">����</button>
                        <button class="comment-delete-btn-custom">����</button>
                    </div>
                </div>
            </div>
            
            <!-- ��� �ۼ� -->
            <div class="comment-write-box-custom">
                <textarea class="comment-write-input-custom" placeholder="����� �ۼ��ϼ���"></textarea>
                <button class="comment-submit-btn-custom">���</button>
            </div>
            
            <hr class="divider-custom">

            <button class="back-button-custom" onclick="window.location.href='community.jsp'">���</button>

        </div>
    </div>
</body>
</html>
