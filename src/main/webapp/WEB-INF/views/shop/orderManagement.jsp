<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orderManagement</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/style.css">
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/bootstrap.js"></script>

    <style>
        @font-face {
            font-family: 'S-CoreDream-4Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

         body {
            width: 100%;
            font-family: 'S-CoreDream-4Regular';
        }
        section {
            display: block;
            width: 90%;
            margin: 160px auto;
        }
        .container{
            min-width: 1200px;
        }

        .ord-mgmt-title {
            font-size: 29px;
            font-weight: bold;
        }

        .ord-mgmt-table {
            margin: 30px 0;
        }
    </style>
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
    
    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <p class="ord-mgmt-title">주문 관리</p>
                    <table class="table ord-mgmt-table w-auto text-center align-middle">
                        <thead>
                            <tr>
                                <td>주문번호</td>
                                <td>주문자아이디</td>
                                <td>상품번호</td>
                                <td>총 주문 가격</td>
                                <td>주문 날짜</td>
                                <td>주문 상태</td>
                                <td>배송 정보</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>abc1234</td>
                                <td>8,9,48,20,88</td>
                                <td>247900</td>
                                <td>22/03/10</td>
                                <td>
                                    <select>
                                        <option value="wait-dep">입금대기중</option>
                                        <option value="dep-cmp">입금완료</option>
                                        <option value="pre-del">배송준비중</option>
                                        <option value="being-del">배송중</option>
                                    </select>
                                </td>
                                <td>
                                    <button id="btn-del-info">배송정보보기</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>abc1234</td>
                                <td>8,9,48,20,88</td>
                                <td>247900</td>
                                <td>22/03/10</td>
                                <td>
                                    <select>
                                        <option value="wait-dep">입금대기중</option>
                                        <option value="dep-cmp">입금완료</option>
                                        <option value="pre-del">배송준비중</option>
                                        <option value="being-del">배송중</option>
                                    </select>
                                </td>
                                <td>
                                    <button id="btn-del-info">배송정보보기</button>
                                </td>
                            </tr>

                            <tr>
                                <td>3</td>
                                <td>abc1234</td>
                                <td>8,9,48,20,88</td>
                                <td>247900</td>
                                <td>22/03/10</td>
                                <td>
                                    <select>
                                        <option value="wait-dep">입금대기중</option>
                                        <option value="dep-cmp">입금완료</option>
                                        <option value="pre-del">배송준비중</option>
                                        <option value="being-del">배송중</option>
                                    </select>
                                </td>
                                <td>
                                    <button id="btn-del-info">배송정보보기</button>
                                </td>
                            </tr>

                            <tr>
                                <td>4</td>
                                <td>abc1234</td>
                                <td>8,9,48,20,88</td>
                                <td>247900</td>
                                <td>22/03/10</td>
                                <td>
                                    <select>
                                        <option value="wait-dep">입금대기중</option>
                                        <option value="dep-cmp">입금완료</option>
                                        <option value="pre-del">배송준비중</option>
                                        <option value="being-del">배송중</option>
                                    </select>
                                </td>
                                <td>
                                    <button id="btn-del-info">배송정보보기</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </section>

    
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
    
    <script>
        $(function(){
            $('#btn-del-info').click(function(){
                window.open('http://127.0.0.1:5500/orderManagement.html', '사용자 배송정보', 'width=500, height=700, scrollbars=yes, resizable=no')
            });//배송정보보기 버튼 이벤트 끝
        }); //end jQuery
    </script>

</body>
</html>