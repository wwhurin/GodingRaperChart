<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<center>
<div class="content">
	<form action="LoginProc.jsp" method="post">
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pwd" placeholder="비밀번호"><br><br>
		<input type="submit" class="Btn" value="로그인">
		<input type="button"  class="Btn" value="회원가입" onclick="location.href='insert.jsp'">
	</form>
</div>
</center>
