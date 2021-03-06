<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice</title>

    <link rel="stylesheet" href="<c:url value='/css/shstyle.css'/>">
    
    <style>
  
  		
    	* {
    		border-radius: 0 !important;
    	}
  
		.container{
 			min-height: 550px;
  		}
  		.pagination {
            margin-left: 430px;
        }

        .pagination .page-link {
            color: #000;
        }

        .pagination .cur-page {
            background: #000;
            color: #fff;
        }
        .pagination .page-link:active,
        .pagination .page-pre:active,
        .pagination .page-link:focus,
        .pagination .page-pre:focus,
        .pagination .page-link:hover,
        .pagination .page-pre:hover {
            color: #000;
        }
        
        .listhead > div {
        	margin-bottom: 10px; margin-left: 100px;
        
        }
        
        .navbar-form{
        	margin-top: 40px !important;
        	margin-right: 70px !important;
        }
        
        .search-input {
        	width: 150px !important;
        }
        .write {
        	right: 90px; top: 10px;
        }
        
        .table {
        	width:1000px !important;
        	margin: 0 auto !important;
        }
    
    </style>

</head>

<body>



<%@ include file="../include/header.jsp" %>




    <section>

        <div class="container" style="margin-top: 150px;">
            <div class="row">
                <div class="board-table">
                    <div class="titlebox">

                    </div>
                </div>

                <!-- 검색창을 배치하고 싶을 때 -->
                <div class="listhead">
                    <div style="float: left; font-size: 20px; margin-top: 15px; margin-left:100px; border-bottom: 3px solid black;">
                        <strong>Notice</strong>
                    </div>
                    <form class="navbar-form navbar-right" action="#" method="get">
                        <div class="input-group">
                            <div class="search-wrap clearfix">
                                <select class="form-control search-select" name="condition">
                                    <option value="title" ${pc.paging.condition == 'title' ? 'selected' : ''}>제목</option>
                                    <option value="writer" ${pc.paging.condition == 'writer' ? 'selected' : ''}>작성자</option>

                                </select>
                                <button id="searchbtn" type="submit" class="btn search-btn">검색</button>
                                <input type="text" name="keyword" class="form-control search-input">
                            </div>

                        </div>
                    </form>
                </div>

                <table class="table table-hover w-auto table-bordered listtable table-list">
                    <tr class="text-center">
                        <td class="col-xs-1">번호</td>
                        <td class="col-xs-3">제목</td>
                        <td class="col-xs-1">작성자</td>
                        <td class="col-xs-1">작성일</td>
                    </tr>
                    <!-- 게시글 가져오기 반복문-->
                    <!-- dummy 데이터 입니다 -->
                    <tbody>
                    
                    <c:forEach var="no" items="${noList}">
                        <tr class="text-center">
                            <td>${no.bno }</td>
                            <td><a href="<c:url value='/noBoard/noDetail?bno=${no.bno}'/>">${no.title }</a></td>
                            <td>${no.writer}</td>
                            <td> <fmt:formatDate value="${no.regdate}" pattern="MM-dd"/>
                            <c:if test="${no.ismod = '0'}"></c:if>
                            <c:if test="${no.ismod = '1'}"> <small>수정됨</small> </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                       
                    </tbody>
                </table>
						<c:if test="${not empty login.admin}">
                		<button style="float: right;" type="button" class="write btn"
                		onclick="location.href='<c:url value="/noBoard/noWrite" />'"
                		>글쓰기</button>
                		</c:if>
                <br>
						<!-- 페이징 처리 -->
						<form action="<c:url value='/noBoard/noList' />" name="pageForm">
	                        <div class="text-center clearfix">
	                            <br>
	                            <ul class="pagination" id="pagination">
	                            	<c:if test="${pc.prev}">
	                                	<li><a href="#" data-pageNum="${pc.beginPage-1}">이전</a></li>
	                                </c:if>
	                                
	                                <c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
	                                	<li class="${pc.paging.pageNum == num ? 'active' : ''}"><a href="#" data-pageNum="${num}">${num}</a></li>
	                                </c:forEach>
	                                
	                                <c:if test="${pc.next}">
	                               		<li><a href="#" data-pageNum="${pc.endPage+1}">다음</a></li>
	                                </c:if>
	                            </ul>
	                            
	                            <!-- 페이지 관련 버튼을 클릭 시 같이 숨겨서 보낼 값 -->
	                            <input type="hidden" name="pageNum" value="${pc.paging.pageNum}">
	                            <input type="hidden" name="keyword" value="${pc.paging.keyword}">
	                            <input type="hidden" name="condition" value="${pc.paging.condition}">
	                            
	                            
	                        </div>
                        </form>
                        
						</div>


            </div>
        </div>
        </div>
    </section>


<%@ include file="../include/footer.jsp" %>

    <script>
      
        
    	$(function() {
    		$('#pagination').on('click', 'a', function(e) {
    			e.preventDefault();
    			console.log($(this));
    			const value = $(this).data('pagenum');
    			console.log(value);
    			document.pageForm.pageNum.value = value;
    			document.pageForm.submit();
    		});
    	});

       
    </script>




</body>

</html>