<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="com.study.springboot.dto.OnetoOneBoardDto" %> 

<%
String id = (String) session.getAttribute("sessionID");
%>
  
<html>
<head> 
<link rel="stylesheet" href="css/member/onetooneboard.css">
    <title>1:1문의게시판</title> 
</head>
<body> 
      
<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
  
  		<!-- 1:1문의 -->
        <div id="main">
            <div class="MyPage_Form">  
                <table>
                    <tr>
                    <td> 
                        <div class="section">
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
                        <div class="head_orderlist"> 
                            <h4>1:1문의게시판</h4>     
                                <div class="form-row align-items-center">
                                    <p style="padding-top:30px;">답변 없는 문의만 보기</p>

                                    <table style="margin-left:200px;">
                                        <tr>
                                            <td>
                                            <div class="col-auto my-1 search-text-form"> 
                                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                                  <option selected>Choose...</option>
                                                  <option value="1">One</option>
                                                  <option value="2">Two</option>
                                                  <option value="3">Three</option>
                                                </select>
                                                
                                    		</div> 
                                            </td>
                                            <td>
                                                <input class="form-control search-text" type="search-1" placeholder="Search" aria-label="Search">
                                            </td>
                                            <td>
                                                <button class="btn btn-secondary" type="submit">검색</button> 
                                            </td> 
                                        </tr>  
                                    </table>
                                </div>  
                                <table id="member_list"  class="table table-striped order-list ">
		                            <tr class="one-list-title">
		                                <th scope="col"  style="width: 8%;" >번호</th>
		                                <th scope="col"  style="width: 12%;" >유형</th>
		                                <th scope="col"  style="width: 30%;" >제목</th>
		                                <th scope="col"  style="width: 10%;" >작성자</th>
		                                <th scope="col"  style="width: 10%;">답변상태</th> 
		                                <th scope="col"  style="width: 10%;">작성일</th> 
		                            </tr>
		                             <c:forEach var="dto" items="${ list }" >
		                             
		                            <tr class="one-list-text">
		                            <fmt:formatDate var="reg" value="${dto.reg}"  pattern="yyyy.MM.dd"/>
		                                <td>${dto.idx}</td>
		                                <td>${dto.o_type}</td>
		                                <td><a href="OnetoOneBoardView?idx=${dto.idx}">${dto.o_title}</a></td>
		                                <td>${dto.user_id}</td>
		                               	<!-- 미등록, 답변완료 --> 
		                                  <c:set var = "o_ans_check" scope = "session" value ="${dto.o_ans_check}"/>
									      <c:if test = "${o_ans_check eq '미등록'}">
										  <td style="color:red;"><c:out value = "${dto.o_ans_check}"/></td>
									      </c:if>
								          <c:if test = "${o_ans_check eq '답변완료'}">
									      <td style="color:blue;"><c:out value = "${dto.o_ans_check}"/></td>
								          </c:if>
								           
		                                <td>${reg}</td>  
		                            </tr> 
                             </c:forEach>
                            </table>  
                           
                              <input class="btn btn-secondary" type="button" value="작성하기" onclick="goOnetoOneBoardWirte()">  
                            
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
	function goOnetoOneBoardWirte(){location.href="OnetoOneBoardWrite";}
	function ProductReview(){location.href="ProductReivew";}
	function ReviewWrite() { location.href="ProductReviewWrite"; } 
	function completePage(){ location.href="ProductReviewComplete";}
	</script> 
 
</body>