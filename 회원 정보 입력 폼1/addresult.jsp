<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="addr" class="com.web.AddrBean" scope="page"/>
<jsp:setProperty name="addr" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
	<h2>���ȭ��</h2>
	�̸�: <jsp:getProperty name="addr" property="name"/><br>
	��ȭ��ȣ: <jsp:getProperty name="addr" property="phone"/><br>
	�̸���: <jsp:getProperty name="addr" property="email"/><br>
	����: <jsp:getProperty name="addr" property="s"/><br>
</center>

</body>
</html>