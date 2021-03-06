<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
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

        .aside-wrapper {
            position: absolute;
            min-width: 20%;
            max-width: 20%;
            margin: 0;
            left: 0px;
            background-color: #ffffff;
            top: 150px;

        }

        aside {
            min-width: 100%;
            float: left;
            position: sticky;
            top: 150px;
        }

        .promboard-filter {
            padding: 0 30px 0 30px;
        }

        .promboard-filter>li {
            border-bottom: solid 1px black;
            padding: 0.5vh 0 0.5vh 0;
        }

        .promboard-filter li span {
            font-size: 2vh;
            font-weight: 700;
        }

        .promboard-filter li ul li {
            padding: 0;
            margin: 0;
        }

        .promboard-filter input[type="checkbox"] {
            font-size: 1.5vh;
            display: none;
        }

        .promboard-filter label:hover {
            cursor: pointer;
        }



        /* snsboard */
        section {
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
            max-width: 800px;
            min-width: 800px;
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
            padding: 30px 0 15px;
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
            height: 600px;
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
            margin-top: 100px;
            font-size: 20px;
        }

        #myModal4 .modal-promimg img[src="/img/upload.png"] {
            max-width: 300px;
			min-width: 300px;
            min-height: 300px !important;
            max-height: 300px !important;
            margin: 120px 250px 100px;
        }

        #myModal4 .like-inner .hashtag p.warn {
            font-size: 10px;
            width: 100%;
            position: absolute;
            bottom: -100px;
            color: red;
        }
        

        #myCarousel2 carousel-inner img{
        	min-width: 800px;
        }
    </style>

</head>

<body>


    <%@ include file="../include/header.jsp"%>
    
    
    
    
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
                                <li><a id="con-place" href="#">#Modern / Neat</a></li>
                                <li><a id="con-limit" href="#">#No Kids</a></li>
                            </ul>
                        </div>

                        <!-- ?????? ?????? -->
                        <div id="replyContentDiv" class="reply-inner">
							
							<!-- ????????? ???????????? ???????????? ????????????. -->
							
                        </div>
                        <div class="reply-form">
                                <textarea name="content" id="modal-reply-content" placeholder="?????? ??????"></textarea>
                                <input type="button" value="??????" id="replyRegBtn"></input>
                        </div>



                    </div> <!-- modal-promcontent-->

                </div> <!-- modal-body-->

            </div> <!-- modal-content -->
        </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal2-->


    <!---------------------------------------------------------- ?????? Modal ---------------------------------------------------------->
    <div class="modal fade" id="modifyModal">
        <div class="modal-dialog" style="width: 1200px;">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <!-- Modal Content -->
            <div class="modal-content">

                <div class="modal-body clearfix">

                    <div class="modal-promimg">
                        <div id="myCarousel3" class="carousel" data-ride="carousel" data-interval="false">
                            
                            <!-- ????????? ??????~ -->

                        </div> <!-- carousel-->
                    </div> <!-- modal-promimg -->


                    <div class="modal-promcontent">
                        <div class="title-inner">

                            <!--????????????-->
                            <div class="profile">
                                <img src="<c:url value='/img/profile.png'/>">
                            </div>
                            <div class="title">
                                <p id="mod-writer">coffeelover123</p>
                            </div>
                            <div class="cafeowner-menu">
                                <a id="mod-complete" href="#"><span class="glyphicon glyphicon-ok"></span>&nbsp;Complete</a>
                            </div>
                        </div>
                        <!--???????????? 70??? ?????? ???????????? ??? ???.-->
                        <div class="content-inner">
                            <textarea name="content" id="modifymodal-content"></textarea>
                        </div>

                        <!-- ????????? ??? ???????????? ??????-->
                        <div class="like-inner">
                            <!-- ???????????? -->
                            
                                <p>Area</p>
                                <span>#</span>
                                <select name="area" id="mod-area">
                                    <option value="??????">??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Place</p>
                                <span>#</span>
                                <select name="" id="mod-place">
                                    <option value="-"> - </option>
                                    <option value="Nature / Wooden">Nature / Wooden</option>
                                    <option value="Concrete / Industrial">Concrete / Industrial</option>
                                    <option value="Modern / Neat">Modern / Neat</option>
                                    <option value="Retro / Vintage">Retro / Vintage</option>
                                    <option value="Cozy / Comfort">Cozy / Comfort</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Restrictions</p>
                                <ul>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" name="limitation1" value="No Kids">No Kids</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" name="limitation2" value="No Pets">No Pet</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" name="limitation3" value="No Study">No Study</label></li>
                                </ul>

                        </div>
                        </ul>
                    </div>


                </div> <!-- modal-promcontent-->

            </div> <!-- modal-body-->

        </div> <!-- modal-content -->
    </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal3-->


    <!---------------------------------------------------------- ?????? Modal ---------------------------------------------------------->
    <div class="modal fade" id="myModal4">
        <div class="modal-dialog" style="width: 1200px;">
            <button type="button" class="close" data-dismiss="modal" id="writing-dismiss">&times;</button>
            <!-- Modal Content -->
            <div class="modal-content">

                <div class="modal-body clearfix">
                    <div class="modal-promimg" id="writingmodal-img">
                        <div id="myCarousel4" class="carousel" data-ride="carousel" data-interval="false">

                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
                            </ol>


                            <div class="carousel-inner" role="listbox">
                                <div class="item active">


                                    <label for="file" class="fileDiv">
                                        <p>???????????? ???????????? ???????????? ??????????????????.</p>
                                        <img id="fileImg" src="<c:url value='/img/upload.png'/>" alt="upload" />
                                        <input type="file" name="file" id="file" onchange="readURL(this)"
                                            style="display: none;">
                                    </label>
                                </div>
                            </div>

                            <a class="left carousel-control" href="#myCarousel4" role="button" data-slide="prev"
                                style="display:none">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel4" role="button" data-slide="next"
                                style="display:none">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div> <!-- carousel-->
                    </div> <!-- modal-promimg -->



                    <div class="modal-promcontent">
                        <div class="title-inner">

                            <!--????????????-->
                            <div class="profile">
                                <img src="<c:url value='/img/profile.png'/>">
                            </div>
                            <div class="title">
                                <p id="writer">${login.username}</p>
                            </div>
                            <div class="cafeowner-menu">
                                <a href="#"><span class="glyphicon glyphicon-ok"></span>&nbsp;Complete</a>
                            </div>
                        </div>
                        <!--???????????? 70??? ?????? ???????????? ??? ???.-->
                        <div class="content-inner">
                            <textarea name="content" id="writingmodal-content"></textarea>
                        </div>

                        <!-- ????????? ??? ???????????? ??????-->
                        <div class="like-inner">
                            <!-- ???????????? -->
                            <ul class="hashtag clearfix">
                                <p>Area</p>
                                <span>#</span>
                                <select name="area" id="write-area">
                                    <option value="??????" selected>??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                    <option value="??????/??????">??????/??????</option>
                                    <option value="??????">??????</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Place</p>
                                <span>#</span>
                                <select name="place" id="write-place">
                                    <option value="none" selected> - </option>
                                    <option value="Nature / Wooden">Nature / Wooden</option>
                                    <option value="Concrete / Industrial">Concrete / Industrial</option>
                                    <option value="Modern / Neat">Modern / Neat</option>
                                    <option value="Retro / Vintage">Retro / Vintage</option>
                                    <option value="Cozy / Comfort">Cozy / Comfort</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Restrictions</p>
                                <ul>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" id="limit1" name="limitation1" value="No Kids">No Kids</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" id="limit2" name="limitation2" value="No Pet">No Pet</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox" id="limit3" name="limitation3" value="No Study">No Study</label></li>
                                </ul>
                                <p class="warn">?????? ?????????????????? ?????? ?????? ????????? ????????? ????????? ????????? ??? ????????????.</p>
                        </div>
                        </ul>
                    </div>


                </div> <!-- modal-promcontent-->

            </div> <!-- modal-body-->

        </div> <!-- modal-content -->
    </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal4-->




    <div class="promboard clearfix">


        <!-- ???????????? ?????? -->
        <div class="aside-wrapper">
            <aside>
                <ul class="promboard-filter">
                    <li>
                        <span>??????</span>
                        <ul id="area">
                            <li><label><input type="checkbox">??????</label></li>
                            <li><label><input type="checkbox">??????/??????</label></li>
                            <li><label><input type="checkbox">??????</label></li>
                            <li><label><input type="checkbox">??????</label></li>
                            <li><label><input type="checkbox">??????/??????</label></li>
                            <li><label><input type="checkbox">??????/??????</label></li>
                            <li><label><input type="checkbox">??????/??????</label></li>
                            <li><label><input type="checkbox">??????</label></li>
                            <li><label><input type="checkbox">??????/??????</label></li>
                            <li><label><input type="checkbox">??????</label></li>
                        </ul>
                    </li>
                    <li>
                        <span>?????????/??????</span>
                        <ul id="place">
                            <li><label><input type="checkbox">Nature / Wooden</label></li>
                            <li><label><input type="checkbox">Concrete / Industrial</label></li>
                            <li><label><input type="checkbox">Modern / Neat</label></li>
                            <li><label><input type="checkbox">Retro / Vintage</label></li>
                            <li><label><input type="checkbox">Cozy / Comfort</label></li>
                        </ul>
                    </li>
                    <li>
                        <span>??????</span>
                        <ul id="restrict">
                            <li><label><input type="checkbox">No Kids</label></li>
                            <li><label><input type="checkbox">No Pets</label></li>
                            <li><label><input type="checkbox">No Study</label></li>

                        </ul>
                    </li>
                </ul>
            </aside>
        </div>

        <!-- ??? ?????? -->
        <section>

            <div id="contentDiv">
                        
				<!-- getJSON??? ????????? ????????? ????????? -->
				                
            </div>
        </section>

    </div>


<%@include file="../include/footer.jsp"%>

    <script>
    	
    	//??? ?????? ??????
    	let str = '';
		let page = 1;
		
    	getListLike(function(data) {
			getList(data, true, page,'','','','','');
		});
    	
    	function getListLike(callbackFunc) {
			
    		const userid = '${login.userid}';
			console.log(userid);
			
			if(userid !== '') {
				$.ajax({
					type: 'post',
					url: '<c:url value="/promo/listLike" />',
					contentType: 'application/json',
					data: userid,
					success: function(data) {
						console.log(data);
						
						callbackFunc(data);
					},
					error: function() {
						alert('?????? ??????!');	
					}
				});
			} else {
				callbackFunc(null);
			}		
			
		} //end getList
		
		
		//
		
			
			
			
	
		
			//?????? ????????? ?????? ????????? area li ??????.
        		const $area = document.getElementById('area');
                const $place = document.getElementById('place');
                const $restrict = document.getElementById('restrict');


                //?????? ?????? ?????? ?????? ?????? ?????? ??? ??? ??????
                var picarea ='';
                var picmood ='';
                var limit1 ='false';
                var limit2 ='false';
                var limit3 ='false';
		
             
                	
                	//??? ???????????????!!
		const $promboardfilter = document.querySelector('.promboard-filter');
                $promboardfilter.addEventListener('click', e => {



                    console.log('????????? ??????');

                    if (e.target.matches('#area input[type="checkbox"]')) {
                        console.log('?????????????????? ?????????');

                        //????????? ??????
                        picarea = e.target.parentNode.textContent;

                        if (e.target.checked) {

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '20px';

                                //????????? false ??????.
                                // console.log($area.children[1].children[0].childNodes[0]);
                                for (let $li of $area.children) {
                                    //console.log($li);
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '20px';

                                for (let $li of $area.children) {
                                    //console.log($li);
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '20px';
                                for (let $li of $area.children) {
                                    if ($li.children[0].children[0] !== e.target) {
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }

                                }
                            }




                        } else {


                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????/??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                            if (picarea === '??????') {
                                e.target.parentNode.style.fontSize = '14px';
                                picarea = '';
                            }

                        }





                    } else if (e.target.matches('#place input[type="checkbox"]')) {
                        console.log('????????????????????? ?????????');
                        
                        picmood = e.target.parentNode.textContent;

                        if (e.target.checked) {

                            if(picmood === 'Nature / Wooden'){
                                e.target.parentNode.style.fontSize = '20px';

                                for($li of $place.children){
                                    if($li.children[0].children[0] !== e.target){
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }
                                }
                            }

                            if(picmood === 'Concrete / Industrial'){
                                e.target.parentNode.style.fontSize = '20px';

                                for($li of $place.children){
                                    if($li.children[0].children[0] !== e.target){
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }
                                }
                            }

                            if(picmood === 'Modern / Neat'){
                                e.target.parentNode.style.fontSize = '20px';

                                for($li of $place.children){
                                    if($li.children[0].children[0] !== e.target){
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }
                                }
                            }

                            if(picmood === 'Retro / Vintage'){
                                e.target.parentNode.style.fontSize = '20px';

                                for($li of $place.children){
                                    if($li.children[0].children[0] !== e.target){
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }
                                }
                            }

                            if(picmood === 'Cozy / Comfort'){
                                e.target.parentNode.style.fontSize = '20px';

                                for($li of $place.children){
                                    if($li.children[0].children[0] !== e.target){
                                        $li.children[0].children[0].checked = false;
                                        $li.children[0].style.fontSize = '14px';
                                    }
                                }
                            }




                        } else {

                            if(picmood === 'Nature / Wooden'){
                                e.target.parentNode.style.fontSize = '14px';

                                picmood = '';
                            }

                            if(picmood === 'Concrete / Industrial'){
                                e.target.parentNode.style.fontSize = '14px';
                            	picmood = '';
                            }



                            if(picmood === 'Modern / Neat'){
								e.target.parentNode.style.fontSize = '14px';
                                picmood = '';
                            }


                            if(picmood === 'Retro / Vintage'){
                                e.target.parentNode.style.fontSize = '14px';
                            	picmood = '';
                            }


                            if(picmood === 'Cozy / Comfort'){
                                e.target.parentNode.style.fontSize = '14px';
                            	picmood = '';
                            }


                        }

                    } else if (e.target.matches('#restrict input[type="checkbox"]')) {
                        if (e.target.checked) {
                            e.target.parentNode.style.fontSize = '20px';
                            var restrict = e.target.parentNode.textContent;

                            //boolean ????????? ?????? 3??? ??????. ???????????? ???????????? ????????? ????????? ??????..

                            if (restrict === 'No Kids') {
                                limit1 = 'true';
                            }

                            if (restrict === 'No Pets') {
                                limit2 = 'true';
                            }

                            if (restrict === 'No Study') {
                                limit3 = 'true';
                            }





                        } else {
                            var restrict = e.target.parentNode.textContent;
                            if (restrict === 'No Kids') {
                                limit1 = 'false';
                                e.target.parentNode.style.fontSize = '14px';
                            }
                            if (restrict === 'No Pets') {
                                limit2 = 'false';
                                e.target.parentNode.style.fontSize = '14px';
                            }
                            if (restrict === 'No Study') {
                                limit3 = 'false';
                                e.target.parentNode.style.fontSize = '14px';
                            }


                        }



                    } else {
                        //????????? getList ??????
                        return;
                    }

                    //???????????????. ???????????? , ??????, ??????
                    //limit1,limit2,limit3,picarea,plicmood
                    // getList(data,true,page,limit1,limit2,limit3,picarea,picmood);




        	console.log('???????????? ?????? ?????? in : ' + '????????????1 :'+limit1+ '????????????2 :'+ limit2+ '????????????3 :'+ limit3+ '??????: '+ picarea + 'mood :'+ picmood);

        			//???????????? ?????? ?????????, ????????????, ?????? 3??? ?????? ?????????????
        					
        					
        	 if(e.target.matches('#restrict input[type="checkbox"]') || e.target.matches('#place input[type="checkbox"]') || e.target.matches('#area input[type="checkbox"]')){
                 //e.target??? ???????????? ????????? getList??? ?????????.
                 console.log('getList?????? ??????!!!!!!!!!!!!!');
                 getListLike(function(data){
                	 
                 getList(data,true,page,limit1,limit2,limit3,picarea,picmood);
                
                 })

             }
        	 window.scrollTo(0,0);
                }); //????????? ?????? ???. 
                	
        
        	function getList(data, reset, page,limit1,limit2,limit3,area,place) {

			
        	// ??? ???????????????!

        console.log(data);
			if(reset == true) {
				console.log('????????? ?????????');
				str = '';
			}
			
		
			
			

			$.getJSON(
				'<c:url value="/promo/getList?pageNum=" />' + page +"&limitation1="+
						limit1 +"&limitation2="+limit2+"&limitation3="+limit3+
						"&area="+area+"&place="+place,
				function(list) {
					console.log(JSON.stringify(list));					
					
					if(reset != false) {
			            str += `<c:if test="${login.businessnum != null}">
			                <div class="cafeowner-menu">
			                    <a class="glyphicon glyphicon-user" href="mypost"> My Posts</a>
			                    <a class="glyphicon glyphicon-pencil" data-toggle="modal" href="#myModal4"> Write</a>
			                </div>
		                </c:if>`
					}
					
					for(let i=0; i<list.length; i++) {
						console.log('????????? ??????'+list[i]);
						//filenum === 0 ?????????
						if(list[i].filenum === 0){
							
						
						str += '<div class="content-wrapper">';
	                    str += '<div class="title-inner">';
	                    str += '<div class="profile">';
	                    str += `<img src='<c:url value="/img/profile.png"/>'`+` style="width:40px; height:40px;" />`;
	                    str += '</div>';
	                    str += '<div class="title">';
	                    str += '<p>' + list[i].writer + '</p>';
	                    str += '<small>' + timeStamp(list[i].regdate) + '</small>';
	                    str += '</div>';
	                    str += '</div>';
	                    str += '<div class="content-inner">';
	                    str += '<p>' + list[i].content + '</p>';
	                    str += '</div>';
	                    str += '<div class="image-inner">';

	                    str += '<div id="carousel-carou' + i + '" style="width: 900px; height: 600px;" class="carousel" data-ride="carousel" data-interval="false">';
	                    str += '<ol class="carousel-indicators">';
	                    
	                    
	                    //indicator ???????????? ???.
	                    
	                    
	         
	                    
	                    
	                    
	                    str += '<li data-target="#carousel-carou' + i +'" data-slide-to="0" class="active"></li>';
	                    if(list[i].filecnt === 2) {
	                    	str += '<li data-target="#carousel-carou' + i +'" data-slide-to="1"></li>';
	                    } else if(list[i].filecnt === 3) {
	                    	str += '<li data-target="#carousel-carou' + i +'" data-slide-to="1"></li>';
	                    	str += ' <li data-target="#carousel-carou' + i +'" data-slide-to="2"></li>';
	                    }
	                   
	                    
	                    
	                    
	                    
	                    str += '</ol>';
	                    str += '<div class="carousel-inner" role="listbox">';
	                    str += '<div class="item active">';
	                    str += '<a data-toggle="modal" href="' + list[i].bno + '">'
	                    str += `<img src="<c:url value='/loadimg/display/` + list[i].key + `/1'/>" alt="????????????1"></a>`;
	                    str += '</div>';
						if(list[i].filecnt === 2) {
		                    str += '<div class="item">';
		                   	str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/2'/>" alt="????????????2"></a>`;
		                    str += '</div>';
	                    } else if(list[i].filecnt === 3) {
		                    str += '<div class="item">';
		                   	str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/2'/>" alt="????????????2"></a>`;
		                    str += '</div>';

	                    	str += '<div class="item">';
		                    str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/3'/>" alt="????????????3"></a>`;
		                    str += '</div>';
	                    }
	                    
	                    str += '</div>';
	                    str += '<a class="left carousel-control" href="#carousel-carou' + i + '" role="button" data-slide="prev">';
	                    str += '<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span>';
	                    str += '</a>';
	                    str += '<a class="right carousel-control" href="#carousel-carou' + i + '" role="button" data-slide="next">';
	                    str += '<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>';
	                    str += '<span class="sr-only">Next</span>';
	                    str += '</a>';
	                    str += '</div>';
	                    str += '</div>';
	                    str += `<div class="like-inner">
	                        <!--?????????-->
	                        <img src="<c:url value='/img/like2.png'/>"> <span>` + list[i].likeCnt + `</span>
	                        <!-- ???????????? -->
	                        <ul class="hashtag main clearfix">
	                            <li><a href="#">#` + list[i].area  + `</a></li>
	                            <li><a href="#">#` + list[i].place + `</a></li>
	                            <li><a href="#">` + (list[i].limitation1 === 'true' ? '#No Kids ' : '#Kids Free ') + (list[i].limitation2 === 'true' ? '#No Pets ' : '#Pets Free ') + (list[i].limitation3 === 'true' ? '#No Study' : '#Study Free') +
	                            `</a></li>
	                        </ul>
	                    </div>
	                    
	                    
	                    
	                    
	                    <div class="link-inner">
	                        <a id="likeBtn" href="` + list[i].bno + `">`;
	                        
	                        if(data !== null) {
		                        if(data.includes(list[i].bno)) {
		                        	str += `<img src="<c:url value='/img/like2.png' />" alt="like2">&nbsp;?????????</a>`;
		                        } else {
		                        	str += `<img src="<c:url value='/img/like1.png' />" alt="like1">&nbsp;?????????</a>`;
		                        }
	                        } else {
	                        	str += `<img src="<c:url value='/img/like1.png'/>" alt="like1">&nbsp;?????????</a>`;
	                        }
	                        
	                    str += ` 
	                        <a id="regist" href="` + list[i].bno +`"><i class="glyphicon glyphicon-comment"></i>????????????</a>
	                    </div>
	                </div>`;
	                
					} //filenum 0 ???.
					
					else{ //filenum !== 0
						
						str += '<div class="content-wrapper">';
	                    str += '<div class="title-inner">';
	                    str += '<div class="profile">';
	                    str += `<img style="width:40px" src='<c:url value="/loadimg/display/`+list[i].filenum+`/1"/>' />`;
	                    str += '</div>';
	                    str += '<div class="title">';
	                    str += '<p>' + list[i].writer + '</p>';
	                    str += '<small>' + timeStamp(list[i].regdate) + '</small>';
	                    str += '</div>';
	                    str += '</div>';
	                    str += '<div class="content-inner">';
	                    str += '<p>' + list[i].content + '</p>';
	                    str += '</div>';
	                    str += '<div class="image-inner">';

	                   
	                    
	                    str += '<div id="carousel-carou' + i + '" style="width: 900px; height: 600px;" class="carousel" data-ride="carousel" data-interval="false">';
	                  
	                    
	                    // ???????????? ????????????.
	                    
	                    
	                    str += '<ol class="carousel-indicators">';
	                    str += '<li data-target="#carousel-carou' + i +'" data-slide-to="0" class="active"></li>';
	                    if(list[i].filecnt === 2) {
	                    	str += '<li data-target="#carousel-carou' + i +'" data-slide-to="1"></li>';
	                    } else if(list[i].filecnt === 3) {
	                    	str += '<li data-target="#carousel-carou' + i +'" data-slide-to="1"></li>';
	                    	str += ' <li data-target="#carousel-carou' + i +'" data-slide-to="2"></li>';
	                    }
	                    str += '</ol>';
	                   
	                    
	                    
	                    // 
	                    
	                   
	                   str += '<div class="carousel-inner" role="listbox">';
	                    str += '<div class="item active">';
	                    str += '<a data-toggle="modal" href="' + list[i].bno + '">'
	                    str += `<img src="<c:url value='/loadimg/display/` + list[i].key + `/1'/>" alt="????????????1"></a>`;
	                    str += '</div>';
						if(list[i].filecnt === 2) {
		                    str += '<div class="item">';
		                   	str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/2'/>" alt="????????????2"></a>`;
		                    str += '</div>';
	                    } else if(list[i].filecnt === 3) {
		                    str += '<div class="item">';
		                   	str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/2'/>" alt="????????????2"></a>`;
		                    str += '</div>';

	                    	str += '<div class="item">';
		                    str += `<a data-toggle="modal" href="` + list[i].bno + `"><img src="<c:url value='/loadimg/display/` + list[i].key + `/3'/>" alt="????????????3"></a>`;
		                    str += '</div>';
	                    }
	                    
	                    str += '</div>';
	                    str += '<a class="left carousel-control" href="#carousel-carou' + i + '" role="button" data-slide="prev">';
	                    str += '<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span>';
	                    str += '</a>';
	                    str += '<a class="right carousel-control" href="#carousel-carou' + i + '" role="button" data-slide="next">';
	                    str += '<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>';
	                    str += '<span class="sr-only">Next</span>';
	                    str += '</a>';
	                    str += '</div>';
	                    str += '</div>';
	                    str += `<div class="like-inner">
	                        <!--?????????-->
	                        <img src="<c:url value='/img/like2.png'/>"> <span>` + list[i].likeCnt + `</span>
	                        <!-- ???????????? -->
	                        <ul class="hashtag main clearfix">
	                            <li><a href="#">#` + list[i].area  + `</a></li>
	                            <li><a href="#">#` + list[i].place + `</a></li>
	                            <li><a href="#">` + (list[i].limitation1 === 'true' ? '#No Kids ' : '#Kids Free ') + (list[i].limitation2 === 'true' ? '#No Pets ' : '#Pets Free ') + (list[i].limitation3 === 'true' ? '#No Study' : '#Study Free') +
	                            `</a></li>
	                        </ul>
	                    </div>
	                    <div class="link-inner">
	                    
	                        <a id="likeBtn" href="` + list[i].bno + `">`;
	                        
						
                        if(data !== null) {
	                        if(data.includes(list[i].bno)) {
	                        	str += `<img src="<c:url value='/img/like2.png' />" alt="like2">&nbsp;?????????</a>`;
	                        } else {
	                        	str += `<img src="<c:url value='/img/like1.png' />" alt="like1">&nbsp;?????????</a>`;
	                        }
                        } else {
                        	str += `<img src="<c:url value='/img/like1.png' />" alt="like1">&nbsp;?????????</a>`;
                        }
                    
	                    str += ` 
	                        <a id="regist" href="` + list[i].bno +`"><i class="glyphicon glyphicon-comment"></i>????????????</a>
	                    </div>
	                </div>`;
	                
						
						
					}
					
				}
	                $('#contentDiv').html(str);
				}
			); //end getJSON
			
			return;
			
		};
		
		
		//???????????? ??????
		$('#contentDiv').on('click', '.carousel-inner a', function(e) {
			e.preventDefault();
			const bno = $(this).attr('href');
			console.log('???????????? ?????????: ' + bno);
			modalContent(bno);
		}); //end ?????? ????????????.
		
		
		
		
		
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
		//?????? ??????
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
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
                        <img src="<c:url value='/loadimg/display/` + data.key + `/1'/>"  alt="????????????1">
                    	</div>`;
                   	if(data.filecnt === 2) {
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>"  alt="????????????2">
                        	</div>`;
                   	} else if(data.filecnt === 3) {
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>"  alt="????????????2">
                        	</div>`;
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/3'/>"  alt="????????????3">
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
                    </div>`
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
	                    </div>`
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
		
		
		//?????? ?????? ????????? 
		
		
		
		
		//??????????????? ????????? ?????? ????????? ??????.
		$('#addProf').on('click', 'a', function(e) {
			e.preventDefault();
			if($(this).attr('id') === 'removeModalBtn') {
				return;
			}
			const bno = $(this).attr('href');
			console.log(bno);
			
			let str = '';
			
			$.getJSON(
				'<c:url value="/promo/getContent/" />' + bno,
				function(data) {
					console.log(data);
					
					str += '<ol class="carousel-indicators">';
                    str += '<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>';
                    if(data.filecnt === 2) {
                    	str += '<li data-target="#myCarousel2" data-slide-to="1"></li>';
                    } else if(data.filecnt === 3) {
                    	str += '<li data-target="#myCarousel2" data-slide-to="1"></li>';
                    	str += ' <li data-target="#myCarousel2" data-slide-to="2"></li>';
                    }
                    str += '</ol>';     
                    
                    str += '<div class="carousel-inner" role="listbox">';
                    str += `<div class="item active">
                        <img src="<c:url value='/loadimg/display/` + data.key + `/1'/>" alt="????????????1">
                    	</div>`;
                   	if(data.filecnt === 2) {
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>"   alt="????????????2">
                        	</div>`;
                   	} else if(data.filecnt === 3) {
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/2'/>"   alt="????????????2">
                        	</div>`;
                   		str += `<div class="item">
                            <img src="<c:url value='/loadimg/display/` + data.key + `/3'/>"    alt="????????????3">
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
	                $('#myCarousel3').html(str);
	                
					
					$('#mod-writer').html(data.writer);
					$('#mod-complete').attr('href', data.bno);
					$('#modifymodal-content').html(data.content);
					$('#mod-area').val(data.area).prop('selected', true);
					$('#mod-place').val(data.place).prop('selected', true);
					data.limitation1 === 'true' ? $('input[name=limitation1]').prop('checked', true) : $('input[name=limitation1]').prop('checked', false);
					data.limitation2 === 'true' ? $('input[name=limitation2]').prop('checked', true) : $('input[name=limitation2]').prop('checked', false);
					data.limitation3 === 'true' ? $('input[name=limitation3]').prop('checked', true) : $('input[name=limitation3]').prop('checked', false);
					
					$('#modifyModal').modal('show');
					
				}
			
			);
			
		}); //end ?????? ????????????.
		
		//?????? ??????
		$('#mod-complete').click(function(e) {
			const bno = $(this).attr('href');
			console.log(bno);
			const writer = $('#mod-writer').text();
			console.log(writer);
			const content = $('#modifymodal-content').val();
			console.log(content);
			const area = $('#mod-area option:selected').val();
			console.log(area);
			const place = $('#mod-place option:selected').val();
			console.log(place);
			const limit1 = $('input[name=limitation1]').is(':checked');
			console.log(limit1);
			const limit2 = $('input[name=limitation2]').is(':checked');
			console.log(limit2);
			const limit3 = $('input[name=limitation3]').is(':checked');
			console.log(limit3);
			
			$.ajax({
				type: 'post',
				url: '<c:url value="/promo/update" />',
				contentType: 'application/json',
				data: JSON.stringify({
					'bno' : bno, 'content' : content,
					'area' : area, 'place' : place, 'limitation1' : limit1,
					'limitation2' : limit2, 'limitation3' : limit3
				}),
				success: function(result) {
					console.log('?????? ??????!');
					modalContent(bno);
				},
				error: function() {
					alert('?????? ?????? ??????! ??????????????? ??????.');
				}
			});
		});
		
		//????????????~
		$('#addProf').on('click', 'a', function(e) {
			e.preventDefault();
			
			if($(this).attr('id') === 'modifyModalBtn') {
				return;
			}
			console.log('?????? ?????? ??????????');
			
			if(!confirm('?????? ?????????????????????????')) return;
			
			const bno = $(this).attr('href');
			console.log(bno);
			
			$.ajax({
				type: 'post',
				url: '<c:url value="/promo/delete" />',
				data: bno,
				contentType: 'application/json',
				success: function(result) {
					location.href='<c:url value="/promo/list" />';
				},
				error: function() {
					alert('?????? ??????! ??????????????? ??????!');
				}
			});
			

		});
		
		
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
    
    
    
        
         // ???????????? if( || || ????????? input ?????? ?????? ??????.)
            //console.log(area);
            //console.log(limit1,limit2,limit3);

            
        //???????????? ????????? ??????.. ->
        
                                                                                                                                                                            


        let filecount = 0;

        function readURL(input) {
            if (input.files && input.files[0]) {

            	console.log(input);
            	console.log(input.files);
            	
                var reader = new FileReader(); //?????????????????? ?????? ????????? ?????? ?????????????????? ??????
                //readAsDataURL ???????????? ???????????? ?????? Blob ?????? File?????? ?????? ?????? ?????? (MDN??????)
                reader.readAsDataURL(input.files[0]);

                //?????????????????? p????????? ??????????????????.
                input.parentNode.children[0].style.display = "none";
                // fileDiv?????? img?????? ????????? ????????????
                let fileImg = "#" + input.parentNode.children[1].getAttribute('id');
                console.log(fileImg);
                console.log(reader);

                // FileReader ????????? ???????????? ????????? ?????????,
                reader.onload = function (event) { //?????? ????????? ??????????????? ?????? ????????? ??? ???????????? ????????????
                    // ????????? ????????? img?????? ???????????? ?????? img src ?????????.
                    console.log(event.target);
                    $(fileImg).attr("src", event.target.result);
                	console.log($(fileImg).attr('src'));
                	$(fileImg).css('min-width','800px');
                    filecount++;
                    makeImgWindow(filecount);
                }


            }
        }

        ///// ?????????????????? ????????? ??????
        function makeImgWindow(filecount) {
        	console.log('????????? ?????? ?????? ??????.');
            if (filecount >= 3) return;

            $("a[data-slide='prev']").css('display', 'inline');
            $("a[data-slide='next']").css('display', 'inline');

            const $indicatorli = document.createElement('li');
            $indicatorli.setAttribute('data-target', "#myCarousel4");
            $indicatorli.setAttribute('data-silde-to', filecount);
            document.querySelector('#myCarousel4>.carousel-indicators').appendChild($indicatorli);

            const $itemdiv = document.createElement('div');
            $itemdiv.classList.add('item');
            $itemdiv.innerHTML = `<label for="file` + filecount + `" class="fileDiv">
                                        <p>???????????? ???????????? ???????????? ??????????????????.</p>
                                        <img id="fileImg` + filecount + `" src="<c:url value='/img/upload.png'/>" alt="upload" />
                                        <input type="file" name="file" id="file` + filecount + `" onchange="readURL(this)"
                                        style="display: none;">
                                    </label>`;
            document.querySelector('#myCarousel4>.carousel-inner').appendChild($itemdiv)
        }



        ///////////////////// ?????? ???????????? ?????? ?????? ?????????




        const $completebtn = document.querySelectorAll('.glyphicon-ok');
        console.log($completebtn);
        // ????????? ?????? Complete?????? ????????? 
        $completebtn[0].parentNode.addEventListener('click', e => {
            e.preventDefault();
            console.log('??????');
            e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.children[0].click();
            // ???????????? ????????? ?????? ??? ?????? ????????? ????????? ????????? ????????? ????????? ??????.
        });
        // ????????? ?????? Complete?????? ?????????
        $completebtn[1].parentNode.addEventListener('click', e => {
            e.preventDefault();
            //console.log(e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.children[0]);
            //e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.children[0].click();
            // ??????????????? ????????????.
            //cleaningModalWrite();
            regist();
            //location.href='<c:url value="/promo/list" />';
        });

        const $writingDismiss = document.querySelector('#writing-dismiss');
        $writingDismiss.addEventListener('click', e => {
            cleaningModalWrite();
        })
        
        
        //??? ????????? ???????????? ??????
        function regist() {
			//????????? ????????????
        	const user_id = '${login.username}';
			console.log(user_id);
			//??? ?????? ????????????
			const content = $('#writingmodal-content').val();
			console.log('content: ' + content);

			//?????? ????????????
			let area = document.querySelector('#write-area');
			console.log(area.options[area.selectedIndex].value);
			area = area.options[area.selectedIndex].value;
			//?????? ?????? ????????????
			let place = document.querySelector('#write-place');
			console.log(place.options[place.selectedIndex].value);
			place = place.options[place.selectedIndex].value;
			//???????????? ????????????
			const limit1 = document.querySelector('#limit1').checked;
			const limit2 = document.querySelector('#limit2').checked;
			const limit3 = document.querySelector('#limit3').checked;
			console.log(limit1);
			console.log(limit2);
			console.log(limit3);
			
			//?????? ????????? ??????
			let fileList = [
				document.querySelector('#file'),
				document.querySelector('#file1'),
				document.querySelector('#file2')	
			];
 			let confirmList = [];
			for(let f of fileList) {
				if(f !== null && f.files.length !== 0) {
					confirmList.push(f);
				}
			}
			console.log(confirmList);
			
			//????????? ??????(????????? ?????? ????????? ??????.)
			if(confirmList.length === 0) {
				alert('????????? ????????? ????????? ?????? ?????? ??????????????? ?????????.');
				return;
			} else if(content === '') {
				alert('?????? ?????? ????????? ????????? ?????????.');
				return;
			} else if(place === 'none') {
				alert('????????? ????????? ????????? ?????????.');
				return;
			} else if(!confirm('?????? ????????? ??????????????? ???????????????????')) {
				return;
			}
			
			
			for(let f of confirmList) {
				const file = f.value.slice(f.value.indexOf('.') + 1).toLowerCase();
				console.log(file);
				if(file !== 'jpg' && file !== 'png' && file !== 'jpeg' && file !== 'bmp') {
					alert('????????? ??????(jpg, png, jpeg, bmp)??? ????????? ???????????????.');
					return;
				} 
			}
			console.log(confirmList);
			
			//ajax ????????? ????????? ?????? formData ?????? ??????
			const formData = new FormData();
			for(let c of confirmList) {
				formData.append('file', c.files[0]);
			}
			formData.append('content', content);
			formData.append('writer', user_id);
			formData.append('area', area);
			formData.append('place', place);
			formData.append('limitation1', limit1);
			formData.append('limitation2', limit2);
			formData.append('limitation3', limit3);
			
			
			$.ajax({
				url: '<c:url value="/promo/upload" />',
				type: 'post',
				data: formData,
				contentType: false,
				processData: false,
				success: function(result) {
					console.log(result);
					location.href='<c:url value="/promo/list" />';
				},
				error: function(request, status, error) {
					console.log('code: ' + request + '\n' + 'message: ' + request.responseText + '\n' + 'error: ' + error);
				}
			});
		} //end regist



        // ????????? ?????? ???????????? ??? ???????????? ?????????.
        function cleaningModalWrite() {
            console.log('???????????? ?????? ??????');
            document.getElementById('writingmodal-img').innerHTML = `<div id="myCarousel4" class="carousel" data-ride="carousel" data-interval="false">
                            
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
                            </ol>

                            
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    

                                    <label for="file" class="fileDiv">
                                        <p>???????????? ???????????? ???????????? ??????????????????.</p>
                                        <img id="fileImg" src="<c:url value='/img/upload.png'/>" alt="upload" />
                                        <input type="file" name="file" id="file" onchange="readURL(this)"
                                            style="display: none;">
                                    </label>
                                </div>        
                            </div>

                            <a class="left carousel-control" href="#myCarousel4" role="button" data-slide="prev"
                                style="display:none">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel4" role="button" data-slide="next"
                                style="display:none">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div>`;
            document.querySelector('#writingmodal-content').value = '';
            document.querySelectorAll('input[type=checkbox]').checked = false;
            document.querySelector('#write-area').options.selectedIndex = 0;
            filecount = 0;
        }

        const $restrictselect = [...document.querySelectorAll('select[onchange="disableothers(this)"]')];
        //////// ??? ???????????? ???????????? ????????? ?????? ????????? ??????.
        function disableothers($changedselect) {

            $changedselect.setAttribute('disabled', true);

            for (let $select of $restrictselect) {
                // ????????? select???????????? ?????? ????????? option??? ?????? ????????? disabled
                if ($select.getAttribute('id') !== $changedselect.getAttribute('id')) {
                    for (let $option of $select.children) {
                        if ($option.value === $changedselect.value)
                            $option.setAttribute('disabled', true);
                    }
                }
            }
        }
        ///////// ???????????? ?????? ???????????? disabled ?????? ????????????
        function refreshRestrict() {
            event.preventDefault();
            for (let $select of $restrictselect) {
                $select.removeAttribute('disabled');
                for (let $option of $select.children) {
                    $option.removeAttribute('disabled');
                }
            }
        }
        
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
      
      






        ///////////////////////// ??????????????? ??? ?????? aside??? ??????????????? ??????
        /*
       $(window).scroll(function(){
      	// ?????????(device)??? ????????? ?????? ????????? ?????? ?????? ?????? ???, ??????(?????????) ????????? ???????????? ???????????? ????????? ??????
      	// ?????? ?????? - ??????????????? ?????? = ????????? ?????? ??? ????????? ????????? -> ????????? ????????? ????????????.
      	if(Math.round($(window).scrollTop()) === $(document).height()-$(window).height()){
      		//console.log(++page);
      		//$('#contentDiv').append("<h1> Page: " + page + "</h1>");
              //$('#contentDiv').append("<br>??????<br>?????????<br>??????<br>????????????~~~<br><br>??????<br>?????????<br>??????<br>????????????~~~<br><br>??????<br>?????????<br>??????<br>????????????~~~<br><br>??????<br>?????????<br>??????<br>????????????~~~<br>");
              
              // ?????? ??????????????? sql?????? ????????? ????????? ???????????? ????????? ??? ????????? ?????????.
              // ???????????? ???????????? ????????? ????????? ???, ???????????? ????????? ?????? ?????? ?????????
              // getList(false)??? ????????? ???????????? ?????? ??????????????? ?????????. -> ?????? getList(++page, false);
              // ???????????? ????????? ????????? ?????? ????????? ?????????????????? ????????? ??????????????? ?????????.             
      	}
      	 
      	 
       });
       */
        $(window).scroll(function () {
            let minheightval = $(document).height() - vh(70);
            $('.aside-wrapper').css('min-height', minheightval)
        });

        function vh(v) {
            var h = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
            return (v * h) / 100;
        }

        function vw(v) {
            var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
            return (v * w) / 100;
        }
        
        
        
      	//?????? ?????? ????????? ????????? ???????????? ????????????.
        $('#contentDiv').on('click','a',function(e){
        	e.preventDefault();
        	console.log($(this).attr('href'));
        		const bno = $(this).attr('href');
        		//??????????????? ?????? ????????? ????????? ???????????? ?????????.
        	if($(this).attr('id') === 'regist' || $(this).attr('id') === 'delete'){
        		
    			//??? ??????.
    			modalContent(bno);
        	}
        		
        	// My post??? ????????? href ??? ???????????????.
        	if($(this).attr('href') === 'mypost'){
        		location.href = "<c:url value ='/user/promoBoardChk'/>";
        	}
        });
      	
      	
      
        
        //????????? ?????? ????????? ??????.
        $('#contentDiv').on('click', 'a', function(e) {
        	e.preventDefault();
        	console.log($(this).attr('id'));
        	if(e.target.getAttribute('alt') === 'like1' && e.target.getAttribute('alt') === 'like2'){
				return;							
			}
        	if(!($(this).attr('id') === 'likeBtn' || e.target.getAttribute('alt')=== 'like2') || e.target.getAttribute('alt')=== 'like1') {
        		console.log('????????? ????????? ??????!');
        		return;
        	}
        	
        	
        	
        
        
        	
        	
			console.log('????????? ?????? ??????!' + $(this));
			console.log($(this).attr('src')!='');
			const $btn = e.target;
			const bno = $(this).attr('href');
			const id = '${login.userid}';
			if(id === '') {
				alert('????????? ?????????????');
				return;
			}
			
			$.ajax({
				type: 'post',
				url: '<c:url value="/promo/like" />',
				contentType: 'application/json',
				data: JSON.stringify({
					'bno' : bno,
					'userid' : id
				}),
				success: function(result) {
					console.log(result);
					if(result === 'like') {
						
						
						
						e.target.firstChild.setAttribute('src', '/img/like2.png');
						const $likeCnt = e.target.parentNode.previousElementSibling.children[1];
						console.log($likeCnt);
						$likeCnt.textContent = Number($likeCnt.textContent) + 1;
						
						
					} else {
						
						
							e.target.firstChild.setAttribute('src', '/img/like1.png');
							const $likeCnt = e.target.parentNode.previousElementSibling.children[1];
							console.log($likeCnt);
							$likeCnt.textContent = Number($likeCnt.textContent) - 1;

					}
				},
				error: function() {
					alert('????????? ?????? ??????!');
				}
			});
		}); //end ????????? ??????.
        
		
		
		
		//?????? ?????????
		$(window).scroll(function() {
			//?????????(device)??? ????????? ?????? ????????? ?????? ?????? ?????? ???, ??????(?????????) ????????? ???????????? ????????? ????????? ??????.
			//???????????? - ???????????? ??? ?????? = ????????? ?????? ??? ????????? ????????? -> ????????? ????????? ????????????
			if(Math.round($(window).scrollTop()) === $(document).height() - $(window).height() ) {
							
				//?????? ???????????? ???????????? ????????? ????????????
				//????????? ??? ?????? ?????????, getList(false) ????????? ???????????? ?????? ???????????? ?????????.
				//???????????? ??? ?????? ?????? ????????? ????????? ?????????????????? ????????? ?????? ????????? ?????????.
				//getList(++page, false);
				++page;
				console.log(page);
				getListLike(function(data) {
					getList(data, false, page,'','','','','');
				});
			
			}
		});
	
        
        /*
        //???????????? ?????? ????????? ????????? ????????? ???????????? ??????. (???????????? ????????? ????????? ????????? ??????????????? ????????? ?????????.)
        $('#myModal4').on('show.bs.modal', function(e) {
			console.log('????????? ?????? ??? ????????? ??????!');
			console.log('target: ' + e.target);
			const busiNum = '${login.businessnum}';
        	console.log(busiNum);
        	if(busiNum === '') {
				e.preventDefault();
        		console.log('????????? ?????? ?????? ??????!');
        		alert('????????? ????????? ????????? ????????? ??????????????????. ????????? ????????????.');
        		//$('#myModal4').modal('hide');
        	}
		});
        */
        
        
        
        
        
    </script>

</body>

</html>