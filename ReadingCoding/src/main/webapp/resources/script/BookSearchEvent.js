/**
 * 
 */

$(document).ready(function () {
    $('#search').click(function() {
        $.ajax({
            method: "GET",
            url: "https://dapi.kakao.com/v3/search/book",  //도서 정보 url
            data: { query: $("#bookName").val() },
            headers: { Authorization: "KakaoAK e76ab04a10cbf3e41e31593cd4c13d70" }  //카카오 key
        })
        .done(function (res) {
            if (res.documents && res.documents.length > 0) {
                $(".BookContentList").empty();

                for (let i = 0; i < res.documents.length; i++) {
                    const book = res.documents[i]; //도서 데이터
            
                    // 날짜 조정
                    const dateParts = book.datetime.split('T')[0].split('-');
                    const formattedDate = dateParts[0] + "년 " + parseInt(dateParts[1], 10) + "월 " + parseInt(dateParts[2], 10) + "일";

                    // DOM
                    const bookContent = $('<div>').addClass('BookContent').attr('data-book-index', i);
                    const bookImgDiv = $('<div>').addClass('bookimg');
                    const bookImg = $('<img>').attr('src', book.thumbnail).attr('alt', 'Book Image');
                    bookImgDiv.append(bookImg);

                    const bookDetails = $('<div>').addClass('bookDetails');
                    const bookTitle = $('<h3>').addClass('bookTitle').text(book.title);
                    const bookInfo = $('<div>').addClass('bookInfo');

                    const bookAuthors = $('<span>').addClass('bookinfo').text(book.authors.join(", "));
                    const bookAuthors = $('<span>').addClass('bookinfo').text(book.translators.join(", "));
                    const bookPublisher = $('<span>').addClass('bookinfo').text(book.publisher);
                    const bookDateTime = $('<span>').addClass('bookinfo').text(formattedDate);

                    bookInfo.append(bookAuthors).append(bookTranslators).append(bookPublisher).append(bookDateTime);
                    bookDetails.append(bookTitle).append(bookInfo);

                    const bookStarDiv = $('<div>').addClass('bookstar');
                    const bookStarImg = $('<img>').attr('src', '../resources/images/bookstar_off.png').attr('alt', 'Star Rating').addClass('star-icon');
                    bookStarDiv.append(bookStarImg);

                    // DOM 요소 합..?
                    bookContent.append(bookImgDiv).append(bookDetails).append(bookStarDiv);
                    
                    // 리스트에 추가
                    $(".BookContentList").append(bookContent);

                 // 클릭 시 단순히 페이지로 이동
                    bookContent.click(function() {
                        window.location.href = "BookSearch.jsp";
                    });
                }

                // 즐겨찾기 아이콘을 보이도록 설정
                $(".bookstar").show();
            } else {
                alert("검색 결과가 없습니다.");
                $(".BookContentList").empty(); // 결과가 없으면 리스트를 초기화
                $(".bookstar").hide();
            }
        })
        .fail(function (err) {
            console.error(err);
            alert("도서 정보를 가져오는 데 문제가 발생했습니다.");
        });
    });
});


$('.dropdown-el').click(function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).toggleClass('expanded');
    $('#'+$(e.target).attr('for')).prop('checked',true);
});
$(document).click(function() {
    $('.dropdown-el').removeClass('expanded');
});

//즐겨찾기 이미지 클릭 이벤트
$(document).ready(function() {
    $('.star-icon').click(function() {
        var isOn = $(this).attr('src') === '../resource/image/bookstar_on.png';
        if (isOn) {
            $(this).attr('src', '../resources/images/bookstar_off.png');
            $(this).data('star', false);
        } else {
            $(this).attr('src', '../resources/images/bookstar_on.png');
            $(this).data('star', true);
        }
        console.log("Star status:", $(this).data('star'));
    });
});
