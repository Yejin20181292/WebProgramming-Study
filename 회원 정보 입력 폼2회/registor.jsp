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
		<form action ="/t052101/paramServlet" method="get">
			아이디: <input type="text" name="id" size=10><br>
			비밀번호: <input type="text" name="pwd" size=10><br><br>
			<input type="submit" name="ok" value="확인">
			<input type="reset" name="re" value="취소">
		</form>
	</center>
</body>
</html>