<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<!DOCTYPE html>

<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원 유형 고르기</title>
    <link rel="stylesheet" href="<c:url value='/css/kwstyle.css'/> ">
 
    
    <style>
    .fin-container{
    min-width: 1100px;
    max-width: 1100px;
    margin: 400px auto;
    }
    .fin-wrapper{
    width: 800px;
    margin : 0 auto;
    }
    </style>
    
    
</head>


<body>
	
  	<%@ include file="../include/header.jsp" %>
  	
    <div class="fin-container"">
        <div class="fin-wrapper" style="display: block;">
        
            <div>
                <h1>회원가입</h1>
                <br>
                <span class="recborder">회원 가입 / 회원 유형</span>
            </div>
            
            <div style="margin-top: 30px;">
            	<span class="fa-solid fa-user-group fa-10x"></span>
            </div>
       </div>

        <div class="fin-wrapper" style="margin-top: 30px; width: 800px;">
            <div class="leftrec" style="display: inline-block;">
                <div>
                
	                <div style="display: inline-block;">
	                    <h3 style="text-align: left;">개인회원</h3>
	                    <p style="text-align: left;">개인 회원 가입을 원하시면 선택해주세요</p>
	                    <br>
	                </div>
	                
	                <div style="float: right;">
	                    <input id="genMember" class="recbtn" type="button" value="회원가입">
	                </div>
	                
                </div><!-- 이름없는 div -->

         	</div><!-- .leftrec -->
         	
            <div class="leftrec" style="float: right;">
                <div>
	                <div style="display: inline-block;">
	                    <h3 style="text-align: left;">사업자회원</h3>
	                    <p style="text-align: left;">사업자 회원 가입을 원하시면 선택해주세요</p>
	                    <br>
	                </div>
                	<div style="float: right;">
	                    <input id="bsnsMember" class="recbtn" type="button" value="회원가입">
	                </div>
                </div><!-- 이름없는 div -->
            </div><!-- .leftrec -->
         </div><!-- fin-wrapper -->
         
	</div>



     <%@ include file="../include/footer.jsp" %>

	<script>
		$(function() {
			
			//일반 회원 가입 클릭 시
			$('#genMember').click(function() {
				location.href = "<c:url value='/user/formJoinGen' />";
			});//일반 회원 클릭 이벤트 끝
			
			// 사업자 회원 가입 클릭 시
			$('#bsnsMember').click(function() {
				location.href = "<c:url value='/user/formJoinBsns' />";

			});//사업자 회원 클릭 이벤트 끝
			
		});//end jQuery
	</script>
</body>


</html>

>>>>>>> origin/Minji
