<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form태그 내용을 req_quiz_ok페이지로 post 방시긍로 전달하시오
		ok 페이지에서는 값을 받아서 화면에서 출력하시오. -->
	<form action="req_quiz_ok.jsp" method="post">
		<h3>회원가입양식</h3>
		<hr>
		아이디: <input type="text" name="idd" size="10" placeholder="8글자"><br>
		비밀번호: <input type="password" name="pww" size="10" placeholder="5글자"><br>
		
		관심분야
		<!-- checkbox, radio 버튼은 name 속성으로 하나로 묶어줘야 함 (그룹화) -->
		<input type ="checkbox" name="inter" value="JAVA"> JAVA
		<input type ="checkbox" name="inter" value="JSP"> JSP
		<input type ="checkbox" name="inter" value="DB"> DB
		<input type ="checkbox" name="inter" value="SPRING"> SPRING
		<input type ="checkbox" name="inter" value="응용소프트웨어"> 응용소프트웨어
		
		<br>
		관심분야
		<input type ="radio" name="interrr" value="경영학과"> 경영학과
		<input type ="radio" name="interrr" value="컴퓨터공학과"> 컴퓨터공학과
		<input type ="radio" name="interrr" value="수학과"> 수학과
		<input type ="radio" name="interrr" value="기계공학과"> 기계공학과
		
		
		
		<br>
		<!-- 목록처럼 나온다. -->
		<select name = "city"> 
			<option  value="서울시">서울시</option>
			<option  value="용인시">용인시</option>
			<option  value="부산시">부산시</option>
			<option  value="성남시">성남시</option>
		</select>
		
		
		
		<br>
		자신을&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소개해보세요!
		<textarea name="looong" row="5" col="30"></textarea>

		
		<br>
		<input type="submit" value="전송하기">
		<input type="reset" value="초기화">
		<input type="file" value="파일첨부">
	</form>
</body>
</html>