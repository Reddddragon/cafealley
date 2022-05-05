<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>noboardwrite</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <!-- <link rel="stylesheet" href="../css/shstyle.css"> -->
    <script src="https://kit.fontawesome.com/6bdfd4f896.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/style.css">
    <!-- include libraries(jQuery, bootstrap) -->
    <!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.css" rel="stylesheet"> -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.js"></script>
    

    <style>
        .container {
            min-width: 1200px;
            margin-top: 180px;
            margin-bottom: 80px;
        }
        .write-service{
            text-align: center;
        }
        
        	/* 파일 업로드 미리보기  */
		.fileDiv {
			height: 100px;
			width: 200px;
			display: none;
			margin-bottom: 10px;
		}
	
		.fileDiv img {
			width: 100%;
			height: 100%;
		}
    </style>




</head>

<body>


  <%@ include file="../include/header.jsp" %>


    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div >
                            <h3 class="write-service">
                                &nbsp;&nbsp; <strong>공지 게시글 작성하기</strong>
                            </h3>
                            
                        </div>
                            
                    </div>
                    <form name="writeform" method="post" action="<c:url value='/noBoard/write' />" enctype="multipart/form-data">
                        <!-- 

                        <div class="row col-xs-12">
                          <label for="">게시판 선택</label> 
                          <select style="width: 93%;" name="category" class="category" id="">
                            <option value="notice"  hidden>공지 게시판</option>
                            <option value="event" hidden>이벤트 게시판</option>
                            <option value="community" selected>커뮤니티 게시판</option>
                          </select>
                        </div>
                      -->
                        <div class="form-group" 
                        style="border-top:3px solid black; border-bottom:3px solid black; padding-bottom: 20px; padding-top: 20px;">

                            <label for="writer">
                                작성자
                            </label>
                            <input type="text" class="form-control" id="writer" name="writer" value="${login.userid }" readonly
                                style="cursor: auto; border-color: transparent; background-color: transparent; width: 180px;">
                        </div>
                        <div class="form-group">

                            <label for="title">
                                제목
                            </label>
                            <input type="text" class="form-control" id="title" name="title"
                                style="width: 300px; background-color: transparent;" />
                        </div>
                        
                        <!-- 파일 전송. -->
                        <div class="form-group">
   	                     <p>3개 까지 등록가능</p>
   	                     <input type="file" multiple="multiple" id="file" name="files">
                        
                        </div>
                        <div class="fileDiv">
							<img id="fileImg" src="<c:url value='/img/load.png' />" />
						</div>
                        
                        
                        
                        <div class="form-group">
							<label for="content" class="col-sm-14">
								내용
		                        <textarea name="content" id="content" class="" style="width:100%; resize:none;" rows="7" cols="180"></textarea>
							</label>
                        </div>

                        <button type="button"
                        	onclick="location.href='<c:url value='/noBoard/noList'/>'"
                         class="detailbtn btn btn-dark" id="listbtn"
                            style="float: left; background-color: #000; color: #fff; border-color: #000;">목록</button>


                        <div class="write" style="float: right; margin-bottom: 40px;">
                            <!-- 취소버튼 -> 목록으로. -->
                            <button id="delbtn" type="button"
                                style="background-color: #fff; border-color: #000; color:#000" class="btn btn-primary">
                                취소
                            </button>
                            <button id="modbtn" type="button" style="background-color: #000; color: #fff; border-color: #000;"
                                class="btn btn-info">
                                등록
                            </button>
                        </div>

                </form>
                </div>

            </div>
        </div>
       
    </section>


<%@ include file="../include/footer.jsp" %>



    <script>
        // 제목 
        const title = document.getElementById('title')
        console.log(title)

        //내용
        const content = document.getElementById('content')
        console.log(content)

        // 수정버튼
        document.querySelector('#modbtn').addEventListener('click', function () {

            if (title.value === '' || content.value === '') {
                event.preventDefault();
                alert('제목과 내용을 확인해주세요.')
                return;
            } else if($('#file').val() === ''||$('#file').val() === null){
            	event.preventDefault();
            	alert('첨부 이미지는 필수입니다.');
            	return;
            }

            document.writeform.submit();


        });

        // 삭제버튼
        document.querySelector('#delbtn').addEventListener('click', function (e) {
            if (confirm('작성하신 내용은 사라집니다 이동하시겠습니까?')) {

                location.href = '/noBoard/noList';
            }
            return;
        });
        
        
        
        
        const $imgfile = document.querySelector('#file');
        console.log($imgfile);
        $imgfile.addEventListener('change', e=>{
        	
        	//작성시 이미지 유효성 검사
    		let file = $('#file').val();
    		console.log(file);
    		file = file.slice(file.indexOf('.') + 1).toLowerCase();
    		console.log(file);
    		if(file !== 'jpg' && file !== 'png' && file !== 'jpeg' && file !== 'bmp') {
    			alert('이미지 파일(jpg, png, jpeg, bmp)만 등록이 가능합니다.');
    			$('#file').val('');
    			return;
    		} 
        	
            
        });
        
        
		//자바 스크립트 파일 미리보기 기능
		function readURL(input) {
			
        	if (input.files) {
        		for(let i=0; i<input.files.length; i++){
        			
        		}
            	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
            	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
	        	reader.readAsDataURL(input.files[0]); 
            	//파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
	            $(".fileDiv").css("display", "block");
            	
            	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
                	$('#fileImg').attr("src", event.target.result); 
                	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
	        	}
        	}
	    }
		
		
		$("#file").change(function() {
	        readURL(this); //this는 #file자신 태그를 의미
	        
	    });
      



    </script>
    




</body>

</html>