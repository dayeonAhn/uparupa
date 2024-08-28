document.addEventListener('DOMContentLoaded', () => {
	const slides = document.querySelector('.banner-slide');
    const buttons = document.querySelectorAll('.banner-buttons button');
    const slideCount = buttons.length;
    let currentIndex = 0;

    function updateSlidePosition() {
        const slideWidth = document.querySelector('.banner-container').clientWidth;
        slides.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
    }

    function showSlide(index) {
        currentIndex = index;
        updateSlidePosition();

        // 활성화된 버튼 업데이트
        buttons.forEach((button, i) => {
            button.classList.toggle('active', i === index);
        });
    }

    function nextSlide() {
        currentIndex = (currentIndex + 1) % slideCount;
        showSlide(currentIndex);
    }

    // 버튼 클릭 이벤트
    buttons.forEach((button, index) => {
        button.addEventListener('click', () => showSlide(index));
    });

    // 자동 슬라이드 (10초마다)
    setInterval(nextSlide, 10000);

    // 윈도우 리사이즈 시 슬라이드 위치 업데이트
    window.addEventListener('resize', updateSlidePosition);
});