<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <!-- �ڹٺ��� ���� �±� -->
  <jsp:useBean id="login" class="com.web.LoginBean" scope="page"/>
  <jsp:setProperty name="login" property="*"/>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>�α��� ����</h2>
<%
	//if(login.checkUser()){
		//out.print("�α��� ����");
	//}else{
		//out.print("�α��� ����");
	//}
%>
<hr>

<h2>��� ȭ��</h2>
<jsp:getProperty property="id" name="login"/>
<jsp:getProperty property="pwd" name="login"/>

</body>
</html>