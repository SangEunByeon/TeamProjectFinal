<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="css/category/bookform.css"> 
    <title>소설</title>
</head>

<body>
<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>

        <!-- 베스트도서 -->
        <div id="main">
            <div class="wrapper">
                <div class="container new_book_content">  
                    <span>소설</span>  <span>|</span>
                    <span><a href="AllBook">전체보기</a><span>
                    <div class="wrapper_section_box"> 
                        <div class="row">
                        
                         <c:forEach var="dto" items="${ dto }">
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
                          

                    <!-- 페이지 이동 -->
                    <div class="number_button"> 
                            <div class="btn-group mr-2" role="group" aria-label="First group">
                           <button type="button" class="btn btn-secondary" style="opacity: 0.7;"> <a href="#">&lt</a></button>
                            <button type="button" class="btn btn-secondary" style="opacity: 0.7;"><a href="#">1</a></button>
                            <button type="button" class="btn btn-secondary" style="opacity: 0.7;"><a href="#">2</a></button>
                            <button type="button" class="btn btn-secondary" style="opacity: 0.7;"><a href="#">3</a></button>
                            <button type="button" class="btn btn-secondary" style="opacity: 0.7;"><a href="#">4</a></button>
                            <button type="button" class="btn btn-secondary" style="opacity: 0.7;"><a href="#">&gt</a></button>
                             
                        </div>
                    </div> 

                </div> 
            </div> 
        </div>

<!-- 메인푸터 -->
<jsp:include page="/WEB-INF/views/MainFooter.jsp"/>
</body>
</html>