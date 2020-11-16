<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="com.study.springboot.dto.MemberDto" %>

 <%
 String id = (String) session.getAttribute("sessionID"); 
 MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");   
 %>  
  
<html>
<head>
<link rel="stylesheet" href="css/bookstory/bookstorymain.css"> 
<title>북스토리글 전체보기</title>
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
              	<div class="all_view"><a href="#"><span>전체글보기</span></a></div>
             	<div class="hr3"></div>
             	<div class="section_content"> 
            
                 <table id="member_list"  class="table table-striped view_box "> 
                     <tr class="one-list-title ">
                         <th scope="col" style="width: 5%;" >번호</th> 
                         <th scope="col" style="width: 50%;" >제목</th>
                         <th scope="col" style="width: 10%;" >작성자</th> 
                         <th scope="col"  style="width: 10%;">작성일</th> 
                         <th scope="col"  style="width: 5%;">조회수</th> 
                     </tr> 
                     <c:forEach var="dto" items="${ list }" > 
                     <tr class="view_box_1">  
                         <td>${dto.idx}</td>
                         <td><a href="BookStoryView?idx=${dto.idx}">${dto.bs_title}</a></td>
                         <td>${dto.bs_user_id}</td>
                           <fmt:formatDate var="reg" value="${dto.reg}"  pattern="yyyy.MM.dd"/>
                         <td>${reg}</td>
                         <td>${dto.hit}</td>   
                     </tr>     
                     </c:forEach>
                 </table> 
                 </div>  
            </section>
        </div>

    
 	<!-- 메인푸터 --> 
	<jsp:include page="/WEB-INF/views/BookStoryMainFooter.jsp"/>
     
 	<!-- 글쓰기  -->
     <script> 
      function writeReturn() {
   		alert("로그인해주세요");
   		location.href="LoginForm"
   	 }
      function writeReview() {location.href="BookStoryWrite"} 
    </script>
</body>
</html>