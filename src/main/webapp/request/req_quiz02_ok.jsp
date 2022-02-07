<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// post의 한글처리
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
double cm = Double.parseDouble(request.getParameter("cm"));
double kg = Double.parseDouble(request.getParameter("kg"));

double bmi = kg /(cm/100*cm/100);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	
BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행
화면에 이름, 키, 몸무게 BMI지수를 출력
	
if을 통해 BMI지수가 25이상 과체중, 18 이하라면 저체중, 나머지는 정상으로 출력 -->
<%=name %>님의 키: <%=cm %>cm <br>
<%=name %>님의 몸무게: <%=kg %>kg <br>
<%=name %>님의 BMI 지수는 <%= bmi %> 입니다. <br>
<%=name %>님은 

<%	if(bmi >= 25){ %>
	<b>과체중입니다.</b>
<%	} else if(bmi <=18){%>
	<b>저체중입니다.</b>
<%	} else {%>
	<b>정상입니다.</b>
<%	} %>
 
</body>
</html>