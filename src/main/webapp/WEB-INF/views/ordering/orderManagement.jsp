<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>orderManagement</title>

<link rel="stylesheet" href="<c:url value='/css/reset.css'/>">



<style>
@font-face {
	font-family: 'S-CoreDream-4Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff')
		format('woff');
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

.container {
	min-width: 1100px;
}

.ord-mgmt-title {
	font-size: 29px;
	font-weight: bold;
}

.ord-mgmt-table {
	margin: 30px 0;
}

a {
	font-weight: 700;
}
.order-img{
	width: 25px;
	height: 25px;
}
.container{
	min-width:1100px;
	min-height: 500px;
}
input:read-only{
	background: #dfdfdf;
	border : 1px solid rgb(118, 118, 118);
}
input[type='text'],
select{
	border: 1px solid #ddd;
	text-align : center;
	float:left;
	width: 200px;
}
select{
	width: 100px;
}
button:disabled {
	background: #dfdfdf;
}

        
		.pagination > li > a {
        background-color: black !important;
        border : 1px solid black !important;
        color: white !important;
    	}
		.pagination > li > a:hover {
        background-color: gray !important;
        color: white !important;
        border : 1px solid white !important;
        cursor: pointer !important;
    	}

        .top {
            padding: 12px;
            border: 1px solid gray;
            position: relative;
            min-width:1200px;
        }
  		.btn-xs{
			color:white !important;
			background : black !important;
			border: 1px solid black !important;
			width: 70px;
			
		}
		.btn-s{
			color:white !important;
			background : black !important;
			border: 1px solid black !important;
			font-size: 12px;
			padding : 1px 5px;
			height: 22px;
			border-radius : 3px;
		}
        
</style>
</head>
<body>

	<%@ include file="../include/header.jsp"%>

	<section>
		<div class="container">
			<p class="ord-mgmt-title">?????? ??????</p>
			<form action="<c:url value='/ordering/orderManagement'/>" method="get" name="statusForm">
            <div class="top">
			<!--???????????? ?????? ????????? ??????????????? ???????????????-->
				<strong>????????????</strong>
                <button type="button" class="btn-xs" id="sf">??????</button>
				<button type="button" class="btn-xs" id="sf1">??????/??????</button>
				<button type="button" class="btn-s" id="sf2">?????????/????????????</button>
                <button type="button" class="btn-xs"id="sf3">??????/??????</button>
                <button type="button" class="btn-xs" id="sf4">????????????</button>
                <input type="hidden" name="condition" id="sfcondition" value="">                            
			</div>
			</form>
			<table class="table ord-mgmt-table w-auto text-center align-middle"
				style="min-width: 1200px; ">
				<thead>
					<tr>
						<td>????????????</td>
						<td>??????????????????</td>
						<td>??? ?????? ??????</td>
						<td>?????? ??????</td>
						<td>?????? ??????</td>
						<td>?????? ??????</td>
						<td>?????? ??????</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="order" items="${orderList}">
						<tr>
							<form action="#" method="post" name="${order.ordernum}">
								<td>${order.ordernum}</td>
								<td id="id${order.ordernum}">${order.userid}</td>
								<td class="order-ttp">${order.ordertotalprice}</td>
								<td>
									<a href="${order.ordernum}" class="btn-detail">
										<img class="order-img"alt="???????????????" src="<c:url value='/loadimg/display/${order.ordercart[0].filenum}/1'/>"> 
										${order.ordercart[0].proname}
										<c:if test="${fn:length(order.ordercart) >1}">
										 	??? ${fn:length(order.ordercart)-1}?????? ??????
										 </c:if>
									</a>
								</td>
								<td>
									<fmt:formatDate value="${order.orderdate}" pattern="YY/MM/dd hh:mm" />
								</td>
								<td>
									<select id="status${order.ordernum}"  ${order.orderstatus == 'completedelivery' || order.orderstatus=='ordercancel' || order.orderstatus=='exchange' || order.orderstatus=='refund' ? 'disabled' : '' }>
										<c:if test="${order.orderstatus == 'waitdeposit' ? true : false}">
											<option value="completedeposit" ${order.orderstatus == 'waitdeposit' ? 'selected' : ''}>????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'waitdeposit' || order.orderstatus == 'completedeposit' ? true : false}">
											<option value="completedeposit" ${order.orderstatus == 'completedeposit' ? 'selected' : ''}>????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'completedeposit' || order.orderstatus == 'waitdelivery' ? true : false}">
											<option value="waitdelivery" ${order.orderstatus == 'waitdelivery' ? 'selected' : ''}>???????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'waitdelivery' || order.orderstatus == 'ontheboard' ? true : false}">
											<option value="ontheboard" ${order.orderstatus == 'ontheboard' ? 'selected' : '' }>?????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'ontheboard' || order.orderstatus == 'completedelivery' ? true : false }">
											<option value="completedelivery" ${order.orderstatus == 'completedelivery' ? 'selected' : '' }>????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'ordercancel' ? true : false }">
											<option value="completedelivery" ${order.orderstatus == 'ordercancel' ? 'selected' : '' }>????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'exchange' ? true : false }">
											<option value="completedelivery" ${order.orderstatus == 'exchange' ? 'selected' : '' }>????????????</option>
										</c:if>
										<c:if test="${order.orderstatus == 'refund' ? true : false }">
											<option value="completedelivery" ${order.orderstatus == 'refund' ? 'selected' : '' }>????????????</option>
										</c:if>
									</select>
								</td>
								<td>
									<input type="text" id="track${order.ordernum}" placeholder="????????? ????????? ??? ????????????." value="${order.deliverytracknum}" readonly>
									<c:if test="${order.orderstatus == 'ontheboard' || order.orderstatus == 'completedelivery' || order.orderstatus == 'refund' || order.orderstatus == 'exchange' }">
										<button type="button" id="btn-del-info" class="${order.ordernum}">??????????????????</button>
									</c:if>
								</td>
									<td>
										<button ${ (order.orderstatus == 'completedelivery' || order.orderstatus == 'refund' || order.orderstatus =='ordercancel' || order.orderstatus == 'exchange') ? 'disabled' : ''} id="${order.ordernum}" type="button" onclick="updateOrder(this)">${ (order.orderstatus == 'completedelivery' || order.orderstatus == 'refund' || order.orderstatus =='ordercancel' || order.orderstatus == 'exchange') ? '????????????' : '????????????'}</button>
									</td>
							</form>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="text-center">
				<!-- ????????? ?????? ??????  -->
               	<form action="<c:url value='/user/orderDelHistory'/>" name="pageForm">
					<ul class="pagination" id="pagination">
						<c:if test="${pc.prev}">
							<li><a href="#" data-pageNum="${pc.beginPage-1}">??????</a></li>
                           </c:if>
                           <c:forEach var="curPage" begin="${pc.beginPage}" end="${pc.endPage}">
							<li class="${pc.paging.pageNum == curPage ? 'active' : ''}">
                           		<a href="#" data-pageNum="${curPage}">${curPage}</a>
                           	</li>
						</c:forEach>
                           
                          <c:if test="${pc.next}">
                         		<li><a href="#" data-pageNum="${pc.endPage+1}">??????</a></li>
                          </c:if>
                      </ul>
                      <!-- ????????? ?????? ????????? ?????? ??? ?????? ????????? ?????? ??? -->
                      <input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
                      <input type="hidden" name="countPerPage" value="${pc.paging.countPerPage}">
                      <input type="hidden" name="keyword" value="${pc.paging.keyword}">
                      <input type="hidden" name="condition" value="${pc.paging.condition}">
    			</form>
				<!-- ????????? ?????? ??? -->
			</div>
		</div>
	</section>

	<%@ include file="../include/footer.jsp"%>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=17136e4884602adf06d712c2e104879b&libraries=services"></script>
	<script>
    
        $(function(){
        	
        	// ?????? ???????????? ???????????? ?????????
            $('#btn-del-info').click(function(){
            	let ordernum = $('#btn-del-info').attr('class');
                window.open('http://nplus.doortodoor.co.kr/web/detail.jsp?slipno=' + $('#track'+ordernum).val(), '????????? ????????????', 'width=600, height=700, scrollbars=yes, resizable=no')
            });
        	
        	
            // ?????? ?????? ????????? ?????????
            for(let ttp of $('.order-ttp')){
            	ttp.textContent = ttp.textContent.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") + "???";
            }
            console.log($('input[name="deliverytracknum"]').length);
            
            
            // ??????????????? ??????????????? ????????? ?????? ?????? ???.
            $('.table').on('change', 'select', function(e){
            	if(e.target.value === 'ontheboard'){
            		ordernum = e.target.getAttribute('id').replace('status', '');
            		$('#track'+ordernum).attr('readonly', false);
            		$('#track'+ordernum).attr('placeholder', '???????????? ??????????????? ??????');
            		$('#track'+ordernum).focus();
            	}
            });
            
            
            // ???????????? ????????? ???????????? ?????? ?????? 
            $('.table').on('click', '.btn-detail', function(e){
            	e.preventDefault();
            	ordernum = e.target.getAttribute('href');
            	userid = $('#id'+ordernum).text(); 
            	window.open('<c:url value="/ordering/orderDetail/' + ordernum + '/'+ userid +'"/>', '?????? ????????????', 'width=1000, height=700, scrollbars=yes, resizable=no');
            });
            
        	// ?????????
    		$('#pagination').on('click', 'a', function(e) {
        			e.preventDefault();
        			console.log($(this));
        			const value = $(this).data('pagenum');
        			console.log(value);
        			document.pageForm.pageNum.value = value;
        			document.pageForm.submit();
        		});
          
    		
    		// ????????????
    		$('.top').on('click', 'button', function(e){
    			e.preventDefault();
    			let condition = e.target.getAttribute('id').replace('sf','');
    			$('#sfcondition').val(condition);
    			document.statusForm.submit();
    		})
            
            
            
        }); //end jQuery
        
        
        // ?????? ?????? ?????? ?????? ??????
        function updateOrder($input){
        	if(confirm('?????? ??????????????? ???????????? ????????? ??????????????? ????????? ????????????.\n???????????? ????????? ???????????????????')){
	        	let ordernum = $input.getAttribute('id');
	        	let orderstatus = document.querySelector('#status' + ordernum).value;
	        	const $form = document.querySelector('form[name="'+ordernum+'"]');
	        	if($('#track'+ordernum).attr('readonly')){
	        		$form.setAttribute('action','<c:url value="/ordering/orderModify/' + ordernum + '/' + orderstatus + '/' + 0 + '"/>');
	        	}else{
	        		// ????????? ???????????? ?????? ??????????????? ?????????
	        		
	        		if(/[^0123456789-]/g.test( $('#track'+ordernum).val() ) ){
	        			alert('\"??????\" ?????? \"?????? + ?????????\" ?????? ?????? ????????????.');
	        			$('#track'+ordernum).focus();
	        			return;
	        		}else if($('#track'+ordernum).val()===''){
	        			alert('?????????????????? ??????????????????.');
	        			$('#track'+ordernum).focus();
	        			return;
	        		}
	        		tracknum = $('#track'+ordernum).val().replaceAll('-','');
	        		$form.setAttribute('action','<c:url value="/ordering/orderModify/' + ordernum + '/' + orderstatus + '/' + tracknum + '"/>');
	        	}
	        	$form.submit();
        	}
        }
        
        
		
    </script>

</body>
</html>