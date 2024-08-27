<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   	<link rel="stylesheet" href="/resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
   	<link rel="stylesheet" href="/resources/style/com.css"> <!-- 채윤 -->
	<link rel="stylesheet" href="/resources/style/BookReview.css"> <!--유민 -->
	<link rel="stylesheet" href="/resources/style/logStyle.css">  <!-- 의연 -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
    $(document).ready(function(){
    	/* 
    	$("ul.list li").click(function() {
    		console.log("############")
    	   // toggleClass(".active_color");
    	}); */
	
	$('ul.list li').click(function(){
		var tabCon = $(this).attr('id');
        if(tabCon == "listLi1"){
            $(this).addClass("is_on");
            $("#listLi2").removeClass("is_on");
            $("#listLi3").removeClass("is_on");

            $("#tab_1").show();
            $("#tab_1").addClass("is_on");
            $("#tab1").show();
            $("#tab1").addClass("is_on");

            $("#tab_2").hide();
            $("#tab_2").removeClass("is_on");
            $("#tab2").hide();
            $("#tab2").removeClass("is_on");

            $("#tab_3").hide();
            $("#tab_3").removeClass("is_on")
            $("#tab3").hide();
            $("#tab3").removeClass("is_on");
        }else if(tabCon == "listLi2"){
            $(this).addClass("is_on");
            $("#listLi1").removeClass("is_on");
            $("#listLi3").removeClass("is_on");

            $("#tab_2").show();
            $("#tab_2").addClass("is_on");
            $("#tab2").show();
            $("#tab2").addClass("is_on");

            $("#tab_1").hide();
            $("#tab_1").removeClass("is_on");
            $("#tab1").hide();
            $("#tab1").removeClass("is_on");

            $("#tab_3").hide();
            $("#tab_3").removeClass("is_on")
            $("#tab3").hide();
            $("#tab3").removeClass("is_on");
        }else if(tabCon == "listLi3"){
            $(this).addClass("is_on");
            $("#listLi2").removeClass("is_on");
            $("#listLi1").removeClass("is_on");

            $("#tab_3").show();
            $("#tab_3").addClass("is_on");
            $("#tab3").show();
            $("#tab3").addClass("is_on");

            $("#tab_2").hide();
            $("#tab_2").removeClass("is_on");
            $("#tab2").hide();
            $("#tab2").removeClass("is_on");

            $("#tab_1").hide();
            $("#tab_1").removeClass("is_on")
            $("#tab1").hide();
            $("#tab1").removeClass("is_on");
        }
	})

    $("#listLi1").addClass("is_on");
    $("#listLi2").removeClass("is_on");
    $("#listLi3").removeClass("is_on");

    $("#tab_1").show();
    $("#tab_1").addClass("is_on");
    $("#tab1").show();
    $("#tab1").addClass("is_on");

    $("#tab_2").hide();
    $("#tab_2").removeClass("is_on");
    $("#tab2").hide();
    $("#tab2").removeClass("is_on");

    $("#tab_3").hide();
    $("#tab_3").removeClass("is_on")
    $("#tab3").hide();
    $("#tab3").removeClass("is_on");
})
</script>

</head>
<body>
	<div id="wrap">
        <div class="tab_menu">
            <div class="tabImg">
                <div id="tab_1" class="tabImg is_on">
                    <img src="/resources/images/bookTab1.jpg" alt="tabImg1">
                </div>
                <div id="tab_2" class="tabImg">
                    <img src="/resources/images/bookTab2.jpg" alt="tabImg2">
                </div>
                <div id="tab_3" class="tabImg">
                    <img src="/resources/images/bookTab3.jpg" alt="tabImg3">
                </div>
            </div>
            <ul class="list">
                <li id="listLi1" class="is_on">
                    <a href="#tab1" class="btn" data-tab="tab1">독서의 장점</a>
                </li>
                <li id="listLi2">
                    <a href="#tab2" class="btn" data-tab="tab2">독서 길잡이</a>
                </li>
                <li id="listLi3">
                    <a href="#tab3" class="btn" data-tab="tab3">명언 모음</a>
                </li>
            </ul>
            <hr>
            <div class="cont_area">
                <div id="tab1" class="cont is_on">
                    <ol>
                        <li>어디서든 편하게 새로운 세상을 느끼는 방법</li>
                        <span>⦁ 새로운 정보와 지식은 전반적인 지식 수준을 높혀주고, 학문적 이해를 넓히는데 도움을 줍니다. 또한 전문적인 기술도 익힐 수 있으며 작가가 만든 세상에 초대를 받을 수도 있습니다. </span>

                        <li>언어 능력과 어휘력 향상</li>
                        <span>⦁  다양한 글을 읽으면 자연스럽게 어휘력이 향상되어 새로운 단어와 표현을 접하게 되서 사용 능력이 개선됩니다.  </span>

                        <li>정서적 안정과 사회적 이해</li>
                        <span>⦁ 정신없고 바쁜 일상의 스트레스에서 벗어나 심리적 안정을 찾을 수 있고, 문화와 사회적인 이해와 공감은 대인관계에서도 긍정적인 영향을 미칩니다. </span>
                    </ol>
                </div>
                <div id="tab2" class="cont">
                    <p>
                        힐링하고자, 도파민 중독에서 벗어나고자, 정신없는 세상에서 조금은 정적인 무언가를 즐기고자 <br>
                        여러 이유로 ‘독서’를 선택한 당신에게, 독서를 더욱 편하게 즐길 수 있도록 ‘6가지 독서 길잡이’를 추천드립니다.
                    </p>
                    <div class="chk">
                        <ul>
                            <li>독서 목표 설정하기</li>
                            <li>다양한 장르 탐색하기</li>
                            <li>전자책 및 오디오북 활용하기</li>
                            <li>자신의 독서 공간 만들기 </li>
                            <li>읽기 노트 작성하기</li>
                            <li>소규모 독서 모임 참여하기</li>
                        </ul>
                    </div>
                </div>
                <div id="tab3" class="cont">
                    <div class="goodWord1">
                        <div>
                            <b>"읽기는 완전한 사람을 만들고, 대화는 재치 있는 사람을 만들며, 글쓰기는 정확한 사람을 만든다."</b>
                            <em>"Reading maketh a full man, conference a ready man, and writing an exact man."</em>
                        </div>
                        <span>- 프란시스 베이컨(Francis Bacon)</span>
                    </div>

                    <div class="goodWord2">
                        <div>
                            <b>"독서는 사고의 여행이다."</b>
                            <em>"In reading, we must be careful to distinguish between what the author intends to say and what the author actually says."</em>
                        </div>
                        <span>- 루이스 캐럴 (Lewis Carroll)</span>
                    </div>

                    <div class="goodWord3">
                        <div>
                            <b>"독서는 자유를 위한 문을 연다."</b>
                            <em>"Once you learn to read, you will be forever free."</em>
                        </div>
                        <span>- 프레드릭 더글라스 (Frederick Douglass)</span>
                    </div>
                </div>
            </div>
            <hr>
        </div>
    </div>


    

</body>
</html>