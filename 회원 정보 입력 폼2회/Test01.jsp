<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="obj" class="com.web.MemberBean" scope="page"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="obj" property="name"/>

<hr>
<jsp:setProperty name="obj" property="name" value="aaa"/>
<jsp:getProperty name="obj" property="name"/>


<!-- <%=obj.getName() %> -->

<jsp:setProperty name="obj" property="email" value="se8483@namer.com"/>
<jsp:getProperty name="obj" property="email"/>


</body>
</html>