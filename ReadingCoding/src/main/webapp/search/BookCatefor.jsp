<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 카테고리별 분류</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- <script src="../resources/script/BookSearchEvent.js" charset="UTF-8"></script> -->
    
    
    <link rel="stylesheet" href="../resources/style/temp.css"> 
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> -->
    
</head>
<body>

<!-- ///////////////////////////// 헤더 ///////////////////////////// -->
    <jsp:include page="../header.jsp"></jsp:include>
    <!-- ///////////////////////////// 헤더 ///////////////////////////// -->
    
   
	
    
    <!-- 임시 검색용 창 -->
    <!-- <input id="bookName" type="text" placeholder="도서명을 입력하세요">
    <button id="search">검색</button> -->
    
    <div class="BookSearchContent">
        <div class="BookSearchListTop">
            <span class="bookpagetitle">외국 도서 </span>
            <span class="dropdown-el">
                <!-- <input type="radio" name="sortType" value="latest" checked="checked" id="sort-relevance">
                <label for="sort-relevance">최신순</label>
                <input type="radio" name="sortType" value="booktitle" id="sort-best">
                <label for="sort-best">도서명순</label> -->
            </span>
        </div>
        
       <!--  도서 검색 뜨는 위치(스크립트의 DOM 형식으로 출력 진행 한페이지에 10개, 5개의 페이징씩 진행되도록) -->
        <div class="BookContentList"></div>
		
		
		<!-- 페이징 기능(도서 검색 자체에 페이징 기능이 있음) -->
        <div class="pagination">
            <a href="#" class="prev"><</a>
            <span class="pages"></span>
            <a href="#" class="next">></a>
        </div>
    </div>
    
    
    
    <!-- ///////////////////////////// 푸더 ///////////////////////////// -->
    <footer>
    <jsp:include page="../footer.jsp"></jsp:include>
    </footer>
    <!-- ///////////////////////////// 푸더 ///////////////////////////// -->
    
    
    <!-- <script>
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
    </script> -->
    <script>
    $(document).ready(function() {
        let currentPage = 1;
        const pageSize = 10;
        let totalPages = 1;
        const pagesToShow = 5;
        let currentGroup = 1;
        let sortType = $("#sortType").val(); 
        let isClicked = false;  // 전역 변수로 선언

        const initialQuery = "a";
        console.log("Initial Query:", sortType);
        if (initialQuery) {
            fetchBooks(initialQuery, currentPage, sortType); 
        }

        function fetchBooks(query, page, sort) {
        	console.log("Fetching books with sort type:", sort);
            if (!query || query.trim() === "") {
                alert("도서명을 입력하세요.");
                return;
            }

            $.ajax({
                url: "https://dapi.kakao.com/v3/search/book?target=title",
                method: "GET",
                data: {
                    query: query,
                    size: pageSize,
                    page: page,
                    sort: sort 
                },
                cache: false,
                headers: { Authorization: "KakaoAK e76ab04a10cbf3e41e31593cd4c13d70" }
            })
            .done(function(res) {

                if (res.documents && res.documents.length > 0) {
                    $(".BookContentList").empty();
                    res.documents.forEach(function(book, i) {
                    	//getBookMarkStatus(book.isbn);
                    	const dateParts = book.datetime.split('T')[0].split('-');
                        const formattedDate = `\${dateParts[0]}년 \${parseInt(dateParts[1], 10)}월 \${parseInt(dateParts[2], 10)}일`;

                        const bookContent = $('<div>').addClass('BookContent').attr('data-book-index', i);
                        const bookImgDiv = $('<div>').addClass('bookimg');
                        const bookImg = $('<img>').attr('src', book.thumbnail).attr('alt', 'Book Image');
                        bookImgDiv.append(bookImg);

                        const bookDetails = $('<div>').addClass('bookDetails');
                        const bookTitle = $('<h3>').addClass('bookTitle').text(book.title);
                        const bookInfo = $('<div>').addClass('bookInfo');

                        const bookAuthors = $('<div>').addClass('bookinfo').text("저자: " + book.authors.join(", "));
                        const bookTranslators = $('<div>').addClass('bookinfo').text("번역: " + book.translators.join(", "));
                        const bookPublisher = $('<div>').addClass('bookinfo').text("출판사: " + book.publisher);
                        const bookDateTime = $('<div>').addClass('bookinfo').text("출판일: " + formattedDate);

                        bookInfo.append(bookAuthors).append(bookTranslators).append(bookPublisher).append(bookDateTime);
                        bookDetails.append(bookTitle).append(bookInfo);

                        const bookStarDiv = $('<div>').addClass('bookstar');
                        const bookStarImg = $('<img>').attr('src', '../resources/images/bookstar_off.png').attr('alt', 'Star Rating').addClass('star-icon');
                        bookStarDiv.append(bookStarImg);

                        bookContent.append(bookImgDiv).append(bookDetails).append(bookStarDiv);   //html 구성
                        
                        
                        const firstIsbn = book.isbn.split(' ')[1];  //isbn 뒤 13자리만 가져오기
                        getBookMarkStatus(firstIsbn, bookStarImg);  //isbn 13자리와 img 정보 넘기기(img 정보는 상태에 따라 변경되게 하기 위해서)
                        const title = book.title;
                        const thumbnail = book.thumbnail;
                        // 북마크 아이콘 클릭 이벤트 처리
                        bookStarImg.click(function(e) {
                            e.preventDefault();
                            e.stopPropagation();
                            
                            isClicked = !isClicked;
                            if (isClicked) {
                                bookStarImg.attr('src', '${pageContext.request.contextPath}/resources/images/bookstar_on.png');
                            } else {
                                bookStarImg.attr('src', '${pageContext.request.contextPath}/resources/images/bookstar_off.png');
                            }
                            
                            //session에 저장되어있는 id가져오기
                            const sessId = '<%= session.getAttribute("sessId") %>';
                            
                            // 서버로 북마크 상태 전송
                            $.ajax({
                                type: 'GET',
                                url: 'saveinterestBook.do',
                                data: {
                                    isbn: firstIsbn,
                                    id: sessId, // 임시 사용자 ID 사용
                                    title: title,
                                    thumbnail: thumbnail
                                },
                                dataType: "json",
                                success: function (status) {
                                    if (status === 1) {
                                        console.log("관심 도서로 등록되었습니다.");
                                        alert("관심 도서로 등록 취소 되었습니다.");
                                    } else if (status === 0) {
                                        console.log("관심 도서가 취소되었습니다.");
                                        alert("관심 도서가 등록되었습니다.");
                                    }
                                },
                                error: function (xhr, status, error) {
                                    console.error("오류 발생: " + error);
                                    alert("북마크 실패");
                                }
                            });
                        });
                        
                        //클릭 시 상세 정보 넘기기
                        bookContent.click(function() {
                            const bookDetails = {
                                title: book.title,
                                authors: book.authors.join(", "),
                                translators: book.translators.join(", "),
                                publisher: book.publisher,
                                datetime: formattedDate,
                                thumbnail: book.thumbnail,
                                contents: book.contents,
                                isbn: book.isbn
                            };

                            const params = $.param(bookDetails);
                            window.location.href = '${pageContext.request.contextPath}/search/BookSearch.jsp?' + params;
                        });
                        
                        
                        $(".BookContentList").append(bookContent);
                    });

                    totalPages = Math.ceil(res.meta.total_count / pageSize);
                    updatePagination(initialQuery);
                } else {
                    $(".BookContentList").empty();
                    $(".BookContentList").append("<p>검색 결과가 없습니다.</p>");
                }
            });
        }
        
     // 페이지 로드 시 북마크 상태를 확인하는 함수
        function getBookMarkStatus(isbn, starImgElement) {
        	//session에 저장되어있는 id가져오기
            const sessId = '<%= session.getAttribute("sessId") %>';
            console.log("사용자 아이디 : " + sessId);  //제대로 받아옴
            console.log("상태 확인 실행 중");  //실행 됨
            $.ajax({
                type: 'GET',
                url: 'statusinterestBook.do',
                data: {
                    isbn: isbn,
                    id: sessId
                },
                dataType: 'json',
                success: function(status) {
                	//alert("상태 점검 성공" + status);
                    if (status === 1) {
                    	starImgElement.attr('src', '${pageContext.request.contextPath}/resources/images/bookstar_on.png');
                        isClicked = true;
                    } else {
                    	starImgElement.attr('src', '${pageContext.request.contextPath}/resources/images/bookstar_off.png');
                        isClicked = false;
                    }
                },
                error: function(status, error) {
                    alert("상태 점검에 성공하지 못함");
                }
            });
        }
        
        
     // 페이지네이션 업데이트
        function updatePagination(query) {
            $(".pages").empty();

            const startPage = (currentGroup - 1) * pagesToShow + 1;
            const endPage = Math.min(startPage + pagesToShow - 1, totalPages);

            if (currentGroup > 1) {
                $(".prev").show();
            } else {
                $(".prev").hide();
            }

            if (endPage < totalPages) {
                $(".next").show();
            } else {
                $(".next").hide();
            }

            for (let i = startPage; i <= endPage; i++) {
                const pageLink = $('<a href="#">').text(i);
                if (i === currentPage) {
                    pageLink.css('font-weight', 'bold');//현재 페이지면 bold로
                }
                pageLink.click(function(e) {
                    e.preventDefault();
                    currentPage = i;
                    fetchBooks(query, currentPage, sortType); 
                });
                $(".pages").append(pageLink);
            }
        }
     
     // sortType 변경 시 도서 목록을 다시 가져옴
        $('#sortType').change(function() {
            sortType = $(this).val();
            currentPage = 1; // 페이지를 1로 리셋
            currentGroup = 1; // 그룹도 리셋
            fetchBooks(initialQuery, currentPage, sortType);
        });

        $('#search').click(function() {
            currentPage = 1;  // 검색 버튼 클릭 시 페이지를 1로 이동
            currentGroup = 1;  //현재 그룹페이지 
            fetchBooks(initialQuery, currentPage, sortType);
        });

        $('.prev').click(function(e) {
            e.preventDefault();
            if (currentGroup > 1) {
                currentGroup--;
                const newPage = (currentGroup - 1) * pagesToShow + 1;
                currentPage = newPage;
                fetchBooks(initialQuery, currentPage, sortType);
            }
        });

        $('.next').click(function(e) {
            e.preventDefault();
            if (currentGroup * pagesToShow < totalPages) {
                currentGroup++;
                const newPage = (currentGroup - 1) * pagesToShow + 1;
                currentPage = newPage;
                fetchBooks(initialQuery, currentPage, sortType);
            }
        });
        
     
    });
    
</script>
    

	<style>
	    .pagination {
	        text-align: center;
	        margin-top: 20px;
	    }
	
	    .pagination a {
	        margin: 0 5px;
	        text-decoration: none;
	        color: #000;
	        font-weight: normal;
	    }
	
	    .pagination a:hover {
	        font-weight: bold;
	    }
	
	    .BookSearchContent {
	        margin-bottom: 100px;
	    }
	
	    .BookContentList {
	        margin-bottom: 20px;
	    }
	</style>
    
    
    
    

</body>
</html>
