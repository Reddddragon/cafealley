<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alleyMap</title>
</head>
<body>

	<%@ include file="../include/header.jsp"%>
	
	<!-- map api -->
	<section>
		<div class="container" style="margin-top: 50px">
			<div class="row">
				<ul style="text-align: center;">
					<div id="map" style="width: 1200px; height: 700px;"></div>
				</ul>
			</div>
		</div>
	</section>
	
	<%@ include file="../include/footer.jsp"%>
	
	<!-- map appkey : 17136e4884602adf06d712c2e104879b -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17136e4884602adf06d712c2e104879b&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(35.49611102378534, 127.99588621081337), // 지도의 중심좌표
	        level: 13 // 지도의 확대 레벨
	    };
	
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
	
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		const addrList = new Array();
		
		<c:forEach items="${bsnsUserAddr}" var="addr">
			addrList.push('${addr}');
		</c:forEach>
		
		console.log(addrList);
		
		for(let address of addrList) {
			
			console.log(address);
			console.log(typeof(addr));
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(address, function(result, status) {
	
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
	
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
	
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">' + address + '</div>'
		        });
		        infowindow.open(map, marker);
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        
		    } 
		});
	}
	
	
	</script>
	
	
</body>
</html>