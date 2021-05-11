<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	//HTML 폼에서 username으로 전달된 값을 가지고 옴
	String username = request.getParameter("username");
	
	//username이 null이 아닌 경우 세션에 값을 저장
	if(username != null){
		session.setAttribute("user", username);
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h3> My Simple Twitter!! </h3>
		<hr>
		<form action="tweet.jsp" method="POST">
			<!-- 세션에 저장된 이름 출력 -->
			@<%=session.getAttribute("user") %>
			<input type="text" name="msg">
			<input type="submit" value="Tweet">
		</form>
		<hr>
		
		<div align="left">
			<ul><%
				//application 내장객체를 통해 msgs 이름으로 저장된 ArrayList를 가지고 옴
				ArrayList<String>msgs = 
				(ArrayList<String>)application.getAttribute("msgs");
			
				//msgs가 ㅜㅕㅣㅣdl dksls ruddndpaks ahrfhr cnffur
				if(msgs != null){
					for(String msg : msgs){
						out.println("<LI>" + msg + "</LI>");
					}
				}
			%></ul>
		</div>
	</div>
</body>
</html>