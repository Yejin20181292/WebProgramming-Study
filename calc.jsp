<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	//멤버변수 선언
	int num1, num2 = 0;
	int result = 0;
	String op = "";
	
	//연산자별 처리를 위한 메서드 선언
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
		<h3>계산기</h3>
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
			<input type="submit" value="계산" name="B1">
			<input type="reset" value="취소" name="B2">
		</form>
		
		<hr>
		계산결과: <%=calc() %>
	</div>

</body>
</html>