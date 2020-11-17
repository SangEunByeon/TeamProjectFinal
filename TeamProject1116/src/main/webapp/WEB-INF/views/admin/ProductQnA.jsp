<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%
    String id = (String) session.getAttribute("sessionID");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		/* 사이드바 메인컨텐츠 기본양식 시작 */
	 	.AdminWrapper1{
		width: 100%;
		text-align:center; 
		min-width:1200px;
		}
		 .AdminWrapper2{
		display: inline-block;  
		margin-top:250px;
		}  
	 	.sidebar, .contents{
		display: inline-block;
		}
		.sidebar>p{
	    font-size: 30px;
	    font-weight: 900; 
	    }  
	    table tr td >a{
	    text-decoration:none;
	    color: rgb(40, 40, 40);
	    }
	    .sidebar{   
	      width: 180px;
	      height: 700px; 
	    } 
	    .sidebar table tr td{
	      width: 150px; 
	      border:1px solid rgb(155, 155, 155);
	      border-collapse: collapse;    
	    } 
	    .sidebarlist{
	      padding-left:25px;
	   	  padding: 8px;
	      width: 178px;
	      height: 40px;
	    }
	    .sidebarlist>a{
	      color: rgb(40, 40, 40);
	      text-decoration: none;   
	    }
	    .sidebarlist:hover{
	      background-color: rgb(239, 239, 239);
	    }
	    /* 사이드바 메인컨텐츠 기본양식 끝 */
	</style>
</head>
<body>
 <!-- 헤더부분 -->
<jsp:include page="/WEB-INF/views/AdminHeader.jsp"/>

<!-- 메인컨텐츠 -->
    <div class="AdminWrapper1">
	<div class="AdminMain AdminWrapper2">
	   
	   <!-- 왼쪽 사이드 메뉴바 시작 -->
		<div class="sidebar" style="width:200px; float:left;">
				<table style="width: 150px;">
				<p>상품관리</p>
					<tr>
						<td>
						    <div class="sidebarlist">
							<a href="ManageProduct">상품 목록</a>
							<span href="#">&gt</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
						    <div class="sidebarlist">
						    <a href="UploadProduct">상품 등록</a>
							<span href="#">&gt</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
						    <div class="sidebarlist">
						    <a href="ProductQnA">상품 문의</a>
							<span href="#">&gt</span>
							</div>
						</td>
					</tr>
				</table>
	    </div>
      <!-- 왼쪽 사이드 메뉴바 끝 -->
      
       <div class="contents">
       <h2>상품 문의</h2>
		<hr>
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">문의 번호</th>
		      <th scope="col">상품 번호</th>
		      <th scope="col">문의 내용</th>
		      <th scope="col">아이디</th>
		      <th scope="col">등록일</th>
		      <th scope="col">답변상태</th>
		    </tr>
		  </thead><tr>
		   <c:forEach var="list" items="${ list }">
		   <fmt:formatDate value="${list.reg}" var="reg" pattern="yyyy.MM.dd"/>
		     <td>${ list.idx } </td>
		     <td>${ list.p_number }</td>
		     <td><a href="ProductQnADetail?p_number=${list.p_number}&idx=${list.idx}">${ list.p_content }</a></td>
		     <td>${ list.id }</td>
		     <td>${ reg }</td>	    
		     
		     <c:set var = "p_answer_state" scope = "session" value = "${list.p_answer_state}"/>
		     <c:if test = "${p_answer_state eq '미등록'}">
		      <td style="color:red;"><c:out value = "${list.p_answer_state}"/></td>
             </c:if>
             <c:if test = "${p_answer_state eq '답변완료'}">
		      <td style="color:blue;"><c:out value = "${list.p_answer_state}"/></td>
             </c:if>
		    </tr>
		    </c:forEach>
		    
		   </table>
       </div>
      
      </div>  <!-- AdminWrapper2 -->
      </div>  <!-- AdminWrapper1 -->
       
<jsp:include page="/WEB-INF/views/AdminFooter.jsp"/>
<script src="js/jquery-2.2.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>