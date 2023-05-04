<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%-- <%@ page isELIgnored = "true" %>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>수식계산하기</h1>
	<p>2+5=<%=2+5 %></p>
	<p>2+5=${ 2+5}</p>
	<br/>
	
	<p>2/5=<%=2/5 %></p>
	<p>2/5=${2/5}</p>
	<br/>
	
	<p>2<5=<%=2<5 %></p>
	<p>2<5=\${2<5}</p>  <!-- $앞에 \ 붙이면 문자로 출력됨 -->
	<br/>
	
	<p>${(1>3)? "A":"B"}</p>
	<br/>
	<p>${(1>2)||(1<2)}</p>
	<br/>
	<p>${10 }</p>
	<p>${99.99}</p>
	<p>${"ABC"}</p>
	<p>${false}</p>	
	</br>
	
	<p>헤더정보</p>
	<ul>
		<li><label>웹 브라우저 정보 : </label>
			${header["user-agent"]}
		</li>
		</ul>
		
		<p>HTTP 정보</p>
		<li><label>HTTP 정보 : </label>
		</li>	
	</ul>
	
	<p>Request 정보</p>
		<li><label>HTTP 메소드 : </label>
		${pageContext.request.method}
		</li>	
	</ul>
	
	<p>파라미터 값 얻기</p>
		<li>name 파라미터 : ${param.name }</li>
		<li>name 파라미터 값 공백 : ${empty param.name }</li>	
	</ul>
</body>
</html>