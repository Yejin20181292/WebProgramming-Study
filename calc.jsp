<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	//������� ����
	int num1, num2 = 0;
	int result = 0;
	String op = "";
	
	//�����ں� ó���� ���� �޼��� ����
	public int calc(){
		if(op.equals("+")){
			result = num1+num2;
		}else if(op.equals("-")){
			result = num1-num2;
		}else if(op.equals("*")){
			result = num1*num2;
		}else if(op.equals("/")){
			result = num1/num2;
		}
		return result;
	}
%>
<%
	if(request.getMethod().equals("POST")){
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div align=center>
		<h3>����</h3>
		<hr>
	
		<form name="form1" method="post">
			<input type="text" name="num1" width="200" size="5">
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2" width="200" size="5">
			<input type="submit" value="���" name="B1">
			<input type="reset" value="���" name="B2">
		</form>
		
		<hr>
		�����: <%=calc() %>
	</div>

</body>
</html>