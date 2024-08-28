document.addEventListener('DOMContentLoaded', function() {
    // 삭제 버튼 클릭 이벤트
    const deleteButton = document.querySelector('.delete-button');
    const commentDeleteButton = document.querySelector('.comment-delete-btn-custom');
    const likeImage = document.getElementById('likeImage');
    const contentInput = document.getElementById('content-input');
    const contentInfo = document.getElementById('content-info');
    
    // 삭제 버튼 이벤트
    if (deleteButton) {
        deleteButton.addEventListener('click', function() {
            const confirmDelete = confirm('삭제하시겠습니까?');
            
            if (confirmDelete) {
                alert('삭제되었습니다');
                window.location.href = "adminNotice.jsp"; // adminNotice.html로 이동
            }
        });
    }

    // 댓글 삭제 버튼 이벤트
    if (commentDeleteButton) {
        commentDeleteButton.addEventListener('click', function() {
            const confirmDelete = confirm('삭제하시겠습니까?');
            
            if (confirmDelete) {
                alert('삭제되었습니다');
                window.location.href = "communityBoard.jsp"; // community.html로 이동
            }
        });
    }

    // 좋아요 버튼 클릭 이벤트
    if (likeImage) {
        likeImage.addEventListener('click', function() {
            const currentSrc = likeImage.getAttribute('src');
            if (currentSrc === '../../resources/images/heart1.png') {
                likeImage.setAttribute('src', '../../resources/images/heart2.png');
            } else {
                likeImage.setAttribute('src', '../../resources/images/heart1.png');
            }
        });
    }

    // 내용 입력 필드 이벤트
    if (contentInput) {
        contentInput.addEventListener('input', function() {
            if (contentInput.value.trim() === '') {
                contentInfo.style.display = 'block';
            } else {
                contentInfo.style.display = 'none';
            }
        });
    }
});



