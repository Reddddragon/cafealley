<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Cafe Alley</title>

<link rel="stylesheet" href="<c:url value='/css/mainstyle.css'/>">
<style>
		.carousel-inner > .item > a > img{
			min-width: 100%;
		}
		.clearfix::after {
            content: '';
            display: block;
            clear: both;
        }
    
        .container {
            min-width: 1200px;
            margin-top: 150px;
            margin-bottom: 50px;
        }
        
    	.blinking{ 
	    	-webkit-animation:blink 1.2s ease-in-out  alternate; 
	    	-moz-animation:blink 1.2s ease-in-out  alternate; 
	    	animation:blink 1.2s ease-in-out  alternate; 
    	}
    	@-webkit-keyframes blink{ 
    		0% {opacity:0;} 
    		100% {opacity:1;} 
    	} 
    	@-moz-keyframes blink{ 
    		0% {opacity:0;} 
    		100% {opacity:1;} 
    	} 
    	@keyframes blink{ 
    		0% {opacity:0;} 
    		100% {opacity:1;} 
    	}
    
    	.modal-content {
    		height: 680px;
    	}
        .promboard {
            display: block;
            margin-top: 150px;
            min-height: 5000px;
            min-width: 1200px;
        }
        a:focus{
            color:black;
        }
        li {
            list-style: none;
        }
        /* snsboard */
        
        .modalSection {
            position: relative;
            left: 300px;
            min-width: 900px;
            max-width: 900px;
            margin: 20px 0 0 0;
        }
                #contentDiv {
            margin: 0 0 0 calc(30vw - 300px);
            min-width: 940px;
            max-width: 940px;
            border-right: 1px solid #ddd;
            border-left: 1px solid #ddd;
            background-color: white;
            padding: 10px 20px;
            position: relative;
        }

        .cafeowner-menu {
            position: absolute;
            top: 15px;
            right: 15px;
        }

        .glyphicon-user {
            display: inline-block;
            height: 20px;
            padding-right: 15px;
            border-right: 1px solid black;
        }

        .glyphicon-pencil {
            display: inline-block;
            height: 20px;
            padding-left: 15px;
        }

        .content-wrapper {
            margin-top: 50px;
            width: 900px;
        }

        .title-inner {
            position: relative;
            padding: 15px 0;
            margin-top: 15px;
            border-top: 1px solid #ddd;
        }


        .title p,
        .profile p {
            font-weight: bolder;
        }

        .title-inner .profile {
            position: absolute;
            /*?????????????????? ???????????? ???????????????*/
            top: 15px;
            left: 0;
        }

        .title-inner .title {
            padding-left: 50px;
        }

        .image-inner {
            width: 900px;
        }

        .image-inner img {
            min-width: 900px;
            min-height: 600px;
            max-height: 600px;
        }

        .like-inner {
            position: relative;
            padding: 10px;
            margin-top: 10px;
            min-height: 40px;
            max-height: 40px;
            /* border-top: 1px solid #ddd; */
            border-bottom: 1px solid #ddd;

        }

        .like-inner img {
            width: 20px;
            height: 20px;
        }

        .like-inner .hashtag {
        	margin-top: 30px;
            position: absolute;
            top: 10px;
            right: 15px;
            padding: 0;
        }
        
        .like-inner .main {
        	margin-top: 5px;
            position: absolute;
            top: 0px;
            right: 15px;
            padding: 0;
        }

        .like-inner .hashtag li {
            float: left;
            padding-left: 5px;
            padding-right: 5px;
            font-size: 15px;
        }


        .like-inner .hashtag select {
            border-radius: 0;
            outline: none;
            border: 2px solid #000;
            font-size: 16px;
        }


        .link-inner {
            overflow: hidden;
            padding: 10px 0;
        }

        .link-inner a {
            float: left;
            width: 33.3333%;
            text-align: center;
            text-decoration: none;
            color: #333333;
        }

        .link-inner i {
            margin: 0 5px;
        }

        .link-inner img {
            width: 18px;
            height: 18px;
            margin-bottom: 3px;
        }

        /* ????????? ???????????? ?????? ????????? ????????? */
        /* .carousel-control.left,
        .carousel-control.right {
            background-image: none;
        } */

        /* ?????? ?????? ?????? */
        .modal-dialog button[data-dismiss='modal'] {
            position: fixed;
            right: -100px;
            top: 0px;
            color: white;
            font-size: 50px;
            opacity: 1;
        }


        .modal-promimg {
            display: block;
            float: left;
            max-width: 800px;
            min-width: 800px;
        }

        .modal-promimg img {
            /* max-width: 630px;
            min-width: 630px; */
            min-height: 600px;
            max-height: 600px;
            min-width: 800px;
            max-width: 800px;
            margin: 0 auto;
        }

        .modal-promcontent {
            display: block;
            min-width: 350px;
            max-width: 350px;
            max-height: 600px;
            min-height: 600px;
            float: right;
        }

        .modal-promcontent .title-inner {
            margin: 0;
        }

        .modal-promcontent .content-inner {
            max-height: 95px;
            min-height: 95px;
            position: relative;
        }

        .modal-promcontent .content-inner textarea {
            display: inline-block;
            position: absolute;
            top: 15px;
            left: 0;
            border: none;
            resize: none;
            width: 90%;
            height: 80px;
            font-size: 15px;
            overflow: scroll;
            -ms-overflow-style: none;
            overflow-x: hidden;
            outline: none;
            border: 1px solid #ddd;
        }

        .modal-promcontent .content-inner textarea::-webkit-scrollbar {
            display: none;
        }

        .modal-promcontent .like-inner {
            padding-left: 5px;
            padding-right: 5px;
        }

        .modal-promcontent .reply-inner {
            padding-top: 30px;
            margin-top: 50px;
            border-bottom: 1px solid #ddd;
            min-height: 325px;
            max-height: 325px;
            overflow: scroll;
            overflow-x: hidden;
            -ms-overflow-style: none;
        }

        .modal-promcontent .reply-inner::-webkit-scrollbar {
            display: none;
        }

        .modal-promcontent .reply-inner .reply-content {
            padding: 5px 0;
        }

        .modal-promcontent .reply-inner .reply-content .profile img {
            width: 25px;
            height: 25px;
        }

        .modal-promcontent .reply-inner .reply-content .profile p,
        .modal-promcontent .reply-inner .reply-content .profile img {
            display: inline-block;
        }

        .modal-promcontent .reply-form {
            display: block;
            width: 100%;
            height: 50px;
            position: relative;
        }

        .modal-promcontent .reply-form textarea {
            display: inline-block;
            position: absolute;
            top: 15px;
            left: 0;
            border: none;
            resize: none;
            width: 75%;
            height: 25px;
            overflow: scroll;
            -ms-overflow-style: none;
            font-size: 15px;
        }

        .modal-promcontent .reply-form textarea::-webkit-scrollbar {
            display: none;
        }

        .reply-form textarea:focus {
            outline: none;
        }

        .reply-form textarea::placeholder {
            line-height: 25px;
            text-indent: 10px;
            font-size: 15px;
            color: black;
        }

        .modal-promcontent .reply-form input[type="button"] {
            display: inline-block;
            position: absolute;
            top: 5px;
            right: 0;
            border: none;
            width: 20%;
            height: 50px;
            background-color: white;
            color: cornflowerblue;
            font-weight: bolder;

        }

        #myModal3 .like-inner,
        #myModal4 .like-inner {
            min-height: 430px;
            max-height: 430px;
        }

        #myModal3 .like-inner .hashtag,
        #myModal4 .like-inner .hashtag {
            position: absolute;
            top: 10px;
            left: 15px;
            padding: 0;
        }

        #myModal3 .like-inner .hashtag p,
        #myModal3 .like-inner .hashtag span,
        #myModal4 .like-inner .hashtag p,
        #myModal4 .like-inner .hashtag span {
            font-size: 20px;
            font-weight: bolder;
        }

        #myModal3 .like-inner label:hover,
        #myModal4 .like-inner label:hover {
            cursor: pointer;
        }

        #myModal3 .like-inner ul,
        #myModal4 .like-inner ul {
            padding: 0;
        }

        #myModal3 .like-inner ul li,
        #myModal4 .like-inner ul li {
            float: none;
            font-size: 18px;
        }

        /* sns?????? ???????????? ????????????  */

        .fileDiv {
            width: 800px;
            box-sizing: border-box;
            border: 1px dashed #ffffff;
        }

        .fileDiv:hover {
            cursor: pointer;
            border: 1px dashed #555;
            opacity: 0.5;
        }

        .fileDiv img {
            display: block;
        }

        .fileDiv p {
            text-align: center;
            margin-top: 150px;
        }

        #myModal4 .modal-promimg img[alt="upload"] {
            width: 300px;
            min-height: 300px;
            margin: 0 250px 100px;
        }

        #myModal4 .like-inner .hashtag p.warn {
            font-size: 10px;
            width: 100%;
            position: absolute;
            bottom: -100px;
            color: red;
        }      
        
        #nomargin{
        	margin-top : 0px;
        }
        

</style>

</head>
<body>

	<%@ include file="./include/header.jsp"%>

	<section style="margin-top: 150px;">
		<!-- Carousel ?????? ?????? -->
		<div class="container" style="width: auto;">
			<div class="row">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<a href="<c:url value='/promo/list'/>">
							<img src="<c:url value='/img/slide1.jpg'/>" alt="????????????1"></a>
						</div>
						<div class="item">
							<a href="<c:url value='/shop/shopList'/>">
							<img src="<c:url value='/img/slide2.jpg'/>" alt="????????????2"></a>
						</div>
						<div class="item">
							<a href="<c:url value='/cmBoard/cmList'/>">
							<img src="<c:url value='/img/slide3.jpg'/>" alt="????????????3"></a>
						</div>
					</div>

					<!-- carousel control  -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> 
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>

				</div>
			</div>
		</div>
	</section>

	<!-- map api -->
	<section>
		<div class="container" style="margin-top: 50px">
			<div class="row">
				<ul style="text-align: center;">
					<div id="map" style="width: 1100px; height: 300px;"></div>
				</ul>
			</div>
		</div>


		<!-- BEST CAFE -->
		<div class="container" style="margin-top: 50px">
			<div class="row">
				<ul class="col-xs-12">
					<li class="col-xs-6">
						<h3>
							<strong>CAFE BOARD</strong>
						</h3>
					</li>
				</ul>
				<ul class="col-xs-12" style="text-align: center;">
					<c:forEach var="c" items="${cntCafe}">
						<a onclick="modalContent(${c.bno})" style="cursor: pointer;">
							<img style="width: 224px; height: 200px;"
							 src="${pageContext.request.contextPath}/loadimg/display/${c.key}/1" alt="box"/>
						</a>
					</c:forEach>
						
				</ul>
			</div>
		</div>
		
		
		
		
		
	</section>

	<!--?????? ?????? 1-->
	<section>
		<div class="container" style="margin-top: 50px">
			<div class="row">
				<ul class="col-xs-12">
					<li class="col-xs-6">
						<h3>
							<strong>????????????</strong>
						</h3>
						<table class="table table-hover w-auto">
							<thead>
								<tr>
									<th>??????</th>
									<th>?????????</th>
								</tr>
							</thead>

							<!--???????????? ???????????? ?????? ????????? ?????? ????????? ???????????????-->
							<tbody>
								<c:forEach var="no" items="${noboard}">
									<tr>
										<td><a
											href="<c:url value='/noBoard/noDetail?bno=${no.bno}'/>">${no.title}</a>
										</td>
										<td><fmt:formatDate value="${no.regdate}" pattern="MM-dd" />
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</li>
					<li class="col-xs-6">
						<h3>
							<strong>????????????</strong>
						</h3>
						<table class="table table-hover w-auto">
							<thead>
								<tr>
									<th>??????</th>
									<th>?????????</th>
								</tr>
							</thead>

							<!--???????????? ???????????? ?????? ????????? ?????? ????????? ???????????????-->
							<tbody>
								<c:forEach var="cm" items="${cmboard}">
									<tr>
										<td><a
											href="<c:url value='/cmBoard/cmDetail?bno=${cm.bno}'/>">${cm.title}</a>
										</td>
										<td><fmt:formatDate value="${cm.regdate}" pattern="MM-dd" />
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</li>
				</ul>
			</div>
		</div>
	</section>
	
	<section id="modalSection">
		<!---------------------------------------------------------- ??? ??????  Modal ---------------------------------------------------------->
	    <div class="modal fade" id="modalContent">
	        <div class="modal-dialog" style="width: 1200px;">
	
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	
	            <!-- Modal Content -->
	            <div class="modal-content">
	
	                <div class="modal-body clearfix">
	
	                    <div class="modal-promimg">
	                        <div id="myCarousel2" class="carousel" data-ride="carousel" data-interval="false">
								
								<!-- ????????? ???????????? ????????? ?????? -->
								
	                        </div> <!-- carousel-->
	                    </div> <!-- modal-promimg -->
	
	
	
	                    <div class="modal-promcontent">
	                        <div id="addProf" class="title-inner">
	
								<!-- ????????? ????????? ?????????. -->
								
	                        </div>
	                        <!--???????????? 70??? ?????? ???????????? ??? ???.-->
	                        <div class="content-inner">
	                            <p id="con-content"></p>
	                            <small id="con-regdate"></small>
	                        </div>
	
	                        <!-- ????????? ??? ???????????? ??????-->
	                        <div class="like-inner">
	                            <!--?????????-->
	                            <img src="<c:url value='/img/like2.png'/>"> <span id="like-cnt">522</span>
	                            <!-- ???????????? -->
	                            <ul class="hashtag clearfix">
	                                <li><a id="con-area" href="#">#??????</a></li>
	                                <li><a id="con-place" href="#">#Morden / Neat</a></li>
	                                <li><a id="con-limit" href="#">#No Kids</a></li>
	                            </ul>
	                        </div>
	
	                        <!-- ?????? ?????? -->
	                        <div id="replyContentDiv" class="reply-inner">
								
								<!-- ????????? ???????????? ???????????? ????????????. -->
								
	                        </div>

	
	
	
	                    </div> <!-- modal-promcontent-->
	
	                </div> <!-- modal-body-->
	
	            </div> <!-- modal-content -->
	        </div> <!-- modal-dialog -->
	    </div> <!-- modal-fade myModal2-->
	
		<div id="contentDiv">
	                
			<!-- getJSON??? ????????? ????????? ????????? -->
		            
		</div>
	</section>
	
	

	<!--?????? ?????? 2-->
	<section>
		<div class="container" id="nomargin" style="margin-bottom: 50px">
			<div class="row">
				<ul class="col-xs-12">
					<li class="col-xs-6">
						<h3>
							<strong>?????? ??????</strong>
						</h3> <iframe width="560" height="315"
							src="https://www.youtube.com/embed/DPDH9lOs3QI"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</li>

					<li class="col-xs-6">
						<h3>
							<strong>?????? ??????</strong>
						</h3> <iframe width="560" height="315"
							src="https://www.youtube.com/embed/OdWEovjCy1o"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</li>
				</ul>
			</div>
		</div>
	</section>


	<%@ include file="./include/footer.jsp"%>
	
	<!-- map appkey : 17136e4884602adf06d712c2e104879b -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17136e4884602adf06d712c2e104879b&libraries=services"></script>
	<script>
		$(function() {

			console.log('${boardList}');
			// ????????? url ??????
			$('#pagination').on('click', 'a', function(e) {
				e.preventDefault();
				console.log($(this));
				const value = $(this).data('pagenum');
				console.log(value);
				document.pageForm.pageNum.value = value;
				document.pageForm.submit();
			});
		});// end jQuery
		
		
		var mapContainer = document.getElementById('map'), // ????????? ????????? div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
	        level: 3 // ????????? ?????? ??????
	    };  

		// ????????? ???????????????    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
	
		// ??????-?????? ?????? ????????? ???????????????
		var geocoder = new kakao.maps.services.Geocoder();
		
		const addrList = new Array();
		
		<c:forEach items="${bsnsUserAddr}" var="addr">
			addrList.push('${addr}');
		</c:forEach>
		
		console.log(addrList);
		
		for(let address of addrList) {
			
			console.log(address);
			console.log(typeof(addr));
			
			// ????????? ????????? ???????????????
			geocoder.addressSearch(address, function(result, status) {
		
			    // ??????????????? ????????? ??????????????? 
			     if (status === kakao.maps.services.Status.OK) {
		
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
			        // ??????????????? ?????? ????????? ????????? ???????????????
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
		
			        // ?????????????????? ????????? ?????? ????????? ???????????????
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">' + address + '</div>'
			        });
			        infowindow.open(map, marker);
		
			        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
			        map.setCenter(coords);
			    } 
			});    
		}
		
		function modalContent(bno) {
			console.log('?????? ???????????? ??????.');
			let str = '';
			
			$.getJSON(
				'<c:url value="/promo/getContent/" />' + bno,
				function(data) {
					console.log(data);
					
					if(data.filenum != 0){
					
		
	                str += '<div class="carousel-inner" role="listbox">';
	                str += `<div class="item active">
	                    <img src="<c:url value='/loadimg/display/` + data.key + `/1'/>" alt="????????????1">
	                	</div>`;
	               	if(data.filecnt === 2) {
	               		str += `<div class="item">
	                        <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>" alt="????????????2">
	                    	</div>`;
	               	} else if(data.filecnt === 3) {
	               		str += `<div class="item">
	                        <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>" alt="????????????2">
	                    	</div>`;
	               		str += `<div class="item">
	                        <img src="<c:url value='/loadimg/display/` + data.key + `/3'/>" alt="????????????3">
	                    	</div>`;
	               	}
	               	
	               	str += `<a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
	                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	                <span class="sr-only">Previous</span>
	            </a>
	            <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
	                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	                <span class="sr-only">Next</span>
	            </a>`;
	            $('#myCarousel2').html(str);
	            
	            str = '';
	            
	            str += 
	            	
				`<input type="hidden" id="con-bno" name="bno" value="` + data.bno + `">

	            <div class="profile">
	                
	                
	                <img style="width:40px" src="<c:url value='/loadimg/display/` + data.filenum + `/1'/>">                   	
	                                	
	                
	            </div>
	            <div class="title">
	                <p id="con-writer">` + data.writer + `</p>
	            </div>`;
	            if(data.writer === '${login.username}') {
	            	str += `<div class="cafeowner-menu">
	                    <a id="removeModalBtn" href="` + data.bno + `"><span class="glyphicon glyphicon-remove"></span>&nbsp;Remove</a>
	                    <a id="modifyModalBtn" data-toggle="modal" href="` + data.bno + `"><span
	                            class="glyphicon glyphicon-erase"></span>&nbsp;Modify</a>
	                </div>;`
	        		    }
					//data.filenum ??? null ??? ????????????.
					} else {
						
						
						
						
   
	                    
	                    str += '<div class="carousel-inner" role="listbox">';
	                    str += `<div class="item active">
	                        <img src="<c:url value='/loadimg/display/` + data.key + `/1'/>" alt="????????????1">
	                    	</div>`;
	                   	if(data.filecnt === 2) {
	                   		str += `<div class="item">
	                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>" alt="????????????2">
	                        	</div>`;
	                   	} else if(data.filecnt === 3) {
	                   		str += `<div class="item">
	                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>" alt="????????????2">
	                        	</div>`;
	                   		str += `<div class="item">
	                            <img src="<c:url value='/loadimg/display/` + data.key + `/3'/>" alt="????????????3">
	                        	</div>`;
	                   	}
	                   	
	                   	str += `<a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
	                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	                    <span class="sr-only">Previous</span>
	                </a>
	                <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
	                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	                    <span class="sr-only">Next</span>
	                </a>`;
	                $('#myCarousel2').html(str);
	                
	                str = '';
	                
	                str += 
	                	
					`<input type="hidden" id="con-bno" name="bno" value="` + data.bno + `">

	                <div class="profile">
	                    
	                    
	                    <img src="<c:url value='/img/profile.png'/>">                   	
	                                    	
	                    
	                </div>
	                <div class="title">
	                    <p id="con-writer">` + data.writer + `</p>
	                </div>`;
	                if(data.writer === '${login.username}') {
	                	str += `<div class="cafeowner-menu">
	                        <a id="removeModalBtn" href="` + data.bno + `"><span class="glyphicon glyphicon-remove"></span>&nbsp;Remove</a>
	                        <a id="modifyModalBtn" data-toggle="modal" href="` + data.bno + `"><span
	                                class="glyphicon glyphicon-erase"></span>&nbsp;Modify</a>
	                    </div>;`
	            		    }
						
					}
	            $('#addProf').html(str);
	            
	            //$('#con-bno').val(data.bno);
	            //$('#con-writer').html(data.writer);
	            $('#like-cnt').html(data.likeCnt);
	            $('#con-content').html(data.content);
	            $('#con-regdate').html(timeStamp(data.regdate));
	            $('#con-area').html(data.area);
	            $('#con-place').html(data.place);
	            $('#con-limit').html(
	            	(data.limitation1 === 'true' ? '#No Kids' : '#Kids Free') + 
	            	(data.limitation2 === 'true' ? '#No Pets' : '#Pets Free') + 
	            	(data.limitation3 === 'true' ? '#No Study' : '#Study Free')
	            );
	            $('#modalContent').modal('show');
	                
				}
			); //end getJSON
		}	
		
		
		//????????? ????????? ?????? ?????? ?????? ????????????
		$('#modalContent').on('shown.bs.modal', function(e) {
			const bno = $('#con-bno').val();
			modalReplyList(bno);
		});
		
		function modalReplyList(bno) {
			let str = '';
			
			$.getJSON(
				'<c:url value="/promoReply/replyList/" />' + bno,
				function(list) {
					console.log(list);
					let rwriter = [];
					let rrno = [];
					for(let i=0; i<list.length; i++) {
						if(i === 0) {
							str += '<div class="reply-content blinking">';
						} else 	{
							str += '<div class="reply-content">';
						}
						///////????????????
						if(list[i].filenum !== 0){
							
	                    
							
							str += `<div class="profile">
	                            <img src="<c:url value='/loadimg/display/`+list[i].filenum+`/1'/>">
	                            <p>` + list[i].writer + `</p>
	                            
	                            <a href="`+list[i].rno+`" id="rnodelete"><span style="float:right;" class="glyphicon glyphicon-remove"></span></a>
		                        </div>
		                        <div class="content">` + 
		                        	list[i].content + `
		                        </div>
		                        <small>` + timeStamp(list[i].regdate) + `</small>
	                    		</div>`;
							} //filenum === 0??????
							
							
							else { //filenum !== 0?????? ??????????????? ??????.
								
								str += `<div class="profile">
		                            <img src="<c:url value='/img/profile.png'/>">
		                            <p>` + list[i].writer + `</p>
		                            
		                            <a href="`+list[i].rno+`" id="rnodelete"><span style="float:right;" class="glyphicon glyphicon-remove"></span></a>
			                        </div>
			                        <div class="content">` + 
			                        	list[i].content + `
			                        </div>
			                        <small>` + timeStamp(list[i].regdate) + `</small>
		                    		</div>`;
								
							}
						rwriter.push(list[i].writer);
						rrno.push(list[i].rno);
						}
					$('#replyContentDiv').html(str);
					let loginuser = '${login.userid}';
					let count = 0;
					for(let writer of rwriter){	
						if(writer !== loginuser){
							$('a[href="' + rrno[count] + '"]').css('display','none');
						}
						count = count + 1;
					}
				}
			); //end getJSON	
		} //end ?????? ?????? ????????????
		
		//?????????????????? ????????? ????????? ?????? ?????? ??????
		$('#replyRegBtn').click(function() {
			const content = $('#modal-reply-content').val();
			const writer = '${login.userid}';
			const bno = $('#con-bno').val();
			console.log(bno + writer + content);
			
			if(writer === '') {
				alert('????????? ??? ?????? ????????? ???????????????.');
				return;
			} else if(content.trim() === '') {
				alert('?????? ????????? ????????? ????????? ???????????????.');
				return;
			}
			
			$.ajax({
				type: 'post',
				url: '<c:url value="/promoReply/regist" />',
				contentType: 'application/json',
				data: JSON.stringify({
					'bno' : bno,
					'writer' : writer,
					'content' : content
				}),
				success: function(result) {
					console.log('?????? ?????? ??????!');
					$('#modal-reply-content').val('');
					modalReplyList(bno);
				},
				error: function() {
					alert('?????? ?????? ??????! ??????????????? ??????.');
				}
			}); //end ajax
			
		}); // end ????????????
		
		//?????? ?????? ?????? ?????????
		$('#replyContentDiv').on('click','a',function(e){
			e.preventDefault();
			//?????? ?????? ?????? rno ?????????
			if($(this).attr('id') !== 'rnodelete'){
				return;
			}
			
			const rno = $(this).parent().children('#rnodelete')[0].getAttribute('href');
			console.log('????????? ?????? ??????: '+rno);
			const bno = $('#con-bno').val();
			console.log('????????? ??? ??????: '+bno);
			
			$.ajax({
				type : 'post',
				url : '<c:url value ="/promoReply/delete"/>',
				data : JSON.stringify({
					'rno' : rno
					
				}),
				contentType : 'application/json',
				success : function(data){
					if(data === 'success'){
						
					console.log('?????? ??????')
					modalReplyList(bno);
					}else if(data === 'fail'){
						alert('?????? ????????? ????????????.');
					}
				}
				
				
					,error : function(error){
						console.log(error);
						alert('???????????? ????????? ??????.')
					}
					
				
 				
			});//end ajax
			
		});
		
		//?????? ?????? ??????
		function timeStamp(millis) {
			
			const date = new Date(); //?????? ??????
			//?????? ????????? ???????????? ?????? - ????????? ?????????  -> ?????????
			const gap = date.getTime() - millis;
			
			let time; //????????? ??????
			if(gap < 60 * 60 * 24 * 1000) { //1??? ????????? ??????
				if(gap < 60 * 60 * 1000) { //1?????? ????????? ??????
					time = '?????? ???';
				} else { //1?????? ????????? ??????
					time = parseInt(gap / (1000 * 60 * 60)) + '?????? ???';
				}
			} else { //1??? ????????? ??????
				const today = new Date(millis);
				const year = today.getFullYear(); //???
				const month = today.getMonth() + 1; //???
				const day = today.getDate(); //???
				const hour = today.getHours(); //???
				const minute = today.getMinutes(); //???
				
				time = year + '??? ' + month + '??? ' + day + '??? ' + hour + '???' + minute + '???';
			}
			
			return time;
			
		}
		
		
	</script>
</body>
</html>
