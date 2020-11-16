<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="com.study.springboot.dao.IMemberDao" %>    
<%@ page import="com.study.springboot.dto.MemberDto" %>
    
<html>
<head> 
<link rel="stylesheet" href="css/member/serviceterms.css">
  <title>서비스이용약관</title> 
</head>
<body>
<!-- 메인헤더 -->
<jsp:include page="/WEB-INF/views/MainHeader.jsp"/> 



  <div id="main"> 
      <p class="termsofuse_head">개인정보처리방침</p> 
            <hr />
      <div class="join_form">      
          <div class="termofuse_form">  
            <br />  <br />
              <strong> "읽힘"은 정보주체의 동의, 「전자정부법」 및 「개인정보 보호법」 등 관련 법령상의 개인정보 보호 규정을 준수하여 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</strong>
            <br />  <br />
           
            <strong>제1조(개인정보의 처리 목적)</strong><br /> <br />
            "읽힘"은 다음 각 호에서 열거한 목적을 위하여 최소한으로 개인정보를 처리하고 있습니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행하고 있습니다.
            <br /> <br />
            1. 회원가입 및 관리 <br />
            회원가입, 회원제 서비스 이용 및 제한적 본인 확인절차에 따른 본인확인, 개인식별, 부정이용방지, 비인가 사용방지, 가입 의사 확인, 만 14세 미만 아동 개인정보 수집 시 법정대리인 동의여부 확인, 추후 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등 <br />
            2. 민원사무 처리 및 발급·열람서비스 제공 <br />
            민원 신청서에 포함된 개인정보는 전자정부법 제9조에 의한 민원사무 처리를 위한 목적으로 민원 접수기관 및 처리기관에서 이용 (민원발급서비스, 민원열람서비스, 최근 신청이력) <br />
            3. 생활정보 열람서비스 제공 <br />
            읽힘 회원의 경우, 전자정부법 제9조의2에 의한 본인의 생활정보 열람 <br />
            4. 알려드림e 사용자 정보 관리 <br />
            「전자정부법」 제12조의2 및 제12조의4에 따른 공공서비스 지정 및 목록 통보, 공공서비스 목록에 제공 등의 소관 업무 수행에 대한 본인확인, 개인 식별, 부정 이용 또는 비인가 사용방지, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등
            5. 타 행정기관 시스템 연계정보의 처리 <br />
            다른 행정기관 등이 보유한 자료를 활용하여 민원인이 청구한 행정서비스 및 민원사무 등의 전자적 처리 <br />
            6. 읽힘 서비스 향상 및 정책평가 <br />
            신규 서비스 및 원스톱ㆍ맞춤형ㆍ선제적 서비스 개발, 인구통계학적 특성에 따른 서비스 분석 및 서비스의 유효성 및 이용 통계 확인 등 <br />
            
            <br /><strong> 제2조(개인정보의 처리 및 보유기간)</strong><br />
           
            "읽힘"에서 처리하는 개인정보는 수집·이용 목적으로 명시한 범위 내에서 처리하며, 개인정보보호법 및 관련 법령에서 정하는 보유기간을 준용하여 이행하고 있습니다. <br />
            <br />

            1. 읽힘 회원정보 <br />
               - 수집근거 : 정보주체의 동의, 전자정부법 시행령 제90조 <br />
               - 보유기간 : 탈퇴 후 5일까지 <br />
            2. 전자민원 신청이력(상담이력 포함) <br />
               - 수집근거 : 정보주체의 동의, 전자정부법 시행령 제90조 <br />
               - 보유기간 : 3년 <br />
            3. 전자민원 증명서(신청서 및 발급물) <br />
               - 수집근거 : 정보주체의 동의, 전자정부법 시행령 제90조 <br />
               - 보유기간 : 180일 <br />
            4. 생활정보 <br />
               - 수집근거 : 정보주체의 동의, 전자정부법 제9조의2 <br />
               - 보유기간 : 1일 이내 <br />
            5. 알려드림e 사용자정보 <br />
               - 수집근거 : 정보주체의 동의, 전자정부법 제12조의2 및 제12조의4에 따른 공공서비스 지정 및 목록통보, 공공서비스 목록의 제공 등의 소관 업무 수행을 위하여 불가피한 경우 <br />
               - 보유기간 : 탈퇴 후 5일까지 <br />
               <br />
            ※ 개인정보파일 등록사항 공개는 행정안전부 개인정보보호 종합포털(www.privacy.go.kr)→ 민원마당 → 개인정보열람 등 요구 → 개인정보파일 목록검색 메뉴를 활용해주시기 바랍니다. <br />
              
             <br /><strong>제3조(개인정보의 제3자 제공)</strong><br />
            
            "읽힘"은 원칙적으로 정보주체의 개인정보를 수집·이용 목적으로 명시한 범위 내에서 처리하며, 다음의 경우를 제외하고는 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다. 다만, 제5호부터 제9호까지는 공공기관의 경우로 한정합니다. <br />
            <br />
            1. 정보주체로부터 별도의 동의를 받는 경우 <br />
            2. 다른 법률에 특별한 규정이 있는 경우 <br />
            3. 정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우 <br />
            4. 통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 개인정보를 제공하는 경우 <br />
            5. 개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우로서 보호위원회의 심의·의결을 거친 경우 <br />
            6. 조약, 그 밖의 국제협정의 이행을 위하여 외국정부 또는 국제기구에 제공하기 위하여 필요한 경우 <br />
            7. 범죄의 수사와 공소의 제기 및 유지를 위하여 필요한 경우 <br />
            8. 법원의 재판업무 수행을 위하여 필요한 경우 <br />
            9. 형 및 감호, 보호처분의 집행을 위하여 필요한 경우 <br />
            <br /><strong>제4조(개인정보 처리 위탁)</strong><br />
            
            1. "읽힘"은 원활한 개인정보 업무처리 서비스를 위해 다음과 같이 개인정보 처리업무를 위탁 운영하고 있습니다. <br />
            가. 위탁받는 자(수탁자) : (주)솔리데오시스템즈 <br />
               - 위탁하는 업무의 내용 : 시스템 개발 및 유지보수 수행 <br />
               - 위탁기간 : 1년 <br />
               - 연락처 : 070-7825-4470 <br />
               - 근무시간 : 09:00 ~ 18:00 <br />
            나. 위탁받는 자(수탁자) : (주)피씨엔
               - 위탁하는 업무의 내용 : 시스템 개발 및 유지보수 수행 <br />
               - 위탁기간 : 1년 <br />
               - 연락처 : 070-7825-0156 <br />
               - 근무시간 : 09:00 ~ 18:00 <br />
            2. 위탁계약 체결시 개인정보 보호법 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다. <br />
            3. 위탁업무의 내용이나 수탁자가 변경될 경우에는 본 개인정보 처리방침을 통하여 공개하고 있습니다. <br />
            
           <br /><strong>  제5조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)</strong><br />
            
          
            1. 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.<br />
               가. 개인정보 열람요구<br />
               나. 오류 등이 있을 경우 정정 요구<br />
               다. 삭제 요구<br />
               라. 처리정지 요구<br />
            2. 제1항에 따른 권리 행사는 "읽힘"에 대해 「개인정보 보호법 시행규칙」 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, "읽힘"은 이에 대해 지체 없이 조치하겠습니다.<br />
            3. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 정정 또는 삭제를 완료할 때까지 해당 개인정보를 이용하거나 제공하지 않습니다.<br />
            4. 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br />
            5. 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한될 수 있습니다.<br />
            6. 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br />
            7. 정보주체 권리에 따른 열람의 요구·정정·삭제의 요구·처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.<br />
            
            <br /><strong>    제6조(처리하는 개인정보 항목)</strong><br />
          
            "읽힘"가 처리하는 개인정보 항목은 다음 각 호와 같습니다.<br />
            
            1. 읽힘 회원정보<br />
              ① 회원정보<br />
               - 필수항목 : 아이디, 비밀번호, 성명(법인명), 주민등록번호(외국인등록번호, 법인등록번호·사업자등록번호(법인인 경우)), 주소, 이메일 주소<br />
               - 선택항목 : 휴대전화번호<br />
                 ·민원처리 SMS 수신동의 시 : 휴대전화번호<br />
                 ·생체인증 서비스 이용 시 : 휴대전화번호, 휴대폰 운영체제 정보, 통신사, 제조사 정보, 비밀번호<br />
                 ·민원 알림수신 선택 시 : 이메일 또는 SMS 수신동의여부<br />
                 ·생활정보서비스 이용동의 시 : 연령, 성별, 관심지역<br />
              ② 비회원정보<br />
               - 필수항목 : 성명(법인명), 주민등록번호(외국인등록번호, 법인등록번호·사업자등록번호(법인인 경우))<br />
               - 선택항목 : 주소, 상세주소, 연락처, 휴대전화번호<br />
            2. 전자민원 신청이력(상담이력 포함)<br />
               - 필수항목 : 아이디, 성명(법인명), 주민등록번호(외국인등록번호, 법인등록번호), 주소, 휴대전화번호<br />
               - 선택항목 : 전화번호, 이메일주소, 계좌번호, 상담정보(녹취자료 포함)<br />
            3. 전자민원 증명서(신청서 및 발급물)<br />
               - 필수항목 : 성명, 주민등록번호(외국인등록번호, 법인등록번호), 주소<br />
               - 선택항목 : 전화번호, 휴대전화번호, 이메일주소<br />
            4. 생활정보<br />
               - 필수항목 : 주민등록번호(외국인등록번호), 서비스코드(기관), 일련번호, 생활정보(전자정부법 제9조의2)<br />
               - 선택항목 : 자동차등록번호, 주소(동/호수), 공적연금 가입 여부<br />
            5. 알려드림e 사용자 정보<br />
               - 필수항목 : 사용자아이디, 비밀번호, 성명, 소속기관명, 소속부서명, 전화번호, 휴대전화번호, 직위, 직급, 이메일<br />

             <br /><strong>제7조(개인정보의 파기 절차 및 방법)</strong><br /> 
           
            "읽힘"은 원칙적으로 개인정보 보존기간이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다. 파기 절차, 기한 및 방법은 다음과 같습니다.
            <br /><br />
            
            1. 파기절차<br />
            이용자가 입력한 정보는 회원탈퇴 등 목적 달성 후 내부방침 및 기타 관련 법령에 따라 일정기간 저장된 후 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아닌 다른 목적으로 이용되지 않습니다.<br />
               가. 개인정보의 파기<br />
                  보유기간이 경과한 개인정보는 종료일로부터 지체 없이 파기합니다.<br />
               나. 개인정보파일의 파기<br />
                  개인정보파일의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보파일이 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 지체 없이 그 개인정보파일을 파기합니다.<br />
            2. 파기방법<br />
            해당 개인정보는 전자적인 방법으로 복구 또는 재생이 불가능하도록 영구적으로 파기합니다.<br />
           
            <br /><strong> 제8조(개인정보 자동 수집 장치의 설치ㆍ운영 및 거부에 관한 사항)</strong><br />  
         
            1.읽힘24"는 이용자에게 개인형 서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다.<br />
            2. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br />
               가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 내가 찾은 검색어, 초기화면 설정 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br />
               나. 쿠키의 설치ㆍ운영 및 거부 : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다.<br />
               다. 쿠키 저장을 거부할 경우 개인형 서비스 이용에 어려움이 발생할 수 있습니다.<br />
            
           <br /><strong>제9조(개인정보의 안전성 확보 조치)</strong><br />  
          
            개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.<br />
            <br />
            1. 개인정보 취급직원의 최소화 및 교육<br />
            개인정보를 취급하는 직원은 반드시 필요한 인원에 한하여 지정·관리하고 있으며 취급직원을 대상으로 안전한 관리를 위한 교육을 실시하고 있습니다.<br />
            2. 개인정보에 대한 접근 제한<br />
            개인정보를 처리하는 개인정보처리시스템에 대한 접근권한의 부여·변경·말소를 통하여 개인정보에 대한 접근통제를 위한 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br />
            3. 접속기록의 보관 및 점검<br />
            가. 개인정보의 접속 기록 보관 기간<br />
                 개인정보처리시스템에 접속한 기록을 1년 이상 보관ㆍ관리하고 있습니다. 다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나, 고유식별 또는 민감정보를 처리하는 경우에는 2년 이상 보관ㆍ관리하고 있습니다.<br />
            나. 개인정보의 점검<br />
                 개인정보의 오ㆍ남용, 분실ㆍ도난ㆍ유출ㆍ위조ㆍ변조 또는 훼손 등에 대응하여 개인정보처리시스템의 접속기록 등을 월 1회 이상 점검하고 있습니다. 특히 개인정보를 다운로드한 것이 발견되었을 경우에 내부관리 계획으로 정하는 바에 따라 그 사유를 반드시 확인하고 있습니다.<br />
            다. 개인정보의 보관<br />
                 개인정보취급자의 접속기록이 위ㆍ변조 및 도난, 분실되지 않도록 해당 접속 기록을 보안기능을 사용하여 안전하게 보관하고 있습니다.<br />
            4. 개인정보의 암호화<br />
            개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br />
            5. 보안프로그램 설치 및 주기적 점검·갱신<br />
            해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신·점검하고 있습니다.<br />
            6. 비인가자에 대한 출입 통제<br />
            개인정보를 보관하고 있는 개인정보처리시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립·운영하고 있습니다.<br />
            
            <br /><strong> 제10조(권익침해 구제방법)</strong><br />
                       
            개인정보 주체는 개인정보침해로 인한 피해를 구제 받기 위하여 다음과 같이 개인정보 분쟁조정위원회, 한국인터넷진흥원 개인정보 침해-신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다.<br />
            
               - 개인정보 분쟁조정위원회 : 1833-6972 (www.kopico.go.kr)<br />
               - 개인정보 침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)<br />
               - 대검찰청 사이버수사과 : (국번없이) 1301, cid@spo.go.kr (www.spo.go.kr)<br />
               - 경찰청 사이버안전국 : (국번없이) 182 (cyberbureau.police.go.kr)<br />
            
            또한, 개인정보의 열람, 정정·삭제, 처리정지 등에 대한 정보주체자의 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익을 침해 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.<br />
               - 중앙행정심판위원회(www.simpan.go.kr)의 전화번호 안내 참조<br />
            <br /><strong> 제11조(개인정보 분야별 책임관 및 담당자 연락처)</strong><br />  
            
            1. 개인정보 보호책임관 : 행정안전부 정책기획관 구만섭<br />
            2. 개인정보보호 분야별 책임관 : 행정안전부 행정서비스통합추진단 읽힘운영팀장 조성하 (044-205-6460)<br />
            3. 개인정보취급자<br />
                - 담당자 : 행정안전부 행정서비스통합추진단 읽힘운영팀 정윤호<br />
                - 연락처 : 044-205-6457 (Fax 044-204-8911) 전자메일 : yoonhoj@korea.kr<br />
            <br /><strong> 제12조(개인정보 열람청구)</strong><br />  
             
            1. 정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람청구를 아래의 부서에 할 수 있습니다. 행정안전부 행정서비스통합추진단 읽힘운영팀은 정보주체의 열람청구가 신속하게 처리되도록 노력하겠습니다.<br />
               -부서명 : 행정안전부 행정서비스통합추진단 읽힘 운영팀<br />
               -담당자 : 정윤호<br />
               -연락처 : 044-205-6457 (Fax 044-204-8911) 전자메일 : yoonhoj@korea.kr<br />
            2. 정보주체께서는 제1항의 열람청구 접수·처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.<br />
               - 행정안전부 개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람 등 요구(본인확인 필요)<br />
               
           <br /><strong>   제13조(개인정보처리방침 변경)</strong><br />  
          
            이 개인정보 처리방침은 2020. 7. 23. 부터 적용됩니다. 이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.<br />
            
           </div>
      </div>
        <div class="foot">
            <div class="button">  
            <input type="button" class="btn cancle" value="확인" onclick="goFirstForm()"> 
            </div>
        </div>
   </div>  
</div>
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

		function goFirstForm(){ location.href="JoinForm"}
		
      </script>
   
        
</body>
</html>