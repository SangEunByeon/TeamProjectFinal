<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- 1123수정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 헤더 -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/headhesive.css">

	<style>
	.sidebar{
	width: 400px; 
	float:left;
	text-align:center;
	}
	.contents{
	text-align:center;
	width:800px; 
	float: left;
	}
	ul li{
	list-style:none;
	}
	th, td{
	font-size:1.4ch;
	}
	.searchcon input{
	height: 20px; 
	width: 75px;
	}
	.nav-link{
	text-decoration: none;
	color: black;
	font-size: 1.5ch;
	}
	</style>
</head>
<body>
<div id="top">
        <div class="banner"> 
            <div class="top_nav container">  
                <a href="JoinForm">회원가입</a> 
                <a href="LoginForm">로그인</a>   
                <a href="#">고객센터</a>   
                <a href="MainForm">사용자페이지</a> 
                <div class="logo"> 
                    <a href="#"><img src="http://placehold.it/150x50" /></a>    
                    <nav class="navbar navbar-light navbar_search">
                        <form class="form-inline">
                           
                            <input class="search_main mr-sm-2" type="search" aria-label="Search" placeholder="검색"> 
                            <button class="search_click btn btn-link" type="submit"><img src="/image/search.png" width="15px" height="15px"></button>
                        </form>
                    </nav> 
                </div>  
                <div class="navigation">  
                    <nav class="navbar navbar-expand-lg navbar-light">  
                        <table> 

                         <tr class="nav-item active">
                            <a class="nav-link" href="AdminMainForm"><span> 관리자 메인 </span></a>
                        </tr>
                        
                           <div class="dropdown show">
                            <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              회원관리
                            </a>
                          
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="ManageMember">회원목록</a>
                              <a class="dropdown-item" href="WithdrawMember">탈퇴회원</a>
                              <a class="dropdown-item" href="ManageOrder">주문관리</a>
                              <a class="dropdown-item" href="ManageMember">북스토리등급</a>
                            </div>
                        </div>
                           <div class="dropdown show">
                            <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              상품관리
                            </a>
                          
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="ManageProduct">상품목록</a>
                              <a class="dropdown-item" href="UploadProduct">상품등록</a>
                            </div>
                        </div>
                          <div class="dropdown show">
                            <a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              게시판관리
                            </a>
                          
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="Notice_board">공지사항</a>
                              <a class="dropdown-item" href="OnetoOneBoard_A">1:1 문의</a>
                              <a class="dropdown-item" href="Question_board">자주하는 질문</a>
                              <a class="dropdown-item" href="Event_board">이벤트</a>
                            </div>
                        </div>
                        <tr class="nav-item">
                            <a class="nav-link" href="BookStoryMain"><span>북스토리 관리</span></a>
                        </tr> 
 
                        </table>   
                    </nav> 
                    </div>       
 
              </div> 
           </div>  
        </div> 
  
</body>
</html>