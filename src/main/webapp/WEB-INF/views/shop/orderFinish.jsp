<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 완료</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/kwstyle.css">
    <link rel="stylesheet" href="../css/style.css">
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




    <div class="finor-container" style="margin-top: 200px; margin-left: 250px;">
        <div class="finor-wrapper">
            <div class="inner-finor">
                <table class="finor-table">
                    <tbody>
                        <tr>
                            <td>
                                <i class="fa-solid fa-truck fa-10x" style="fill: black;"></i>
                            </td>
                            <td style="text-align: justify;">
                                <h3>고객님의 주문이 완료되었습니다.</h3>
                                <div class="fixdivta">
                                <h5>주문정보 <span style="font-size: 24px; font-weight: 900; color: red;">12345-67890</span>
                                    </h4>
                                    <h5>주문일자 &nbsp;<span style="font-size: 15px; color: gray;">2022-03-07 17:06</span>
                                    </h5>
                                </div>


                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="inner-finor" style="text-align: center; margin-top: 30px; width: 100%;">
                <button class="btn btn-lg">마이페이지</button>&emsp;&emsp;
                <button class="btn btn-lg">홈으로</button>
            </div>
        </div>
        <div class="finor-wrapper2">
            <h4 style="margin-bottom: 15px;">주문 정보</h4>
        </div>
        <div class="finor-wrapper2">
            <table class="finor-infota">
                <thead>
                    <tr class="finor-infoth">
                        <th></th>
                        <th>상품명</th>
                        <th>판매가</th>
                        <th>수량</th>
                        <th>주문상태</th>
                        <th>합계</th>
                        </tr>
                </thead>
                <tbody>
                    <tr class="finor-infobo">
                        <td><img src="../img/prod1.jpg" alt=""></td>
                        <td>베트남 커피</td>
                        <td>30,000원</td>
                        <td>2개</td>
                        <td>입금대기</td>
                        <td style="font-size: 16px; font-weight: 900;">60,000원</td>
                </tbody>
            </table>
            <table class="finor-infota">
                <tbody>
                    <tr class="finor-infolo">
                        <td>
                            <span>상품구매금액 <strong>60,000원</strong> + 배송비 3,000 =</span>
                            <span style="font-size: 20px; color: orange;">TOTAL : ₩ 63,000</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="finor-wrapper2" style="margin-top: 40px;">
            <h4 style="margin-bottom: 15px;">배송지정보</h4>
        </div>
        <div class="finor-wrapper2">
            <table class="finor-infota">
                <tbody class="finor-transinfota" style="text-align: left;">
                    <tr>
                        <td style="width: 200px;">수취인</td>
                        <td>홍길동</td>
                    </tr>
                    <tr>
                        <td>배송지</td>
                        <td>사랑시 고백구 행복동</td>
                    </tr>
                    <tr>
                        <td>연락처</td>
                        <td>010-1234-5678</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <br>
            <br>
        </div>
    </div>

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



</body>

</html>