<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orderDeliveryChk</title>

    <link rel="stylesheet" href="<c:url value='/css/reset.css'/>">
    

    <style>
    
    	* {
			border-radius: 0 !important;
		}
    
    	.container{
    		min-height:440px;
    	}
    
        .clearfix::after {
            content: '';
            display: block;
            clear: both;
        }

        .titlefoot {
            float: right
        }

        .form-control {
            display: inline-block;
            width: 200px;
        }

        .container {
            min-width: 1200px;
            margin-top: 150px;
            margin-bottom: 50px;
        }

        .top {
            padding: 12px;
            border: 1px solid gray;
            position: relative;
        }

        .search-input.form-control {
            position: absolute;
            right: 70px;
            bottom: 5px;
            width: 300px;
        }

        .search-btn {
            position: absolute;
            right: 13px;
            bottom: 5px;
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
    		
		
	    .order-img{
			width: 25px;
			height: 25px;
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


	<%@ include file="../include/header.jsp" %>
    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!--???????????? ??????-->
                    <ul class="nav nav-tabs">
                        <li><a href="<c:url value='/user/userInfo' />">????????????</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">?????? ?????????<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/user/noReplyChk' />">??????????????????</a></li>
							</ul>
						</li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">????????? ?????????<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/user/evReplyChk' />">??????????????????</a></li>
							</ul>
						</li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">?????????????????????<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="<c:url value='/user/cmnBoardChk' />">???????????????</a></li>
                                <li><a href="<c:url value='/user/cmnReplyChk' />">??????????????????</a></li>
                            </ul>
                        </li>
                        <c:if test="${not empty login.businessnum}">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">?????? ?????????<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/user/promoBoardChk' />">???????????????</a></li>
									<li><a href="<c:url value='/user/promoReplyChk' />">??????????????????</a></li>
								</ul>
							</li>
							
							<li class="active">
								<a href="<c:url value='/user/orderDelHistory' />">????????????/????????????</a>
							</li>
						</c:if>
                    </ul>

                    <br>
                    <h3>
                        <strong>????????????/????????????</strong>
                    </h3>

                    <div>
                    <form action="<c:url value='/user/orderDelHistory'/>" method="get" name="statusForm">
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
                    </div>

                        <!--????????? ?????? ?????? ??????-->
                        <table class="table table-hover w-auto">
                            <thead>
                            	<tr>
	                                <th>????????????</th>
	                                <th>????????????</th>
	                                <th>????????????</th>
	                                <th>??? ????????????</th>
	                                <th>????????????</th>
	                                <th>?????? ??????</th>
	                                <th>??????/??????</th>
	                             <tr>
                            </thead>

                            <tbody>
                            	<c:forEach var="order" items="${orderList}">
	                                <tr>
	                                	<form action="#" method="post" name="${order.ordernum}"></form>
	                                    <td>${order.ordernum}</td>
	                                    <td><fmt:formatDate value="${order.orderdate}" pattern="YYYY-MM-dd hh:mm"/> 2022-03-08</td>
	                                    <td>
	                                    	<a href="${order.ordernum}" class="btn-detail">
												<img class="order-img"alt="???????????????" src="<c:url value='/loadimg/display/${order.ordercart[0].filenum}/1'/>">
												${order.ordercart[0].proname}
												<c:if test="${fn:length(order.ordercart) >1}">??? ${fn:length(order.ordercart)-1}?????? ?????? </c:if>
											</a>
										</td>
	                                    <td class="order-ttp">${order.ordertotalprice}</td>
	                                    <td>
											<c:if test="${order.orderstatus == 'waitdeposit' ? true : false}">
												????????????
											</c:if>
											<c:if test="${order.orderstatus == 'completedeposit' ? true : false}">
												????????????
											</c:if>
											<c:if test="${order.orderstatus == 'waitdelivery' ? true : false}">
												???????????????
											</c:if>
											<c:if test="${order.orderstatus == 'ontheboard' ? true : false}">
												?????????
											</c:if>
											<c:if test="${order.orderstatus == 'completedelivery' ? true : false }">
												????????????
											</c:if>
											<c:if test="${order.orderstatus == 'ordercancel' ? true : false }">
												????????????
											</c:if>
											<c:if test="${order.orderstatus == 'exchange' ? true : false }">
												????????????
											</c:if>
											<c:if test="${order.orderstatus == 'refund' ? true : false }">
												????????????
											</c:if>
										</td>
										<td>
											<p id="track${order.ordernum}" style="display:none;">${order.deliverytracknum}</p>
											<c:if test="${order.orderstatus == 'ontheboard' || order.orderstatus == 'completedelivery' || order.orderstatus == 'refund'|| order.orderstatus == 'exchange'  }">
											<button type="button" id="${order.ordernum}" class="btn-del-info">??????????????????</button>
											</c:if>
										</td>
	                                    <td>
	                                    	<c:if test="${order.orderstatus == 'completedelivery' ? true : false }">
												<button type="button" class="btn-xs btn-orderexrefund" id="r${order.ordernum}" onclick="location.href='<c:url value="/ordering/exchangeRefund/${order.ordernum}"/>'">??????/??????</button>
											</c:if>
											<c:if test="${order.orderstatus == 'waitdeposit' || order.orderstatus == 'completedeposit' ? true : false }">
												<button type="button" class="btn-xs btn-ordercancel" id="d${order.ordernum}" onclick="cancelOrder(this)">????????????</button>
											</c:if>
                                    	</td>
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
	                            <c:if test="${pc.paging.condition}">
	                            	<input type="hidden" name="condition" value="${pc.paging.condition}">
	                            </c:if>
						    </form>
							<!-- ????????? ?????? ??? -->
							
                        </div>
                </div>
            </div>
        </div>

    </section>

	<%@ include file="../include/footer.jsp" %>

    </body>
    
    <script>
    
    let msg = '${msg}';
    if(msg !== ''){
    	alert(msg);
    }
    

    
    $(function() {
    	
   		// ?????? ???????????? ???????????? ?????? ?????????
   		$('.table').on('click', '.btn-del-info', function(e){
   			let ordernum = e.target.getAttribute('id');
   			console.log(ordernum);
	        window.open('http://nplus.doortodoor.co.kr/web/detail.jsp?slipno=' + $('#track'+ordernum).text() , '????????? ????????????', 'width=600, height=700, scrollbars=yes, resizable=no')
   		});
	    
   		
        // ???????????? ????????? ???????????? ?????? ?????? 
        $('.table').on('click', '.btn-detail', function(e){
        	e.preventDefault();
        	ordernum = e.target.getAttribute('href');
        	userid = $('#id'+ordernum).text(); 
        	window.open('<c:url value="/ordering/orderDetail/' + ordernum + '/'+ 0 +'"/>', '?????? ????????????', 'width=1000, height=700, scrollbars=yes, resizable=no');
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
		
		for(let ttp of $('.order-ttp')){
	    	ttp.textContent = ttp.textContent.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") + "???";
	    }
		
		
		// ????????????
		$('.top').on('click', 'button', function(e){
			e.preventDefault();
			let condition = e.target.getAttribute('id').replace('sf','');
			$('#sfcondition').val(condition);
			document.statusForm.submit();
		})
		
		
		
	});

    
    function cancelOrder($input){
    	if(confirm('????????? ????????? ?????????????????????????\n ???????????? ???????????? ?????? ????????? \n???????????? 3???????????? ?????? ??? ????????? ?????????.')){
    		let ordernum = $input.getAttribute('id').replace('d','');
    		let orderstatus = 'ordercancel';
    		const $form = document.querySelector('form[name="'+ordernum+'"]');
    		console.log($form);
    		$form.setAttribute('action','<c:url value="/ordering/orderModify/' + ordernum + '/' + orderstatus + '/' + 0 + '"/>');
    		$form.submit();
    	}
    }
    
    
	    
    </script>

</html>