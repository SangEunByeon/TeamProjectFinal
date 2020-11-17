<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head> 
    <title>메인페이지</title>
</head>
<style>
.multiline-ellipsis{
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical; 
    table-layout: fixed; 
    text-overflow: ellipsis; 
     max-width: 200px !important;
   
}
</style>
<body>   
<!-- 메인헤더 -->

<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
    
    <!-- 메인 슬라이드 --> 
    <div id="main">
        <div class="carousel" data-flickity='{ "autoPlay": 2000 }'>
        <c:forEach items="${ carousel }" var="event" >
        <c:set var="string1" value="${event.n_content}" /> 
	<c:forEach items="${fn:split(string1,'>')}" var="item">
	<c:if test="${fn:contains(item,'img')}">
	<c:set var="string2" value="${fn:substringAfter(item,'style')}" />	
	<c:set var="string3" value='=width:1209px;height:301px; " />' />
	<c:set var="image" value="${fn:replace(item,string2,string3) }" />
	<div class="carousel-cell"><a href="Board_view?idx=${event.idx}&hit=${event.n_hit}">${image}</a></div>
	</c:if>
	</c:forEach>
        </c:forEach>
        </div>  
    </div>
    <!-- 신작도서 -->
     <div id="wrapper">
     <div class="container new_book">
     <span>신작도서<span>
     	<div class="owl-carousel owl-theme">
            <c:forEach items="${ list }" var="dto" >
             <div class="item book1" > 
                <div class="title"> 
                <div>
                <a style="color:#ccc; font-size:15px; " href="Product_detail?p_number=${dto.p_number}"> 
               				 <span>
               				 		<br/>
                                    ${dto.p_title}
                                    <br/><br/>  
                                    ${dto.p_writer}
                                    <br/><br/> <br/><br/>  
                                    ${dto.p_price}
                            </span>
                            </a>
                            </div>
                            </div>   
                    <img src="${dto.p_filename}" height="220px"> 
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
    </div> 
    <!-- 베스트도서 -->  
     <div id="wrapper">
     <div class="container new_book">
     <span>베스트도서<span>
     	<div class="owl-carousel owl-theme">
            <c:forEach items="${ list2 }" var="dto2" >
             <div class="item book1" > 
                <div class="title"> 
                <div>
                <a style="color:#ccc; font-size:15px; " href="Product_detail?p_number=${dto2.p_number}"> 
               				<span>
               				 		<br/>
                                    ${dto2.p_title}
                                    <br/><br/>  
                                    ${dto2.p_writer}
                                    <br/><br/> <br/><br/>  
                                    ${dto2.p_price}
                            </span>
                            </a>
                            </div>
                            </div>   
                    <img src="${dto2.p_filename}" height="220px"> 
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
    </div> 
    
     <!-- 추천도서 --> 
     <div id="wrapper">
     <div class="container new_book">
     <span>추천도서<span>
     	<div class="owl-carousel owl-theme">
            <c:forEach items="${ list3 }" var="dto3" >
             <div class="item book1" > 
                <div class="title"> 
                <div>
                <a style="color:#ccc; font-size:15px; " href="Product_detail?p_number=${dto3.p_number}"> 
               				 <span>
               				 		<br/>
                                    ${dto3.p_title}
                                    <br/><br/>  
                                    ${dto3.p_writer}
                                    <br/><br/> <br/><br/>  
                                    ${dto3.p_price}
                            </span>
                            </a>
                            </div>
                            </div>   
                    <img src="${dto3.p_filename}" height="220px" > 
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
    </div> 
      <!-- 위로가되는 책 -->
     <div id="wrapper">
     <div class="container new_book">
     <span>집콕생활, 위로가 되는 책<span>
     	<div class="owl-carousel owl-theme">
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
            <div class="item book1"> 
                <a href="#">    
                    <div class="title"> 
                        <div>줄거리 요약 : ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
                    </div>
                    <img src="http://placehold.it/400x500"> 
                </a>
            </div>
        </div>
    </div>
    </div> 
    <!-- 후기 -->
    <div class="flex container">
    <section class="review_import" style="margin-right: 10px;">
    <table class="table_review"cellpadding="30px" cellspacing="30px"> 
                
         	<div class="head_review">
             <span>책 리뷰</span>   
            <!--  <span class="review_box"><a href="#">더보기</a></span>  -->    
         	</div>   
         	
         	<c:forEach var="review" items="${review}" begin="0" end="2" step="1" >
	        <c:if test="${review.p_filename !=null}">
         	
         	<div class="pre_img">
             <div class="pre_img_left" style="display:flex;">   
                 <div class="review_box_width"><a href="ProductDetail3?p_number=${review.p_number}"><img src="${review.p_filename}" style="width: 130px; height: 120px;"></a></div> 
                 <div class="review_box_width1" style="margin-top:7%;">[${review.rate}]<br><p class="multiline-ellipsis">${review.description}</p></div> 
             </div>
             </div>
             </c:if>              
	             </c:forEach>
     </table>    
     </section>   
   
      <!-- 공지사항 -->
      <section class="notice_import">
      <span>공지사항</span>   
              <span class="notice_box"><a href="Notice_board">더보기</a></span>     
              <div class="notice"  style="display: table; width: 100%;">
              <table class="table_review" cellpadding="30px" cellspacing="30px" style="width:100%; height:100%;"> 
              	<tr style="border:1px solid black; text-align: center;">
                      <th>작성자</th>  
                      <th>제목</th>
                      <th>작성일</th>
                  </tr>
                   <c:forEach var="notice" items= "${ notice }"  end="4" >
                   <fmt:formatDate value="${notice.reg}" var="reg" pattern="yyyy.MM.dd" />
                  <tr style=" text-align: center;">
                      <td>${notice.n_writer}</td>  
                      <td><a href="Board_view?idx=${notice.idx}&hit=${notice.n_hit}" style="color: black">${notice.n_title}</a></td>
                      <td>${reg}</td>
                  </tr>
              </c:forEach> 
               </table> 
          	</div>  
                   
            
            
             <div class="banner_img">
              <img src="image/banner.png">
          </div>  
      </section>      
  </div>
  
  <!-- 메인푸터 -->
 <jsp:include page="/WEB-INF/views/MainFooter.jsp"/>
  
</body>
</html>
