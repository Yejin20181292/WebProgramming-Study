<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.util.ArrayList" %>
<%@page	import="java.util.*" 
	import="java.text.SimpleDateFormat"	%>

<%
	request.setCharacterEncoding("euc-kr");

	//HTML ������ ���޵� msg ���� ������ ��
	String msg = request.getParameter("msg");
	
	//���ǿ� ����� �α��� ����� �̸��� ������ ��
	Object username = session.getAttribute("user");
	
	//�޽��� ������ ���� application���� msgs�� ����� ArrayList ������ ��
	ArrayList<String> msgs =
	(ArrayList<String>)application.getAttribute("msgs");
	
	//null �� ��� ���ο� ArrayList ��ü�� ����
	if(msgs == null){
		msgs = new ArrayList<String>();
		//application �� ArrayList ����
		application.setAttribute("msgs", msgs);
	}
	
	//����� �̸�, �޽���, ��¥ ������ �����Ͽ� ArrayList�� �߰�
	Date date = new Date();
	SimpleDateFormat f =
			new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
	msgs.add(username + " :: " + msg + " , " + f.format(date));
	
	//��Ĺ �ܼ��� ���� �α�
	application.log(msg + "�߰���");
	
	//��� ȭ������ �����̷���
	response.sendRedirect("twitter_list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>