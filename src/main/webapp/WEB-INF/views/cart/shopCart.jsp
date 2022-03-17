<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cafe Alley | 장바구니</title>

<link rel="stylesheet" href="<c:url value='/css/reset.css'/>">


<style>
body {
	width: 100%;
	height: 100%;
}

section {
	margin-top: 150px;
	min-height: 488px;
}

.container {
	min-width: 1200px;
	height: 100%;
}

.row {
	display: block;
	width: 100%;
	margin: 30px auto;
	padding-left: 85px;
}

.cart-list {
	background: black;
	width: 90%;
	padding: 0 !important;
}

.cart-table {
	margin-top: 15px;
	background: #fff;
}

.cart-table>thead {
	font-weight: bold;
}

.cart-table>tbody {
	font-size: 12px;
	line-height: 1px;
}

.cart-table>tbody>tr>td>p {
	margin: 0;
}

input[type="number"] {
	border: 1px solid #ddd;
	width: 40px;
	text-align: center;
}

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	opacity: 1;
}

.prod-checkbox>input, .prod-number, .prod-price {
	padding-top: 30px;
}

.prod-qty input[type="text"] {
	width: 42px;
	height: 20px;
	padding: 5px;
	border: 1px solid #ddd;
	display: inline-block;
	position: relative;
}

.cart-table>thead>tr>td, .cart-table>tbody>tr>td, .cart-table>tfoot>tr>td
	{
	margin: 0;
	vertical-align: middle;
}

.cart-table .prod-qty img {
	width: 13px;
	height: 9px;
	margin-left: 2px;
	cursor: pointer;
	display: block;
}

.qty-up-down {
	position: absolute;
}

.cart-table button {
	width: auto;
	height: 20px;
}

.cart-table .btn-direct-order .btn-remove {
	margin: 7px;
}

.btn-remove {
	cursor: pointer;
}

.cart-table tbody .prod-qty .btn-qty-update {
	width: 80px;
}

.cart-table tfoot {
	text-align: right;
	background: white;
}

.cart-table tfoot p {
	margin: 0;
	padding: 10px 0;
}

.btn-keepShopping, .btn-sel-order, .btn-all-order {
	width: 180px;
	height: 50px;
	margin: 0 0 10px 10px;
	padding: 15px;
	float: right;
}

.btn-keepShopping {
	background: black;
	color: white;
	font-size: 18px;
}

.btn-keepShopping:hover {
	font-style: italic;
}

.btn-sel-order {
	background: black;
	color: white;
	font-size: 18px;
}

.btn-sel-order:hover {
	font-style: italic;
}

.btn-all-order {
	background: black;
	color: white;
	font-size: 18px;
}

.btn-all-order:hover {
	font-style: italic;
}

.btn-sel-remove {
	float: left;
	width: 150px;
	padding: 0 10px;
	margin: 10px 10px 0;
	background: black;
	color: white;
	font-size: 15px;
}

.btn-sel-remove:hover {
	font-style: italic;
}

.all-select, input[type="checkbox"] {
	margin: -30px 0 0 20px;
}

.all-select-text {
	font-size: 12px;
	margin-left: 20px;
}

.clearfix::after {
	content: '';
	display: block;
	clear: both;
}
</style>
</head>

<body>

	<%@ include file="../include/header.jsp"%>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-xs-12 cart-list clearfix">
					<table class="table w-auto text-center align-middle cart-table">
						<thead>
							<tr>
								<td><span class="all-select-text">전체선택</span><br> <input
									type="checkbox" class="all-select"></td>
								<td>상품번호</td>
								<td>상품명</td>
								<td>수량</td>
								<td>상품가격</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="prod-checkbox"><input type="checkbox"></td>
								<td class="prod-number">
									<p>1</p>
								</td>
								<td class="prod-info">
									<p>폴 바셋 시그니처 블렌드 풀 포텐셜</p>
									<p>(에스프레소 분쇄)</p>
								</td>
								<td class="prod-qty"><input type="number" name="" id=""
									value="1" min="1"><br></td>
								<td class="prod-price">
									<p>24,700원</p>
								</td>
								<td>
									<p class="btn-remove">
										삭제<span class="glyphicon glyphicon-remove"> </span>
									</p>
								</td>
							</tr>

							<tr>
								<td class="prod-checkbox"><input type="checkbox"></td>
								<td class="prod-number">
									<p>1</p>
								</td>
								<td class="prod-info">
									<p>폴 바셋 시그니처 블렌드 풀 포텐셜</p>
									<p>(원두상태)</p>
								</td>
								<td class="prod-qty"><input type="number" name="" id=""
									value="1" min="1"><br></td>
								<td class="prod-price">
									<p>24,700원</p>
								</td>
								<td>
									<p class="btn-remove">
										삭제<span class="glyphicon glyphicon-remove"> </span>
									</p>
								</td>
							</tr>

							<tr>
								<td class="prod-checkbox"><input type="checkbox"></td>
								<td class="prod-number">
									<p>1</p>
								</td>
								<td class="prod-info">
									<p>폴 바셋 시그니처 블렌드 풀 포텐셜</p>
									<p>(프렌치 분쇄)</p>
								</td>
								<td class="prod-qty"><input type="number" name="" id=""
									value="1" min="1"><br></td>
								<td class="prod-price">
									<p>24,700원</p>
								</td>
								<td>
									<p class="btn-remove">
										삭제<span class="glyphicon glyphicon-remove"> </span>
									</p>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
									<p>
										상품 합계금액 <strong id="product-total-price">47700</strong>원 + 배송비
										<strong>3000</strong>원 = 총 합계 <strong id="total-price">47700</strong>원
									</p>
								</td>
							</tr>
						</tfoot>
					</table>
					<br>
					<button class="btn-sel-remove">선택상품삭제</button>
					<button class="btn-all-order">전체상품 주문하기</button>
					<button class="btn-sel-order">선택상품 주문하기</button>
					<button class="btn-keepShopping">계속쇼핑하기</button>
				</div>
			</div>

		</div>



	</section>


	<%@ include file="../include/footer.jsp" %>

	<script>
        const $table = document.querySelector('.table');


        // 선택상품 삭제 로직
        document.querySelector('.btn-sel-remove').addEventListener('click', e=>{
            // 전체선택 체크박스 제외하고 상품체크박스만 가져옴
            const $inputchecks = [...document.querySelectorAll('.prod-checkbox input[type="checkbox"]')];
            // 체크된 애들만 행 삭제
            for(let $check of $inputchecks){
                if($check.checked)
                    $check.parentNode.parentNode.remove();    
            }
            priceload();
        });

        // 삭제버튼 누르면 tr삭제하는 로직 일단은 백 로직 구현할때 실제 삭제와 함께 같이 되어야 하기 때문에 이 페이지에서는 잠시 보류
        $table.addEventListener('click', e => {
            if (! (e.target.matches('.btn-remove') || e.target.matches('.glyphicon-remove') )) {
                return;
            }
            // 해당 tr삭제
            if(e.target.matches('.btn-remove')){
                e.preventDefault();
                e.target.parentNode.parentNode.remove();
            }else{
                e.target.parentNode.parentNode.parentNode.remove();
            }           
            // 가격정산
            priceload();
        })

        // 페이지 처음 진입시 가격 정산되게
        window.onload = function () {
            priceload();
        };


        // 수량 바꿀시 가격 자동 정산되게
        $table.addEventListener('change', e => {
            if (!e.target.matches('input[type="number"]')) {
                return;
            }
            priceload();
        });

        function priceload() {
            let productTotalPrice = 0;
            let totalPrice = 0;

            const $inputnums = document.querySelectorAll('input[type="number"]');
            console.log($inputnums);
            for (let $inputnum of $inputnums) {
                console.log($inputnum.value);
            }
            const $productprices = document.querySelectorAll('.prod-price>p');
            console.log($productprices);
            for (let $productprice of $productprices) {
                console.log($productprice.innerHTML.substring(0, $productprice.innerHTML.indexOf('원')));
            }

            for (let i = 0; i < $inputnums.length; i++) {
                productTotalPrice += $inputnums[i].value * $productprices[i].innerHTML.replace('원', '').replace(',','');
                console.log(productTotalPrice);
            }
            totalPrice = productTotalPrice + 3000;
            document.querySelector('#product-total-price').innerHTML = productTotalPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
            document.querySelector('#total-price').innerHTML = totalPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") ;


        }
    </script>


</body>

</html>