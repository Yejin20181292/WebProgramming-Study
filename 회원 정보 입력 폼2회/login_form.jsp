<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>로그인 창</h2>
		<table border=1>
			<form action ="login.jsp" method="post">
				<tr>
					<td>아이디:</td>
					<td> <input type="text" name="id" size=10></td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td> <input type="text" name="pwd" size=10></td>
				</tr>
				<tr align=center>
					<td colspan=2><input type="submit" name="ok" value="확인"></td>
				</tr>
			</form>
		</table>
	</center>
</body>
</html>