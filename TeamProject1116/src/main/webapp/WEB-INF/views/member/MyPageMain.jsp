<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    
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
                                <a href="#">주문내역</a> 
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="basket">
                                <a href="#">장바구니</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="review">
                                <a href="#">상품후기</a>

                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="point">
                                <a href="#">적립금</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                <div class="ask">
                                <a href="#">1:1문의</a>
                                </div>
                            </td> 
                        </tr>
                        <tr>
                            <td>
                            <div class="my_info">
                            <a href="#">내정보</a>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <div class="my_info">
                            <a href="#">상품문의</a>
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
                                <div>진행중인 주문/배송 (최근 3개월)</div>
                                <div class="post post1">
                                    <div class="postdiv">
                                        <h1><div class="delivery">0</div></h1><br>
                                        <h6>주문확인중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">0</div></h1><br>
                                        <h6>주문확인</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">0</div></h1><br>
                                        <h6>배송준비중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">0</div></h1><br>
                                        <h6>배송중</h6>
                                    </div>
                                    <div style="margin: 0 auto;"><h1>></h1></div>
                                    <div class="postdiv">
                                        <h1><div class="delivery">0</div></h1><br>
                                        <h6>배송완료</h6>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr><td>　</td></tr>
                        <tr>
                            <td>
                                <div style="width:700px;">최근주문내역 <a href="#" class="more">더보기</a></div>
                                <div class="post" >
                                    <table class="table table-striped">
                                        <thead>
                                          <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">First</th>
                                            <th scope="col">Last</th>
                                            <th scope="col">Handle</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">3</th>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                          </tr>
                                        </tbody>
                                      </table>
                                </div>
                            </td>
                        </tr>
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
                                                    <th scope="col">#</th>
                                                    <th scope="col">First</th>
                                                    <th scope="col">Last</th>
                                                    <th scope="col">Handle</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>@mdo</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>@fat</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td>@twitter</td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                        </div></td>
                                        <td>　</td>
                                        <td><div class="proqna">
                                            <table class="table table-striped">
                                                <thead>
                                                  <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">First</th>
                                                    <th scope="col">Last</th>
                                                    <th scope="col">Handle</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>@mdo</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>@fat</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td>@twitter</td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                        </div></td>
                                    </tr>
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