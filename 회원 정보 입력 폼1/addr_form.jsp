<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>ȸ�� ���� �Է� ��</h2>
<form method="post" action="addresult.jsp">
	<table>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<select name=s>
					<option>��</option>
					<option>��</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="Ȯ��"></td>
			<td><input type="reset" value="���"></td>
		</tr>
	</table>
</form>
</body>
</html>