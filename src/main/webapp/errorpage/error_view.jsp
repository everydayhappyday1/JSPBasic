<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 예외페이지 명시 -->
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.box{
		height: 500px;
		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>
</head>
<body>
	<!-- 프로젝트 익트플로러에서 web-inf 폴더에서 web.xml 들어가보면 역이로 들어오라고 설정해둔 거슬 볼 수 있따. -->
	<!-- web.xml에  에러 종류별로 기술해둔 것 있음. 가서 확인하기. (주석처리해둠) -->
	<div class="box">
		<div><img src ="/JSPBasic/errorpage/JY.gif"></div>
		<span class="boxbox">예기치 못한 에러가 발생했습니다. </span>
	</div>
	
</body>
</html>