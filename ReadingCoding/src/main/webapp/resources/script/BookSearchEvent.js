$(document).ready(function () {
    $('#search').click(function() {
        $.ajax({
            method: "GET",
            url: "https://dapi.kakao.com/v3/search/book?query=title",
            data: { query: $("#bookName").val() },
            headers: { Authorization: "KakaoAK e76ab04a10cbf3e41e31593cd4c13d70" }
        })
        .done(function (res) {
        	console.log("내용" + res.document[0]);
            if (res.documents && res.documents.length > 0) {  /*검색관련 도서가 있는 경우*/
/*                $(".BookContentList").empty();*/
                for (let i = 0; i < res.documents.length; i++) {
                    const book = res.documents[i];
                    const dateParts = book.datetime.split('T')[0].split('-');
                    const formattedDate = dateParts[0] + "년 " + parseInt(dateParts[1], 10) + "월 " + parseInt(dateParts[2], 10) + "일";

                    const bookContent = $('<div>').addClass('BookContent').attr('data-book-index', i);
                    const bookImgDiv = $('<div>').addClass('bookimg');
                    const bookImg = $('<img>').attr('src', book.thumbnail).attr('alt', 'Book Image');
                    bookImgDiv.append(bookImg);

                    const bookDetails = $('<div>').addClass('bookDetails');
                    const bookTitle = $('<h3>').addClass('bookTitle').text(book.title);
                    const bookInfo = $('<div>').addClass('bookInfo');

                    const bookAuthors = $('<span>').addClass('bookinfo').text(book.authors.join(", "));
                    const bookTranslators = $('<span>').addClass('bookinfo').text(book.translators.join(", "));
                    const bookPublisher = $('<span>').addClass('bookinfo').text(book.publisher);
                    const bookDateTime = $('<span>').addClass('bookinfo').text(formattedDate);

                    bookInfo.append(bookAuthors).append(bookTranslators).append(bookPublisher).append(bookDateTime);
                    bookDetails.append(bookTitle).append(bookInfo);

                    const bookStarDiv = $('<div>').addClass('bookstar');
                    const bookStarImg = $('<img>').attr('src', '../resources/images/bookstar_off.png').attr('alt', 'Star Rating').addClass('star-icon');
                    bookStarDiv.append(bookStarImg);

                    bookContent.append(bookImgDiv).append(bookDetails).append(bookStarDiv);
                    $(".BookContentList").append(bookContent);

                    bookContent.click(function() {
                        window.location.href = "BookSearch.jsp";
                    });
                }

                $(".bookstar").show();
            } else {
                alert("검색 결과가 없습니다.");
                $(".BookContentList").empty();
                $(".bookstar").hide();
            }
        })
        .fail(function (err) {
            console.error("에러 발생:", err);
            alert("도서 정보를 가져오는 데 문제가 발생했습니다.");
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

    $('.star-icon').click(function() {
        var isOn = $(this).attr('src') === '../resources/images/bookstar_on.png';
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
