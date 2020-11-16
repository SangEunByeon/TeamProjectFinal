<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
<head>

	<link rel="stylesheet" href="css/category/bookform.css"> 
    <title>전체도서</title> 
    </head>
<body>
 <!-- 메인헤더 -->
 <jsp:include page="/WEB-INF/views/MainHeader.jsp"/>

        <!-- 전체카테고리 보기 -->
        <div id="main">
            <div class="wrapper">
                <div class="container new_book_content">  
                    

                    <p>전체보기</p>   
				
                    <div class="wrapper_section_box"> 
                        <div class="row">
                        
                        <c:forEach var="dto" items="${dto}">
 							<div class="column">
                                <div class="box_content_img"> 
                                    <a href="Product_detail?p_number=${dto.p_number}">  
                                    <span>
                                    ${dto.p_title}
                                    <br/><br/>  
                                    ${dto.p_writer}
                                    <br/><br/> <br/><br/>  
                                    ${dto.p_price}
                                    </span>   
                                    </a> 
                                </div> 
                                <img src="${dto.p_filename}" alt="" width="200px" height="300px">    
                            </div>
                            </c:forEach>
         
                            
                            
                            
                        </div>  
                    </div>   
         
                        </div>   <!-- row -->
                    </div>  

                    <!-- 페이지 이동 -->
                      <nav aria-label="Page navigation example">
					   <ul class="pagination justify-content-center">
					    <%
					    int allPageNum=(Integer)request.getAttribute("allPageNum");
					    for(int i=1; i<=allPageNum; i++){
		   		    	   %>
					     <li class="page-item"><a href="allBookPage?no=<%=i%>" class="page-link"><%=i%></a></li>
					       <%
					     }
					    %>    
					  </ul> 
					</nav>  

                </div> 
            </div> 
        </div>
         
<!-- 메인푸터 -->
 <jsp:include page="/WEB-INF/views/MainFooter.jsp"/> 

</body>
</html>
