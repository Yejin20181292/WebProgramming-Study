<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>
    
<jsp:useBean id="member" class="com.web.MemberBean" scope="page"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�̸� : <jsp:getProperty name="member" property="name"/><br>
	���̵� : <jsp:getProperty name="member" property="userid"/><br>
	���� : <jsp:getProperty name="member" property="nickname"/><br>
	��й�ȣ : <jsp:getProperty name="member" property="pwd"/><br>
	�̸��� : <jsp:getProperty name="member" property="email"/><br>
	��ȭ��ȣ : <jsp:getProperty name="member" property="phone"/><br>
</body>
</html>