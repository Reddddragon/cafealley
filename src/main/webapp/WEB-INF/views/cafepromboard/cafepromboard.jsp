<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">


    <style>
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
            /*부모기준으로 위치지정 릴레이티브*/
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
            position: absolute;
            top: 10px;
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

        /* 캐러셀 이동버튼 뒤에 그림자 없애기 */
        /* .carousel-control.left,
        .carousel-control.right {
            background-image: none;
        } */

        /* 모달 닫는 버튼 */
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
            padding: 25px 0 15px;
            margin-top: 15px;
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

        /* sns파일 업로드시 미리보기  */

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

        #myModal4 .modal-promimg img[src="../img/upload.png"] {
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
    </style>



    <script src="https://kit.fontawesome.com/6bdfd4f896.js" crossorigin="anonymous"></script>

</head>

<body>
    <header>

        <div class="header">
            <nav class="header-container">
                <div class="header-logo">
                    <a href="#"><img width="150px" src="../img/logo.png" alt="logo"></a>
                </div>


                <ul class="header-nav header-nav-upper clearfix">
                    <li><a data-toggle="modal" href="#myModal">로그인</a></li>
                    <li><a href="#">#님<span class="caret"></span></a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>

                <ul class="header-nav header-nav-dropdown clearfix">
                    <li><a href="#">사이트 소개</a></li>
                    <li><a href="#">Alley 위치</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">Coffee Talk</a></li>
                    <li><a href="#">카페 게시판</a></li>
                    <li class="dropdown">
                        <a href="#">이벤트</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">이벤트 요약</a></li>
                            <li><a href="#">이벤트 공지</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Owner Mall </span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">원두</a></li>
                            <li><a href="#">티 / 액상차</a></li>
                            <li><a href="#">유제품</a></li>
                            <li><a href="#">시럽 / 소스</a></li>
                            <li><a href="#">파우더 / 농축액</a></li>
                            <li><a href="#">커피용품, 머신</a></li>
                        </ul>
                    </li>
                </ul>

            </nav>

        </div>

    </header>

    <!----------------------------------------------------------로그인  Modal ---------------------------------------------------------->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">

            <!-- Modal Content -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">로그인</h4>
                </div>
                <div class="modal-body">
                    <form action="#">
                        <h5>아이디</h5>
                        <input type="text" class="form-control" placeholder="Text input">
                        <h5>비밀번호</h5>
                        <input type="password" class="form-control" placeholder="password input">
                        <label>
                            <input type="checkbox">
                            <small>로그인 유지</small>
                        </label>
                        <div class="login-center">
                            <button type="button" class="btn btn-primary btn-block">Log In</button>
                            <div class="login-center2 clearfix">
                                <div style="float:left;">
                                    아직 회원이 아니신가요?
                                </div>
                                <div style="float: right;">
                                    <a href="#">일반회원 가입</a><br>
                                    <a href="#">카페회원 가입</a>
                                </div>
                            </div>

                            <div class="login-p-center">또는</div>
                            <button type="button" class="btn btn-block"
                                style="background-color: #04cf5c; color: white;"><strong>N</strong></strong></button>
                        </div>
                    </form>
                    <br>
                    <div class="login-p-center">네이버 가입은 일반 회원만 가능합니다.</div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>

    <!---------------------------------------------------------- 글 상세  Modal ---------------------------------------------------------->
    <div class="modal fade" id="myModal2">
        <div class="modal-dialog" style="width: 1200px;">

            <button type="button" class="close" data-dismiss="modal">&times;</button>

            <!-- Modal Content -->
            <div class="modal-content">

                <div class="modal-body clearfix">

                    <div class="modal-promimg">
                        <div id="myCarousel2" class="carousel" data-ride="carousel" data-interval="false">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel2" data-slide-to="1"></li>
                                <li data-target="#myCarousel2" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <!-- 첫번째 순번이라 active -->
                                    <img src="../img/carousel1.jpg" alt="슬라이드1">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel2.jpg" alt="슬라이드2">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel3.jpg" alt="슬라이드3">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel4.jpg" alt="슬라이드4">
                                </div>
                            </div>

                            <!-- Controls (좌, 우 화살표 없애고싶으면 지워도 됩니다.)-->
                            <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div> <!-- carousel-->
                    </div> <!-- modal-promimg -->



                    <div class="modal-promcontent">
                        <div class="title-inner">

                            <!--제목영역-->
                            <div class="profile">
                                <img src="../img/profile.png">
                            </div>
                            <div class="title">
                                <p>coffeelover123</p>
                            </div>
                            <div class="cafeowner-menu">
                                <a href="#"><span class="glyphicon glyphicon-remove"></span>&nbsp;Remove</a>
                                <a data-toggle="modal" href="#myModal3"><span
                                        class="glyphicon glyphicon-erase"></span>&nbsp;Modify</a>
                            </div>
                        </div>
                        <!--내용영역 70자 내로 작성하게 할 것.-->
                        <div class="content-inner">
                            <p>영일이삼사오육칠팔구영일이삼사오육칠팔구영일이삼사오육칠팔구영일이삼사오육칠팔구영일이삼사오육칠팔구영일이삼사오육칠팔구영일이삼사오육칠팔구</p>
                            <small>21시간</small>
                        </div>

                        <!-- 좋아요 및 해쉬태그 영역-->
                        <div class="like-inner">
                            <!--좋아요-->
                            <img src="../img/like2.png"> <span>522</span>
                            <!-- 해쉬태그 -->
                            <ul class="hashtag clearfix">
                                <li><a href="#">#서울</a></li>
                                <li><a href="#">#Morden / Neat</a></li>
                                <li><a href="#">#No Kids</a></li>
                            </ul>
                        </div>

                        <!-- 댓글 영역 -->
                        <div class="reply-inner">
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>
                            <div class="reply-content">
                                <div class="profile">
                                    <img src="../img/profile.png">
                                    <p>coffeehater321</p>
                                </div>
                                <div class="content">
                                    보니깐 배고프다
                                </div>
                                <small>20시간</small>
                            </div>



                        </div>
                        <div class="reply-form">
                            <form action="#">
                                <textarea name="" id="" placeholder="댓글 입력"></textarea>
                                <input type="button" value="게시"></input>
                            </form>
                        </div>



                    </div> <!-- modal-promcontent-->

                </div> <!-- modal-body-->

            </div> <!-- modal-content -->
        </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal2-->


    <!---------------------------------------------------------- 수정 Modal ---------------------------------------------------------->
    <div class="modal fade" id="myModal3">
        <div class="modal-dialog" style="width: 1200px;">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <!-- Modal Content -->
            <div class="modal-content">

                <div class="modal-body clearfix">

                    <div class="modal-promimg">
                        <div id="myCarousel3" class="carousel" data-ride="carousel" data-interval="false">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel3" data-slide-to="1"></li>
                                <li data-target="#myCarousel3" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <!-- 첫번째 순번이라 active -->
                                    <img src="../img/carousel1.jpg" alt="슬라이드1">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel2.jpg" alt="슬라이드2">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel3.jpg" alt="슬라이드3">
                                </div>
                                <div class="item">
                                    <img src="../img/carousel4.jpg" alt="슬라이드4">
                                </div>
                            </div>

                            <!-- Controls (좌, 우 화살표 없애고싶으면 지워도 됩니다.)-->
                            <a class="left carousel-control" href="#myCarousel3" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel3" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div> <!-- carousel-->
                    </div> <!-- modal-promimg -->



                    <div class="modal-promcontent">
                        <div class="title-inner">

                            <!--제목영역-->
                            <div class="profile">
                                <img src="../img/profile.png">
                            </div>
                            <div class="title">
                                <p>coffeelover123</p>
                            </div>
                            <div class="cafeowner-menu">
                                <a href="#"><span class="glyphicon glyphicon-ok"></span>&nbsp;Complete</a>
                            </div>
                        </div>
                        <!--내용영역 70자 내로 작성하게 할 것.-->
                        <div class="content-inner">
                            <textarea name="" id="writingmodal-content"></textarea>
                        </div>

                        <!-- 좋아요 및 해쉬태그 영역-->
                        <div class="like-inner">
                            <!-- 해쉬태그 -->
                            <ul class="hashtag clearfix">
                                <p>Area</p>
                                <span>#</span>
                                <select name="" id="">
                                    <option value="" selected>서울</option>
                                    <option value="">경기/인천</option>
                                    <option value="">강원</option>
                                    <option value="">충북</option>
                                    <option value="">충남/대전</option>
                                    <option value="">경북/대구</option>
                                    <option value="">경남/부산</option>
                                    <option value="">전북</option>
                                    <option value="">전남/광주</option>
                                    <option value="">제주</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Place</p>
                                <span>#</span>
                                <select name="" id="">
                                    <option value="" selected> - </option>
                                    <option value="">Nature / Wooden</option>
                                    <option value="">Concrete / Industrial</option>
                                    <option value="">Morden / Neat</option>
                                    <option value="">Retro / Vintage</option>
                                    <option value="">Cozy / Comfort</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Restrictions</p>
                                <ul>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Kids</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Pet</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Study</label></li>
                                </ul>

                        </div>
                        </ul>
                    </div>


                </div> <!-- modal-promcontent-->

            </div> <!-- modal-body-->

        </div> <!-- modal-content -->
    </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal3-->


    <!---------------------------------------------------------- 작성 Modal ---------------------------------------------------------->
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
                                        <p>클릭해서 업로드할 이미지를 선택해주세요.</p>
                                        <img id="fileImg" src="../img/upload.png" alt="upload" />
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

                            <!--제목영역-->
                            <div class="profile">
                                <img src="../img/profile.png">
                            </div>
                            <div class="title">
                                <p>coffeelover123</p>
                            </div>
                            <div class="cafeowner-menu">
                                <a href="#"><span class="glyphicon glyphicon-ok"></span>&nbsp;Complete</a>
                            </div>
                        </div>
                        <!--내용영역 70자 내로 작성하게 할 것.-->
                        <div class="content-inner">
                            <textarea name="" id="writingmodal-content"></textarea>
                        </div>

                        <!-- 좋아요 및 해쉬태그 영역-->
                        <div class="like-inner">
                            <!-- 해쉬태그 -->
                            <ul class="hashtag clearfix">
                                <p>Area</p>
                                <span>#</span>
                                <select name="" id="">
                                    <option value="" selected>서울</option>
                                    <option value="">경기/인천</option>
                                    <option value="">강원</option>
                                    <option value="">충북</option>
                                    <option value="">충남/대전</option>
                                    <option value="">경북/대구</option>
                                    <option value="">경남/부산</option>
                                    <option value="">전북</option>
                                    <option value="">전남/광주</option>
                                    <option value="">제주</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Place</p>
                                <span>#</span>
                                <select name="" id="">
                                    <option value="" selected> - </option>
                                    <option value="">Nature / Wooden</option>
                                    <option value="">Concrete / Industrial</option>
                                    <option value="">Morden / Neat</option>
                                    <option value="">Retro / Vintage</option>
                                    <option value="">Cozy / Comfort</option>
                                </select>


                                <div style="margin-top: 25px;"></div>
                                <p>Restrictions</p>
                                <ul>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Kids</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Pet</label></li>
                                    <li><span>#&nbsp;</span><label><input type="checkbox">No Study</label></li>
                                </ul>
                                <p class="warn">카페 사장님께서는 연관 없는 내용을 작성시 제재를 받으실 수 있습니다.</p>
                        </div>
                        </ul>
                    </div>


                </div> <!-- modal-promcontent-->

            </div> <!-- modal-body-->

        </div> <!-- modal-content -->
    </div> <!-- modal-dialog -->
    </div> <!-- modal-fade myModal4-->




    <div class="promboard clearfix">


        <!-- 어사이드 영역 -->
        <div class="aside-wrapper">
            <aside>
                <ul class="promboard-filter">
                    <li>
                        <span>지역</span>
                        <ul id="area">
                            <li><label><input type="checkbox">서울</label></li>
                            <li><label><input type="checkbox">경기/인천</label></li>
                            <li><label><input type="checkbox">강원</label></li>
                            <li><label><input type="checkbox">충북</label></li>
                            <li><label><input type="checkbox">충남/대전</label></li>
                            <li><label><input type="checkbox">경북/대구</label></li>
                            <li><label><input type="checkbox">경남/부산</label></li>
                            <li><label><input type="checkbox">전북</label></li>
                            <li><label><input type="checkbox">전남/광주</label></li>
                            <li><label><input type="checkbox">제주</label></li>
                        </ul>
                    </li>
                    <li>
                        <span>분위기/장소</span>
                        <ul id="place">
                            <li><label><input type="checkbox">Nature / Wooden</label></li>
                            <li><label><input type="checkbox">Concrete / Industrial</label></li>
                            <li><label><input type="checkbox">Morden / Neat</label></li>
                            <li><label><input type="checkbox">Retro / Vintage</label></li>
                            <li><label><input type="checkbox">Cozy / Comfort </label></li>
                        </ul>
                    </li>
                    <li>
                        <span>제한</span>
                        <ul id="restrict">
                            <li><label><input type="checkbox">No Kids</label></li>
                            <li><label><input type="checkbox">No Pets</label></li>
                            <li><label><input type="checkbox">No Study</label></li>

                        </ul>
                    </li>
                </ul>
            </aside>
        </div>

        <!-- 글 영역 -->
        <section>


            <div id="contentDiv">
                <div class="cafeowner-menu">
                    <a class="glyphicon glyphicon-user" href="#"> My Posts</a>
                    <a class="glyphicon glyphicon-pencil" data-toggle="modal" href="#myModal4"> Write</a>
                </div>
                <div class="content-wrapper">
                    <div class="title-inner">
                        <!--제목영역-->
                        <div class="profile">
                            <img src="../img/profile.png">
                        </div>
                        <div class="title">
                            <p>coffeelover123</p>
                            <small>21시간</small>
                        </div>
                    </div>
                    <div class="content-inner">
                        <!--내용영역-->
                        <p>카페 홍보 게시물 내용 여기 입력</p>
                    </div>
                    <div class="image-inner">
                        <!-- 이미지영역 -->


                        <!-- 캐러셀 구현 시작-->
                        <div id="myCarousel" style="width: 900px; height: 600px;" class="carousel" data-ride="carousel"
                            data-interval="false">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <!-- 첫번째 순번이라 active -->
                                    <a data-toggle="modal" href="#myModal2"><img src="../img/carousel1.jpg"
                                            alt="슬라이드1"></a>
                                </div>
                                <div class="item">
                                    <a data-toggle="modal" href="#myModal2"><img src="../img/carousel2.jpg"
                                            alt="슬라이드2"></a>
                                </div>
                                <div class="item">
                                    <a data-toggle="modal" href="#myModal2"><img src="../img/carousel3.jpg"
                                            alt="슬라이드3"></a>
                                </div>
                                <div class="item">
                                    <a data-toggle="modal" href="#myModal2"><img src="../img/carousel4.jpg"
                                            alt="슬라이드4"></a>
                                </div>
                            </div>

                            <!-- Controls (좌, 우 화살표 없애고싶으면 지워도 됩니다.)-->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div> <!-- carousel-->



                    </div>
                    <div class="like-inner">
                        <!--좋아요-->
                        <img src="../img/like2.png"> <span>522</span>
                        <!-- 해쉬태그 -->
                        <ul class="hashtag clearfix">
                            <li><a href="#">#서울</a></li>
                            <li><a href="#">#Morden / Neat</a></li>
                            <li><a href="#">#No Kids</a></li>
                        </ul>
                    </div>
                    <div class="link-inner">
                        <a href="##"><img src="../img/like1.png" alt="like1">&nbsp;좋아요</a>
                        <a href="##"><i class="glyphicon glyphicon-comment"></i>댓글달기</a>
                        <a href="##"><i class="glyphicon glyphicon-remove"></i>삭제하기</a>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!--footer-->
    <footer>

        <div class="footer-container clearfix">

            <div class="footer-left">
                <div class="footer-logo">
                    <a href="#"><img width="150px" src="../img/logo2.png" alt="logo"></a>
                    <span class="footer-name">Cafe Alley</span><br><br>
                    <span class="footer-desc">논 브랜디드 카페의 활성화, 커피 문화를 선도합니다.</span>
                </div>
                <hr>
                <p class="footer-business">
                    대표자 : 김골목 | E-MAIL : info@info.com<br>
                    사업자번호 : 123-45-67890 | 개인정보보호책임자 : 김골목 | 통신판매업 : 2019-서울마포-0001<br>
                    주소 : 서울특별시 마포구 대흥동
                </p>
                <p class="footer-copyright">
                    Copyright © 2022 COFFEE ALLEY (c). All Rights Reserved E-mail : <a
                        href="mailto:coffeealley.gmail.com">coffeealley.gmail.com</a>
                </p>
            </div>

            <div class="footer-right clearfix">
                <ul class="footer-nav clearfix">
                    <li><a href="#">사이트 소개</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                </ul>
                <div class="footer-sns">
                    <a href="#"><span class="fa-brands fa-facebook-square"></span></a>

                    <a href="#"><span class="fa fa-instagram"></span></a>

                    <a href="#"><span class="fa-brands fa-youtube"></span></a>
                </div>



            </div>

        </div>

    </footer>







    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script>
        const $area = document.getElementById('area');
        const $place = document.getElementById('place');
        const $restrict = document.getElementById('restrict');

        const $promboardfilter = document.querySelector('.promboard-filter');
        $promboardfilter.addEventListener('click', e => {
            console.log('이벤트 발생');
            console.log(e.target);
            if (e.target.matches('#area input[type="checkbox"]')) {
                console.log('지역필터안에 들어옴');
                for (let $li of $area.children) {
                    console.log($li.children[0].children[0] !== e.target);
                    if ($li.children[0].children[0] !== e.target) {
                        $li.children[0].children[0].checked = false;
                        $li.children[0].style.fontSize = '14px';
                    } else {
                        if (e.target.checked) {
                            e.target.parentNode.style.fontSize = '20px';
                        } else {
                            e.target.parentNode.style.fontSize = '14px';
                        }
                    }

                }
            } else if (e.target.matches('#place input[type="checkbox"]')) {
                console.log('분위기필터안에 들어옴');
                for (let $li of $place.children) {
                    if ($li.children[0].children[0] !== e.target) {
                        $li.children[0].children[0].checked = false;
                        $li.children[0].style.fontSize = '14px';
                    } else {
                        if (e.target.checked) {
                            e.target.parentNode.style.fontSize = '20px';
                        } else {
                            e.target.parentNode.style.fontSize = '14px';
                        }
                    }
                }
            } else if (e.target.matches('#restrict input[type="checkbox"]')) {
                if (e.target.checked) {
                    e.target.parentNode.style.fontSize = '20px';
                } else {
                    e.target.parentNode.style.fontSize = '14px';
                }
            } else return;


        })



        let filecount = 0;

        function readURL(input) {
            if (input.files && input.files[0]) {

                var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
                //readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
                reader.readAsDataURL(input.files[0]);

                //파일업로드시 p태그를 안보이게한다.
                input.parentNode.children[0].style.display = "none";
                // fileDiv내의 img태그 아이디 가져오기
                let fileImg = "#" + input.parentNode.children[1].getAttribute('id');

                // FileReader 객체가 생성되서 동작을 한다면,
                reader.onload = function (event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
                    // 위에서 얻어온 img태그 아이디를 통해 img src 바꿔줌.
                    $(fileImg).attr("src", event.target.result);
                    filecount++;
                    makeImgWindow(filecount);
                }


            }
        }

        ///// 작성모달에서 이미지 로직
        function makeImgWindow(filecount) {
            if (filecount >= 3) return;

            $("a[data-slide='prev']").css('display', 'inline');
            $("a[data-slide='next']").css('display', 'inline');

            const $indicatorli = document.createElement('li');
            $indicatorli.setAttribute('data-target', "#myCarousel4");
            $indicatorli.setAttribute('data-silde-to', filecount);
            document.querySelector('#myCarousel4>.carousel-indicators').appendChild($indicatorli);

            const $itemdiv = document.createElement('div');
            $itemdiv.classList.add('item');
            $itemdiv.innerHTML = `<label for="file${filecount}" class="fileDiv">
                                        <p>클릭해서 업로드할 이미지를 선택해주세요.</p>
                                        <img id="fileImg${filecount}" src="../img/upload.png" alt="upload" />
                                        <input type="file" name="file" id="file${filecount}" onchange="readURL(this)"
                                        style="display: none;">
                                    </label>`;
            document.querySelector('#myCarousel4>.carousel-inner').appendChild($itemdiv)
        }



        ///////////////////// 모달 완료버튼 클릭 관련 이벤트




        const $completebtn = document.querySelectorAll('.glyphicon-ok');
        // 수정창 모달 Complete버튼 누르면 
        $completebtn[0].parentNode.addEventListener('click', e => {
            e.preventDefault();
            e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.children[0].click();
            // 수정창은 어차피 해당 글 다시 가져올 것이기 때문에 비워줄 필요가 없음.
        });
        // 작성창 모달 Complete버튼 누르면
        $completebtn[1].parentNode.addEventListener('click', e => {
            e.preventDefault();
            e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.children[0].click();
            // 작성모달창 클린하게.
            cleaningModalWrite();
        });

        const $writingDismiss = document.querySelector('#writing-dismiss');
        $writingDismiss.addEventListener('click', e => {
            cleaningModalWrite();
        })



        // 모달창 내에 작성내용 싹 원상복구 시키기.
        function cleaningModalWrite() {
            console.log('작성모달 청소 시작');
            document.getElementById('writingmodal-img').innerHTML = `<div id="myCarousel4" class="carousel" data-ride="carousel" data-interval="false">
                            
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
                            </ol>

                            
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    

                                    <label for="file" class="fileDiv">
                                        <p>클릭해서 업로드할 이미지를 선택해주세요.</p>
                                        <img id="fileImg" src="../img/upload.png" alt="upload" />
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
            document.getElementById('writingmodal-content').value = '';
            filecount = 0;
        }

        const $restrictselect = [...document.querySelectorAll('select[onchange="disableothers(this)"]')];
        //////// 한 제한사항 선택하면 나머지 선택 못하게 하기.
        function disableothers($changedselect) {

            $changedselect.setAttribute('disabled', true);

            for (let $select of $restrictselect) {
                // 나머지 select요소에게 이미 선택된 option은 선택 못하게 disabled
                if ($select.getAttribute('id') !== $changedselect.getAttribute('id')) {
                    for (let $option of $select.children) {
                        if ($option.value === $changedselect.value)
                            $option.setAttribute('disabled', true);
                    }
                }
            }
        }
        ///////// 제한사항 다시 선택하게 disabled 모두 풀어주기
        function refreshRestrict() {
            event.preventDefault();
            for (let $select of $restrictselect) {
                $select.removeAttribute('disabled');
                for (let $option of $select.children) {
                    $option.removeAttribute('disabled');
                }
            }
        }






        ///////////////////////// 자동스크롤 및 옆에 aside바 걸리게하는 로직
        /*
       $(window).scroll(function(){
      	// 윈도우(device)의 높이와 현재 스크롤 위치 값을 더한 뒤, 문서(컨텐츠) 높이와 비교해서 같아지면 로직을 수행
      	// 문서 높이 - 브라우저창 높이 = 스크롤 창의 끝 높이와 같다면 -> 새로운 내용을 불러오자.
      	if(Math.round($(window).scrollTop()) === $(document).height()-$(window).height()){
      		//console.log(++page);
      		//$('#contentDiv').append("<h1> Page: " + page + "</h1>");
              //$('#contentDiv').append("<br>무한<br>페이징<br>로드<br>중입니다~~~<br><br>무한<br>페이징<br>로드<br>중입니다~~~<br><br>무한<br>페이징<br>로드<br>중입니다~~~<br><br>무한<br>페이징<br>로드<br>중입니다~~~<br>");
              
              // 목록 불러오기의 sql문을 페이징 쿼리를 사용해서 작성을 해 주시는 겁니다.
              // 사용자의 스크롤이 바닥에 닿았을 때, 페ㅔ이지 변수의 값을 하나 올리고
              // getList(false)를 주셔서 누적해서 계쏙 열어주시면 됩니다. -> 마치 getList(++page, false);
              // 게시글을 몇개씩 불러올 지는 페이징 알고리즘에서 알아서 정해주시면 됩니다.             
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
    </script>

</body>

</html>