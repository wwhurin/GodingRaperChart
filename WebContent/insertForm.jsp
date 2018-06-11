<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 폽</title>
</head>
<body>
<center>
	<div class="content">
	<b>회원 가입</b><br>
	
	<form action="insertProc.jsp">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd"><br>
	비밀번호 확인 : <input type="password"><br>
	
	<input type="submit" class="Btn" value="회원가입">
	</form>
	</div>
</center>
</body>
</html>