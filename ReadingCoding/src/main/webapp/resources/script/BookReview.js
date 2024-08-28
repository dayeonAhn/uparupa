// 프로필 이미지를 클릭하면 파일 선택 창이 열림
document.getElementById('profileImage').addEventListener('click', function() {
  document.getElementById('imageUpload').click();
});

// 파일이 선택되면 프로필 이미지가 변경됨
document.getElementById('imageUpload').addEventListener('change', function() {
  const file = this.files[0];
  if (file) {
      const reader = new FileReader();
      reader.onload = function(e) {
          document.getElementById('profileImage').setAttribute('src', e.target.result);
      }
      reader.readAsDataURL(file);
  }
});








// 현재 날짜를 포함한 Date 객체를 생성합니다.
let date = new Date();

// 캘린더를 렌더링하는 함수입니다.
const renderCalender = () => {
  // 현재 연도와 월을 가져옵니다.
  const viewYear = date.getFullYear();
  const viewMonth = date.getMonth();

  // .year-month 요소에 현재 연도와 월을 표시합니다.
  document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

  // 이전 달의 마지막 날짜와 현재 달의 마지막 날짜를 계산합니다.
  const prevLast = new Date(viewYear, viewMonth, 0);
  const thisLast = new Date(viewYear, viewMonth + 1, 0);

  const PLDate = prevLast.getDate(); // 이전 달의 마지막 날짜
  const PLDay = prevLast.getDay();   // 이전 달의 마지막 날짜의 요일 (0: 일요일, 1: 월요일, ..., 6: 토요일)

  const TLDate = thisLast.getDate(); // 현재 달의 마지막 날짜
  const TLDay = thisLast.getDay();   // 현재 달의 마지막 날짜의 요일

  // 날짜 배열을 생성합니다.
  const prevDates = [];
  const thisDates = [...Array(TLDate + 1).keys()].slice(1); // 현재 달의 날짜 배열 (1부터 시작)
  const nextDates = [];

  // 이전 달의 날짜를 배열에 추가합니다.
  if (PLDay !== 6) {
    for (let i = 0; i < PLDay + 1; i++) {
      prevDates.unshift(PLDate - i); // 이전 달의 날짜를 역순으로 추가합니다.
    }
  }

  // 다음 달의 날짜를 배열에 추가합니다.
  for (let i = 1; i < 7 - TLDay; i++) {
    nextDates.push(i);
  }

  // 전체 날짜 배열을 생성합니다. (이전 달, 현재 달, 다음 달)
  const dates = prevDates.concat(thisDates, nextDates);

  // 현재 달의 첫 번째와 마지막 날짜 인덱스를 계산합니다.
  const firstDateIndex = dates.indexOf(1);
  const lastDateIndex = dates.lastIndexOf(TLDate);

  // 날짜를 HTML 형식으로 변환합니다.
  dates.forEach((date, i) => {
    // 날짜가 현재 달에 해당하는지 'this' 또는 'other'로 구분합니다.
    const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this'
                      : 'other';
    dates[i] = `<div class="date"><span class=${condition}>${date}</span></div>`;
  });

  // .dates 요소에 날짜를 표시합니다.
  document.querySelector('.dates').innerHTML = dates.join('');

  // 오늘 날짜를 강조 표시합니다.
  const today = new Date();
  if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
    for (let date of document.querySelectorAll('.this')) {
      if (+date.innerText === today.getDate()) {
        date.classList.add('today'); // 오늘 날짜에 'today' 클래스를 추가합니다.
        break;
      }
    }
  }
};

// 초기 렌더링을 수행합니다.
renderCalender();

// 이전 달로 이동하는 함수입니다.
const prevMonth = () => {
  date.setDate(1);
  date.setMonth(date.getMonth() - 1); // 현재 월을 1개월 전으로 설정합니다.
  renderCalender(); // 캘린더를 다시 렌더링합니다.
};

// 다음 달로 이동하는 함수입니다.
const nextMonth = () => {
  date.setDate(1);
  date.setMonth(date.getMonth() + 1); // 현재 월을 1개월 후로 설정합니다.
  renderCalender(); // 캘린더를 다시 렌더링합니다.
};





// 독후감 작성 모달

// 모달을 엽니다
function openReviewModal() {
  document.getElementById("reviewModal").style.display = "block";
}

// 모달을 닫습니다
function closeReviewModal() {
  document.getElementById("reviewModal").style.display = "none";
}

// 이모지 선택 함수
function selectMood(imagePath) {
  var selectedMoodImage = document.getElementById('selectedMoodImage');
  if (imagePath) {
      selectedMoodImage.src = imagePath; // 선택된 이미지 경로로 변경
      selectedMoodImage.style.width = '55px'; // 크기 설정
      selectedMoodImage.style.height = '55px'; // 높이 설정 (이미지 비율에 맞게 조정)
      selectedMoodImage.style.display = 'block'; // 이미지를 보이도록 설정
  } else {
      selectedMoodImage.style.display = 'none'; // 빈 공간처럼 보이도록 숨김
  }
  // 드롭다운을 닫습니다.
  toggleMoodDropdown(false); 
}

// 드롭다운 토글 함수
function toggleMoodDropdown(event) {
  var moodDropdown = document.getElementById('moodDropdown');
  
  // 드롭다운을 열거나 닫기
  if (moodDropdown.style.display === 'none' || moodDropdown.style.display === '') {
      moodDropdown.style.display = 'grid'; // 드롭다운 열기
  } else {
      moodDropdown.style.display = 'none'; // 드롭다운 닫기
  }
  
  // 이벤트 버블링 방지
  event.stopPropagation();
}

// 클릭 시 드롭다운 외부를 클릭하면 드롭다운이 닫히도록 설정
document.addEventListener('click', function(event) {
  var moodDropdown = document.getElementById('moodDropdown');
  var moodSelector = document.querySelector('.mood-selector');
  if (!moodSelector.contains(event.target) && !moodDropdown.contains(event.target)) {
      moodDropdown.style.display = 'none';
  }
});




// 저장 버튼 클릭 시
document.getElementById('saveBtn').addEventListener('click', function() {
  alert("독후감이 저장되었습니다.");
});

// 삭제 버튼 클릭 시
document.getElementById('deleteBtn').addEventListener('click', function() {
  if (confirm("독후감을 삭제하시겠습니까?")) {
      alert("독후감이 삭제되었습니다.");
      // 실제 삭제 로직 추가 (예: 데이터 삭제 코드)
  } else {
      // 이전 상태 유지
      return; // 아무 동작도 하지 않음
  }
});






