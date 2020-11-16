<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html>
<head> 
<title>메인푸터</title>
</head>
<body>
  <!-- 푸터 --> 

    <footer>  
    <hr class="footer_border" />
       <!-- 대표전화, 무통장입금 --> 
        <div class="container footer_text">
        <table style="border: none;"> 
            <tr>
                <td>
                <div class="information">
                    <p class="phone_num">대표전화</p> 
                    <span class="custom_phone">1644-0000</span>
                    <br /> 
                    <div class="info_time">
                        <span>고객센터 : 오전 10시 ~ 오후 5시</span><br />
                        <span>점심시간 : 오후12~2시</span> 
                    </div>  
                </div>    
                </td>   
                <td>
                    <div class="company_self">
                    <span><a href="#">읽힘소개</a></span> 
                    <span>|</span>
                    <span><a href="#">이용약관</a></span>
                    <span>|</span>
                    <span><a href="#">개인정보처리방침</a></span>
                    <span>|</span>
                    <span><a href="#">고객센터</a></span>
                    </div>
                    <br />
                    <div class="company_self2">
                        <span>상호명 : 읽힘</span>
                        <span>|</span>
                        <span>사업자 등록번호 : 000-00-0000</span><br />
                        <span>통신판매업 신고번호 : 0000-서울노원-0000</span>
                        <span>|</span>
                        <span>개인정보관리책임자 : 읽힘</span><br />
                        <span>주소 노원구 ○○○ ○○○</span>
                        <span>|</span>
                        <span>대표자 : 읽힘</span><br />
                        <span>TEL : 070-0000-0000</span>
                        <span>|</span>
                        <span>FAX : 000-0000-0000</span>
                        <span>|</span>
                        <span>PowerofRead@readbook.com</span><br /> 
                        <span>Copyright 2020 읽힘 Corp. All Rights Reserved</span>
                        <br/><br/> 
                    </div>
                </td> 
            </tr> 
        </table> 
          
            <p class="top_main" ><a href="#">TOP</a></p>
        </div> 
    </footer>
    
     <!-- jQuery first, then Popper.js, then Bootstrap JS -->  
    
     <script src="js/jquery-2.2.4.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
     
    
      <!-- 헤더 -->
    <script type="text/javascript" src="js/headhesive.js"></script>
  
	<script>
  	$(function(){
        $(window).scroll(function(){  //스크롤하면 아래 코드 실행
                var num = $(this).scrollTop();  // 스크롤값
                if( num > 36 ){  // 스크롤을 36이상 했을 때
                    $(".banner").css("position","fixed");
                }else{
                    $(".banner").css("position","absolute");
                }
            });
        });
    </script>
     
</body>
</html>