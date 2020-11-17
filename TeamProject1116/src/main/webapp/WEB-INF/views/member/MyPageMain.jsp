<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <% String id = (String)session.getAttribute("sessionID"); %>
    <link rel="stylesheet" href="css/member/myinfo.css">
</head>
<style>

    /* *{border: 1px red solid;} */
	.banner{
	min-width: 1000px;
    }
    .post{width:700px; height:150px;}
    .onetoone, .proqna{ width:340px; height: 200px;}
    .more{float:right;}
    .post1{
        background-color:#D9CDBC;
        display: flex;
    }
    .postdiv{
        justify-content: center;
        width: 150px;
        text-align: center;
    }
</style>

<body>

<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
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
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="basket">
                                <a href="Basket">장바구니</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="review">
                                <a href="ProductReivew">상품후기</a>

                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="point">
                                <a href="PointInfo">적립금</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="ask">
                                <a href="OnetoOneBoard">1:1문의</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                            <div class="my_info">
                            <a href="MyInfo">내정보</a>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <div class="my_info">
                            <a href="MyProductQnA">상품문의</a>
                            </div>
                            </td>
                        </tr>
                        </table>
                    </div>
               <div class="head_orderlist"> 
                       <h4>마이페이지</h4>   
                    <table>
                    <tr>
                    <td>
                    <div style="margin-bottom: 30px;"><h3><%=id%>님의 포인트는 ${userdto.point}점 입니다.</h3></div>
                    </td>
                    </tr>
                        <tr>
                            <td>
                                <div>진행중인 주문/배송 (최근 3개월)</div>
                                <div class="post post1">
                                    <div class="postdiv">
                                        <h1><div class="delivery">${del1}</div></h1><br>
                                        <h6>주문확인중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">${del2}</div></h1><br>
                                        <h6>주문확인</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">${del3}</div></h1><br>
                                        <h6>배송준비중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">${del4}</div></h1><br>
                                        <h6>배송중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">${del5}</div></h1><br>
                                        <h6>배송완료</h6>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr><td>　</td></tr>
						<hr>
                        <tr><td>　</td></tr>
                        <tr>
                            <td>
                                <table style="margin-top: 40px;">
                                    <tr>
                                        <td>1:1 문의 현황<a href="#" class="more">더보기</a></td>
                                        <td>　</td>
                                        <td>상품 문의 현황<a href="#" class="more">더보기</a></td>
                                    </tr>
                                    <tr>
                                        <td><div class="onetoone">
                                        
                                      <table class="table table-striped">
                                                <thead>
                                                  <tr>
                                                    <th scope="col">문의유형</th>
                                                    <th scope="col">제목</th>
                                                    <th scope="col">답변상태</th>
                                                  </tr>
                                                  </tr>
                                                </thead>
                                               <tbody>
                                                <c:if test="${onelist == '[]'}">
                                                </tbody>
                                                </table>
                                                <div>
                                                <h3 style="font-size:1.4ch; text-align:center;">등록된 1:1 문의 글이 없습니다.</h3>
                                                </div>
                                                </c:if>
                                                
                                                <c:if test="${onelist != null}">
                                                <c:forEach items="${ onelist }" var="onelist" begin="0" end="2" step="1">
                                                 <tr>
                                                    <td style="font-size:1.4ch;">${onelist.o_type}</td>
                                                    <td style="font-size:1.4ch;">${onelist.o_title}</td>
                                                    <td style="font-size:1.4ch; color: blue;">${onelist.o_ans_check}</td>
                                                  </tr>
                                                  </c:forEach>
                                                  </tbody>
                                                  </table>
                                              
                                                  </c:if>
                                        </div></td>
                                        
                                      <td>　</td>
                                        <td><div class="proqna">
                
                                            <table class="table table-striped">
                                                <thead>
                                                  <tr>
                                                    <th scope="col">도서명</th>
                                                    <th scope="col">작가명</th>
                                                    <th scope="col">답변상태</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                
                                                <c:if test="${qnalist == '[]'}">
                                                </tbody>
                                                </table>
                                                <h3 style="font-size:1.4ch; text-align:center;">등록된 상품 문의 글이 없습니다.</h3>
                                                </c:if>
                                                
                                                <c:if test="${qnalist != null}">
                                                <c:forEach items="${ qnalist }" var="qnalist" begin="0" end="2" step="1">
                                                 <tr>
                                                    <td style="font-size:1.4ch;">${qnalist.p_title}</td>
                                                    <td style="font-size:1.4ch;">${qnalist.p_writer}</td>
                                                    <td style="font-size:1.4ch; color: blue;">${qnalist.p_answer_state}</td>
                                                  </tr>
                                                </c:forEach>
                                                  </tbody>
                                                  </table>
                                                </c:if>
                                       
                                             
                                        </div></td>
                                    </tr>
                                </table>
                                </table>
                                </table>
                            </td>
                        </tr>

                    </table>
                </div> 
                </div>
                </td>
            </tr>
           </table> 
    </div> 
</div>  

<!-- 메인푸터 -->
<jsp:include page="/WEB-INF/views/MainFooter.jsp"/>

</body>
</html>