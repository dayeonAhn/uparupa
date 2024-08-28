document.addEventListener('DOMContentLoaded', function() {
    const imageButtons = document.querySelectorAll('.image-button');
    const resetButtons = document.querySelectorAll('.reset-button');
    const imageModal = document.getElementById('imageModal');
    const closeModal = document.getElementById('closeModal');
    const gridItems = document.querySelectorAll('.grid-item');
    const searchInput = document.getElementById('searchInput');

    let activeButtonId = null;

    // + 버튼 클릭 시 모달 열기
    imageButtons.forEach(button => {
        button.addEventListener('click', function() {
            activeButtonId = this.dataset.buttonId;
            imageModal.style.display = 'block';
        });
    });

    // 닫기 버튼 클릭 시 모달 닫기
    closeModal.addEventListener('click', () => {
        imageModal.style.display = 'none';
    });

    // 그리드 아이템 클릭 시 이미지 선택 및 모달 닫기
    gridItems.forEach(item => {
        item.addEventListener('click', function() {
            const selectedImage = this.dataset.image;
            const selectedText = this.dataset.text;
            const selectedButton = document.querySelector(`.image-button[data-button-id="${activeButtonId}"]`);
            const selectedResetButton = document.querySelector(`.reset-button[data-button-id="${activeButtonId}"]`);

            if (selectedButton && selectedResetButton) {
                // 이미지와 텍스트를 감싸는 div 추가, X 버튼 위치 조정
                selectedButton.innerHTML = `
                    <div style="position: relative; display: flex; flex-direction: column; align-items: center; justify-content: center;">
                        <img src="${selectedImage}" alt="${selectedText}" style="width:200px; height:auto;">
                        <p style="width: 200px; margin-top: 10px;">${selectedText}</p>
                    </div>
                `;
                selectedResetButton.style.display = 'block';
                imageModal.style.display = 'none';
            }
        });
    });

    // X 버튼 클릭 시 초기 상태로 복구
    resetButtons.forEach(button => {
        button.addEventListener('click', function() {
            const buttonId = this.dataset.buttonId;
            const selectedButton = document.querySelector(`.image-button[data-button-id="${buttonId}"]`);
            
            selectedButton.innerHTML = '+';
            this.style.display = 'none';
        });
    });

    // 검색 기능 구현
    searchInput.addEventListener('input', function() {
        const filter = this.value.toLowerCase();
        gridItems.forEach(item => {
            const text = item.dataset.text.toLowerCase();
            item.style.display = text.includes(filter) ? 'block' : 'none';
        });
    });
});
