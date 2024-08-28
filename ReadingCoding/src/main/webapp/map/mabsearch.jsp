<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>도서관 위치</title>
    <link rel="stylesheet" href="../resources/style/bookSearchBoardcss.css"> <!-- 다연  -->
	<link rel="stylesheet" href="../resources/style/temp.css"> <!--재성 -->
</head>
<body>
<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>

<div id="map" style="width:1240px;height:600px;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8b82058c8e436bd6f169a857bcc1786&libraries=services"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 현재 위치 표시
navigator.geolocation.getCurrentPosition(function(position) {
    
    
    

    // 도서관 정보 가져오기
    var url = "http://openapi.seoul.go.kr:8088/44746463726b6f6e393472645a5253/xml/SeoulPublicLibraryInfo/1/1000/";
    
    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'xml',
        success: function(response) {
            var libraries = $(response).find('row');
            
            // 주소-좌표 변환 객체를 생성합니다
            var geocoder = new kakao.maps.services.Geocoder();
            
            libraries.each(function() {
                var libraryName = $(this).find('LBRRY_NAME').text();
                var address = $(this).find('ADRES').text();
                
                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(address, function(result, status) {
                    if (status === kakao.maps.services.Status.OK) {
                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                        
                        // 도서관 위치 마커를 지도에 표시합니다
                        var libraryMarker = new kakao.maps.Marker({
                            map: map,
                            position: coords
                        });
                        
                        // 도서관 이름을 인포윈도우로 표시합니다
                        var libraryInfowindow = new kakao.maps.InfoWindow({
                            content: '<div style="padding:5px;">' + libraryName + '</div>'
                        });
                        libraryInfowindow.open(map, libraryMarker);
                    }
                });
            });
        }
    });
    
    var lat = position.coords.latitude, // 위도
    lon = position.coords.longitude; // 경도

var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
    message = '<div style="padding:5px;">현재 위치</div>'; // 인포윈도우에 표시될 내용입니다

// 현재 위치 마커와 인포윈도우를 생성합니다
var marker = new kakao.maps.Marker({  
    map: map, 
    position: locPosition
}); 

var infowindow = new kakao.maps.InfoWindow({
    content: message,
    removable: true
});

// 인포윈도우를 마커 위에 표시합니다 
infowindow.open(map, marker);
    
 // 지도 중심을 현재 위치로 이동시킵니다
    map.setCenter(locPosition);
});

</script>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>
