<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="com.study.springboot.dao.IMemberDao" %>    
<%@ page import="com.study.springboot.dto.MemberDto" %>
    
<html>
<head> 
<link rel="stylesheet" href="css/member/idpwcheck.css">
  <title>아이디찾기</title> 
</head>
<body>
<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/>
 <!-- Cookie가 비어있지 않을 때 checked 속성을 줌 --> 
  
  <!-- 로그인 메인화면 -->
  
        <div id="main">
            <div class="loginWrapper">
                <form name="idfindcheck" method="post" action="IdCheckAction" onsubmit="return checkValue()">
                    <p class="login_head">아이디찾기</p> 
                    <table> 
                    <tr>   
                        <td>
                        <div class="name"> 
                        <input class="form-control name" type="text" name="name" placeholder="고객님의 이름을 입력해주세요" >  
                        </div> 
                        <td>
                    </tr>
                    <tr>  
                        <td>
                        <div class="email">    
                        <input class="form-control email" type="text" name="email" placeholder="가입시 등록하신 이메일주소를 입력해주세요">  
                        </div>
                        </td>
                    </tr> 
                    <tr>
                    <div class="loginDiv3">
                        <td>
                        <button type="submit" class="check_btn">확인</button><br> 
                        </td>
                    </div>
                    </tr>
               		</table>
               	</form>
            </div> 
        </div> 
    <!-- 로그인 메인화면  끝-->     
     
 
  <!-- 메인푸터 -->
<jsp:include page="/WEB-INF/views/MainFooter.jsp"/>

     	<script>
		function checkValue(){
			var inputForm = eval("document.idfindcheck");
	
			if(!inputForm.name.value)
				{
				alert("이름을 입력하세요.");
				inputForm.name.focus();
				return false;  //전송 안됨
				}
			if(!inputForm.email.value)
				{
				alert("이메일을 입력하세요.");
				inputForm.email.focus();
				return false;
				}
			}  
      </script>
   
        
</body>
</html>