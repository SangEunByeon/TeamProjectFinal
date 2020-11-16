<%@page import="com.study.springboot.dto.BookStoryBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="com.study.springboot.dto.MemberDto" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<%
	 BookStoryBoardDto content_view=(BookStoryBoardDto)session.getAttribute("content_view");   
	 String id = (String) session.getAttribute("sessionID"); 
	 MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");  
%>  
  
<html>
<head>
<link rel="stylesheet" href="css/bookstory/bookstoryview.css"> 
<link rel="stylesheet" href="css/bookstory/bookstorymain.css"> 
<title>북스토리메인</title>
</head>
<body>
<!-- 북스토리메인헤더 -->
<jsp:include page="/WEB-INF/views/BookStoryMainHeader.jsp"/>


   <div id="main">
		
            <aside>
                <div class="hr"></div>
                <div class="info_head">
                    <a href="#"><span>북스토리</span></a>  
                    <a href="#"><span>내 정보</span></a>  
                    <hr />
                </div>
             	<%
            	if(session.getAttribute("sessionID")==null){
           		%>	
           		<div class="info_body">
                    <img src="image/bookstory/user.png" width="200px" height="200px"> 
                </div>
                <div class="info-text">
                 <table>
                     <tr class="aside_box"> 
                         <td class="text_p"><span style="text-align: center">로그인을해주세요</span></td>
                     </tr>
                     <tr class="aside_box2">
                         <td class="text_p"><span>회원수</span></td>
                         <td class="text_p"><span>${count}</span></td>
                     </tr> 
                 </table>
             	</div>
                <div>
                    <input type="button" class="btn btn-warning" value="글쓰기" name="write" onclick="writeReturn()"> 
                </div> 
           		<%
            	}else{	
            	%>
            	<div class="info_body">
            	<%
            		if(memberDto.getBook_profile()!=null){
       			%>		     
  					  <img src="../uploadPro3_bookstory/${memberDto.book_profile}" width="200px" height="200px">	 
                      <p style="padding-top:5px"><a href="BookStoryProfile">이미지 등록</a></p>
                <%
                      
            		}else{
            	%>
            	      <img src="image/bookstory/user.png" width="200px" height="200px"> 
            	        <p style="padding-top:5px"><a href="BookStoryProfile">이미지 등록</a></p>
            	<%		
            		}
           	    %>
            	</div>
                
                   <div class="info-text">
                    <table>
                        <tr class="aside_box">
                            <td class="text_p"><span>아이디</span></td>
                            <td class="text_p"><span>${memberDto.id}</span></td>
                        </tr>
                        <tr class="aside_box2">
                            <td class="text_p"><span>회원수</span></td>
                            <td class="text_p"><span>${count}</span></td>
                        </tr> 
                    </table>
                </div>
                 
                <div>
                    <input type="button" class="btn btn-warning" value="글쓰기" name="write" onclick="writeReview()"> 
                </div>  
                
            	<%	
            	}
             	 %> 
                <nav class="navbar navbar-light bg-light navbar_aside">
                    <form class="form-inline aside_form_box">
                        <input class="form-control mr-sm-2" type="search1" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-dark" type="submit">Search</button>
                    </form>
                </nav>
                <div class="hr2"></div>
                <div class="board">
                    <div class="board_box_category">
                        <a href="BookStoryAllList">전체글보기</a>
                    </div>
                    <hr />
                   <table>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="BookStoryCommunication"><span>북스토리,소통</span></a>
                            </td>
                        </tr>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="BookStoryOneLineReivew"><span>한줄서평</span></a>
                            </td>
                        </tr>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="BookStoryReadReivew"><span>책읽고,리뷰남기기</span></a>
                            </td>
                        </tr>
                         <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="BookStoryGoodWriting"><span>좋은글귀 남기기</span></a>
                            </td>
                        </tr>
                    </table> 
                    <div class="hr2"></div>
                     <div class="board_box_category">
                        <a href="#">책 정보</a>
                    </div>
                    <hr />
                    <table>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="BookStoryWriterInfo"><span>작가정보</span></a>
                            </td>
                        </tr>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="#"><span>책 가격</span></a>
                            </td>
                        </tr>
                        <tr class="category_box">
                            <td>
                                <img src="https:placehold.it/20x20"><a href="#"><span>책 미리보기</span></a>
                            </td>
                        </tr> 
                    </table> 
                </div> 
            </aside> 
            <section> 
             
             <input type="hidden" name="idx" value="${content_view.idx}">
                <div class="content_box">
                    <div class="category_text"> 
                    
                    <a href="#" id="category" value="${content_view.bs_category}">${content_view.bs_category}</a>                   
                  
                     <div class="list_box">
                     <button type="button" class="btn btn-light">이전글</button>
                     <button type="button" class="btn btn-light">다음글</button>
                     <a name="top"></a><button type="button" class="btn btn-light" onclick="goList()">목록</button>
                     <%if(id.equals("admin")){ %>
                     <button type="button" class="btn btn-light" onclick="rewrite()">수정</button>
                     <button type="button" class="btn btn-light" onclick="delete()">삭제</button>
                     <%} %>
                    </div>
                        <div class="title_text" >
                            <span>${content_view.bs_title}</span>
                        </div>
                        
                        <table class="reply_box">
                            <tr>
                                <td>
                                    <div class="reply_text">
                                        <span class="reply_img"><img src="image/bookstory/reply.png" width="30" height="30"></span> 
                                        <a href="#reply_start"><span>댓글</span></a><span class="reply_text2">10</span>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="profile_info">
                            <table>
                                <tr>
                                    <td>
                                        <div>
                                            <img id="img" src="../uploadPro3_bookstory/${content_view.profile_img}" width="50px" height="50px">	
                                        </div> 
                                    </td>
                                    <td>
                                        <td class="myinfo_box">
                                         <div class="id my_info_text"><span>아이디</span>
                                            <span class="my_info_text2">${content_view.bs_user_id }</span>
                                        </div>  
                                        <fmt:formatDate var="reg" value="${content_view.reg}"  pattern="yyyy.MM.dd HH:mm"/>
                                         <div  class="upload_content my_info_text"><span>등록일</span><span class="my_info_text2">${reg}</span></div> 
                                         <div  class="upload_content hit_count"><span>조회수</span><span class="hit_count2">${content_view.hit}</span> </div>
                                         </td>  
                                </tr>
                                </table>
                                <br />
                                <hr />
                                <!-- 콘텐츠 -->
                                <div class="main_content_box">  
									     <span class="content_view_m">${content_view.bs_content}</span>
                                </div>
                           
                                <!-- 댓글기능 -->  
                                <div class="reply_bottom_box">
                                    <span class="heart_img"><img src="image/bookstory/heart.png" width="30" height="30"></span> 
                                        <a href=""><span class="heart_text">좋아요</span></a><span class="heart_text2">10</span>
                                    <span class="reply_img2"><img src="image/bookstory/reply.png" width="30" height="30" ><a name="reply_start"></a></span> 
                                    <a href=""><span class="reply_text">댓글</span></a><span class="reply_text2">10</span>
                                </div>
                                 <hr />
                                 <div class='reply_bottom_box2'>
                                    <span class="reply_text3">댓글</span>
                                    <span class="reply_date">등록순</span>
                                    <span class="reply_f_upload">최신순</span>
                                 </div>

                                 <!-- 댓글 반복구간 -->
                                 <div class="reply_content">
                                     <table>
                                         <tr>
                                            <td>
                                                <div class="myInfo_img"><img src="https://placehold.it/80x80"></div> 
                                            </td>
                                            <td>
                                                <span style="font-weight: 800;">닉네임</span>
                                              
                                                <div class=" content_text">
                                                    과연 죽음의 진실은 어떻게 될까?
                                                </div>
                                               
                                            </td>
                                         </tr>
                                     </table>  
                                 </div>
                                 <table>
                                    <tr>
                                        <td style="padding-top: 20px;">
                                            <textarea name="reply" id="reply" cols="95" rows="5" placeholder="댓글을 달아주세요"></textarea>
                                        </td>
                                        <td>
                                            <input type="submit" class="btn btn-light" value="댓글달기" style="text-align: center;"> 

                                        </td>
                                    </tr>
                                </table>
                        </div> 
                    </div>  
                    <div class="list_box2"> 
                        <button type="button" class="btn btn-light" onclick="return goList()" >목록</button>
                       <a href="#top"> <button type="button" class="btn btn-light">TOP</button></a>
                    </div>
                </div>  
            </section>   
        </div>   
        
     <script type="text/javascript" > 
       function goList() {
    		alert("로그인해주세요");
    		location.href="LoginForm"
    	}
       function writeReview() {location.href="BookStoryWrite";}
       function writeReturn() {location.href="BookStoryWrite";}
       
       function goList(){   
           var category_list = document.getElementById("category").text;
            console.log(category_list);
           if(category_list == '북스토리,소통'){ 
               location.href="BookStoryCommunication";
           }else if(category_list == '좋은글귀 남기기'){
               location.href="BookStoryGoodWriting";
           }else if(category_list == '한줄서평'){
           location.href="BookStoryOneLineReivew";
           }else if(category_list == '책읽고,리뷰남기기'){
               location.href="BookStoryReadReivew";
           }else if(category_list == '작가정보'){
               location.href="BookStoryWriterInfo";
           }
         }  
       function rewrite(){
    	   location.href="BookStory";
           }       

    </script>
        
<!-- 푸터넣기 -->
</body>

