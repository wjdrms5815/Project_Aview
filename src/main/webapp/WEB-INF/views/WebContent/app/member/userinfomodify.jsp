<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user info modify</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
		<!-- Main -->
	<section id="main" class="wrapper style1">
		<header class="major">
			<h2>개인정보 변경</h2>
		</header>
		<div class="container">
		

            <article id = "user">
				<form name="userinfo" action="${pageContext.request.contextPath}/member/MemberModify.me" method="post">	
					 <div class="row gtr-uniform">
							<div class="col-6 col-12-small" style="margin:0 auto;"> 
									
					<input type="hidden" id="a_id" name="a_id" value="<%=session.getAttribute("session_id")%>">
				<!-- 				  <section id="content">
                  <form method="post" action="#">
                     <div class="box">
                        <div class="row">
                           <div class="col-4 col-12-medium">
                              <div class="image fit"><img src="images/profil.jpg" alt="기본이미지"id="imgUserPhoto"></div>
                                  <div><input type="file" name="imgfile"  style="width:221px;"></div> -->
                           
                          
								<label>아이디</label><input type="text" maxlength="12" name="u_id" value="${memberBean.getU_id()}" readonly onclick="alert('※변경할수 없습니다')">
						
							<br>
								 <label for="first_name">이름</label><input type="text" name="a_name" id="a_name" placeholder="이름" value="${memberBean.getU_last_name()}${memberBean.getU_first_name()}" readonly onclick="alert('※변경할수 없습니다')"/>				
							<br>
									
								  <label>성별</label>
 									 <select name="u_gender" id="u_gender" >
										<option value="${memberBean.getU_gender()}" disabled>성별 선택</option>
										<option value="남자">남자</option>
										<option value="여자">여자</option> 
									</select>  	
									
							<br>  
								<label>비밀번호</label>
									<input type="password" maxlength="12" name="u_pwd" id="pwd1" value="${memberBean.getU_pwd()}" required>
							<br>
								 <label for="pw2">비밀번호 재확인</label>
									<input type="password" maxlength="12" name="pw2" id="pwd2" value="${memberBean.getU_pwd()}" onkeyup="checkPwd();" required>
									<p id="checkMsg"></p>
							<br> 
			
								<label for="email">이메일</label>
									<input type="email" name="u_email" id="u_email" value="${memberBean.getU_email()}" required>
							<br>
								  <label for="phone">휴대전화</label>
									<div class="row gtr-uniform">
										<div class="col-6 col-12-small">
											<input type="text" name="u_phone" id="u_phone" value="${memberBean.getU_phone()}" required>
										</div>
									</div>
							<br>
										<!-- <div class="col-6 col-12-small">	
											<input type="submit" value="인증번호 받기" class="primary"/>
										</div>
									</div>
											<label for="verification_code"></label>
											<input type="text" placeholder="인증번호를 입력하세요" required>  
							<br> -->
								<label for ="postal_code">우편번호</label>
									<div class="row gtr-uniform">
										<div class="col-6 col-12-small">
											<input type="text" name="u_zipcode" id="u_zipcode" value="${memberBean.getU_zipcode()}"  >
										</div>	
 										 <div class="col-6 col-12-small">	
											<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" style="display: inline;">
										</div>
									</div>		
							<br>		
								<label for ="address">주소</label>
									<input type="text" name="u_address" id="u_address" value="${memberBean.getU_address()}" >
							<br>
								<label for ="detail_address">상세주소</label>
									<input type="text" name="u_address_detail" id="u_address_detail" value="${memberBean.getU_address_detail()}">
							<br> 
               <!-- Content -->
               

              
                        
                                   
                        
                        <ul class="actions">
								<li style="margin:0 auto;">
									<input type="submit" value="수정하기" id="modifySubmit" onClick="location.href='MemberModify.me?U_id=U_id'"/>
								
									<input type="submit" value="되돌아가기" id="home" onClick="location.href='${pageContext.request.contextPath}/index.jsp'"/>
                    				
								</li>
							</ul>
                  </div>
						</div>
						
							</form>
							</article>
							</div>
					</section>
            </div>
         </section>

<script>

</script>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/app/member/join.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<%@ include file = "/app/member/joinFormJS.jsp" %>
<!-- Footer -->
<%@ include file = "/footer.jsp" %>