<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	//HTML ������ username���� ���޵� ���� ������ ��
	String username = request.getParameter("username");
	
	//username�� null�� �ƴ� ��� ���ǿ� ���� ����
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
			<!-- ���ǿ� ����� �̸� ��� -->
			@<%=session.getAttribute("user") %>
			<input type="text" name="msg">
			<input type="submit" value="Tweet">
		</form>
		<hr>
		
		<div align="left">
			<ul><%
				//application ���尴ü�� ���� msgs �̸����� ����� ArrayList�� ������ ��
				ArrayList<String>msgs = 
				(ArrayList<String>)application.getAttribute("msgs");
			
				//msgs�� �̤ŤӤ�dl dksls ruddndpaks ahrfhr cnffur
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