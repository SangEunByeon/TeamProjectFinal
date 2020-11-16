<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html>
<head> 
<link rel="stylesheet" href="css/member/productreivew.css">
    <title>상품후기</title> 
</head>
<body> 
      
<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
 
        <!-- 상품후기 -->
        <div id="main">
            <div class="MyPage_Form">  
                <table>
                    <tr>
                    <td>
                        <div class="aside">
                            <table  cellpadding="10px" cellspaing="10px">
                                <p>마이페이지</p> 
                            <tr>
                                <td>
                                    <div class="orderlist">
                                    <a href="OrderList">주문내역</a> 
                                    <span>&gt</span> 
                                    </div>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <div class="basket">
                                    <a href="Basket">장바구니</a>
    
                                     <span>&gt</span> 
                                    </div>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <div class="review">
                                    <a href="ProductReivew">상품후기</a>
                                      <span>&gt</span> 
                                    </div>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <div class="point">
                                    <a href="PointInfo">적립금</a>
                                       <span>&gt</span> 
                                    </div>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <div class="ask">
                                    <a href="OnetoOneBoard">1:1문의</a>
                                     <span>&gt</span> 
                                    </div>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                <div class="my_info">
                                <a href="MyInfo">내정보</a>
                                  <span>&gt</span> 
                                </div>
                                </td>
                            </tr>
                            </table>
                        </div>
                    <tr>
                    <td>
                      <div class="section">

                            <div class="head_orderlist"> 
                                <h4>상품후기</h4>  
                                <div class="product-review_box">
                                    <button type="button" class="btn btn-secondary possible_Productreview" onclick="ProductReivew()">작성가능후기</button> 
                                    <button type="button" class="btn btn-outline-secondary complete_Productreview" onclick="completePage()">작성완료후기</button>
                                </div>
                                
     
                                <table id="member_list"  class="table table-striped product-review">
                                <tr style="text-align: center;">
                                    <th scope="col" >날짜/주문번호</th>
                                    <th scope="col" style="width: 40%;" >상품명/작가</th>  
                                    <th scope="col"  style="width: 20%;">주문상태</th> 
                                </tr>
                                
                                <c:forEach items="${ list }" var="list">
                                <fmt:formatDate value="${list.reg}" var="reg" pattern="yyyy.MM.dd"/>
                                <tr class="box_center">
                                    <td>${reg} <span>/</span> ${list.o_number}</td>
                                    <td>${list.p_title} / ${list.p_writer}</td>  
                                    <td > 
                                    <form action="/ProductReviewWrite" >
                                    <input type="hidden" name="p_number" value="${list.p_number}">
                                    <input type="hidden" name="p_title" value="${list.p_title}">
                                    <input type="hidden" name="o_orderid" value="${list.o_orderid}">
                                    <input type="hidden" name="o_number" value="${list.o_number}">
	                                     <div class="box_center">
	                                       <button type="submit" class="btn btn-secondary review_write">후기쓰기</button>
	                                     </div>
                                     </form>
                                    </td> 
                                </tr>
                                </c:forEach>
                                
                                </table>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                    </ul>
                                </nav>	    
                            </div> 
                        </div>
                    	</td>
                	</tr>
               	</table> 
            </div> 
        </div>   
        
<!-- 메인푸터 -->
<jsp:include page="/WEB-INF/views/MainFooter.jsp"/>


	<script type="text/javascript"> 
	function ProductReview(){location.href="ProductReivew";}
	function completePage(){location.href="ProductReviewComplete";}
	</script> 
 
</body>
</html>
