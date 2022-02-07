<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		.form-content {margin: 0 auto; width: 200px;} 
		.form-group {text-align: center;}
		.form-control {width: 100%; box-sizing: border-box; padding: 5px;}
		.form-btn {width: 100%; box-sizing: border-box; padding: 10px; background-color: pink;}
	</style>
</head>
<body>
	<!-- class 속성과 css 속성 -->
	<!-- 
		css: html을 예쁘게 꾸미는 작업
		     인라인시트 (태그에 속성을 단다), 내부스타일시트 (위쪽에 기술), 외부스타일시트(파일참고) 방법이 있다.
		     내부스타일시트, 외부스타일시트를 많이 사용한다.
		     
		     내부스타일시트: 
		     head 태그에 style 태그를 이용해서 css 문법을 기술하고, 태그의 선택자 개념을 이용하여 디자인을 적용하는 방법이다.	      			
	 -->
	<section>
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<h3>로그인폼</h3>
				<input type="text" name="id" placeholder="아이디" class="form-control"><br>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control"><br>
				<input type="submit" value="로그인" class="form-btn">
			</form>
		</div>
	</section>
</body>
</html>