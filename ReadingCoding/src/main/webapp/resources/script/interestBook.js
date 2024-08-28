// 편집 모드 토글 함수
function toggleEditMode() {
    var body = document.body;
    var editButtons = document.getElementById('editButtons');
    var bookLabel = document.getElementById('bookLabel');
    var editButton = document.querySelector('.edit');
    
    if (body.classList.contains('edit-mode')) {
        // 편집 모드 종료
        body.classList.remove('edit-mode');
        editButtons.style.display = 'none'; // 편집 버튼 숨기기
        bookLabel.innerHTML = '전체 <span id="bookCount">10</span>권'; // 원래 텍스트로 복원
        if (editButton) {
            editButton.style.display = 'inline-block'; // 편집 버튼 다시 보이기
        }
        // 삭제 및 취소 버튼 제거
        var deleteButton = document.querySelector('.delete-button');
        var cancelButton = document.querySelector('.cancel-button');
        if (deleteButton) deleteButton.remove();
        if (cancelButton) cancelButton.remove();
    } else {
        // 편집 모드 활성화
        body.classList.add('edit-mode');
        editButtons.style.display = 'block'; // 편집 버튼 보이기
        bookLabel.innerHTML = '<span id="selectAll" class="select-all">전체 선택</span>'; // 편집 모드에서 텍스트 변경 및 스타일 적용
        if (editButton) {
            editButton.style.display = 'none'; // 편집 버튼 숨기기
        }
        // 삭제 및 취소 버튼 추가
        var deleteButton = document.createElement('button');
        deleteButton.textContent = '삭제';
        deleteButton.classList.add('delete-button');
        deleteButton.addEventListener('click', deleteSelected);

        var cancelButton = document.createElement('button');
        cancelButton.textContent = '취소';
        cancelButton.classList.add('cancel-button');
        cancelButton.addEventListener('click', cancelEdit);

        editButtons.appendChild(deleteButton);
        editButtons.appendChild(cancelButton);
    }
}

// 전체 선택 또는 선택 해제 함수
function toggleSelectAll() {
    var bookCards = document.querySelectorAll('.book-card');
    var allSelected = Array.from(bookCards).every(card => card.classList.contains('selected'));

    if (allSelected) {
        // 모든 책 카드가 선택된 상태라면 선택 해제
        bookCards.forEach(card => card.classList.remove('selected'));
        document.getElementById('bookLabel').innerHTML = '<span id="selectAll" class="select-all">전체 선택</span>';
    } else {
        // 모든 책 카드가 선택되지 않은 상태라면 전체 선택
        bookCards.forEach(card => card.classList.add('selected'));
        document.getElementById('bookLabel').innerHTML = '<span id="selectAll" class="select-all">전체 취소</span>';
    }
}

// 전체 선택 또는 선택 해제 클릭 이벤트 핸들러
document.addEventListener('DOMContentLoaded', function() {
    // 편집 모드에서 '전체 선택' 클릭 시 모든 책 카드 선택 또는 선택 해제
    document.getElementById('bookLabel').addEventListener('click', function(event) {
        if (event.target && event.target.id === 'selectAll') {
            toggleSelectAll();
        }
    });

    // 책 카드 클릭 시 선택 상태 토글
    document.querySelectorAll('.book-card').forEach(function(card) {
        card.addEventListener('click', toggleBookSelection);
    });
});

// 책 카드 클릭 시 선택 상태 토글 함수 (편집 모드에서만 동작)
function toggleBookSelection(event) {
    var bookCard = event.currentTarget;

    if (document.body.classList.contains('edit-mode')) {
        bookCard.classList.toggle('selected'); // 선택 상태 토글
    }
}

// 취소 버튼 클릭 시 편집 모드 종료 및 선택 취소
function cancelEdit() {
    // 편집 모드를 해제하고 선택을 취소합니다
    toggleEditMode();
}







document.addEventListener('DOMContentLoaded', function() {
    const editButton = document.querySelector('.edit');
    const bookList = document.querySelector('.book-list');
    const bookCount = document.getElementById('bookCount');

    editButton.addEventListener('click', function() {
        bookList.classList.toggle('edit-mode');
        
        if (bookList.classList.contains('edit-mode')) {
            editButton.style.display = 'none'; // 편집 버튼 숨김
            const deleteButton = document.createElement('button');
            deleteButton.textContent = '삭제';
            deleteButton.classList.add('delete-button');
        }

            deleteButton.addEventListener('click', function() {
                // 삭제 동작
                if (confirm('모든 책을 삭제하시겠습니까?')) {
                    // 예를 들어, 서버에서 데이터를 삭제하는 API 호출 등을 여기에 추가
                    alert('모든 책이 삭제되었습니다.');
                }
            });

            const cancelButton = document.createElement('button');
            cancelButton.textContent = '취소';
            cancelButton.classList.add('cancel-button');
            cancelButton.addEventListener('click', function() {
                bookList.classList.remove('edit-mode');
                editButton.style.display = 'inline-block'; // 편집 버튼 다시 표시
                deleteButton.remove(); // 삭제 버튼 제거
                cancelButton.remove(); // 취소 버튼 제거
            });

            bookList.appendChild(deleteButton);
            bookList.appendChild(cancelButton);
    });
});





