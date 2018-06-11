<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
function ck(){
	var pw =  document.getElementById("adminpw").value;
	if(pw=='1234'){
		location.href="AdminForm.jsp";
	}else{
		document.getElementById("adminpw").value="";
		alert("관리자가 아닙니다.");
	}
}
	
</script>
<center>
<div class="content">
	<h3>관리자 비밀번호를 입력해주세요</h3>
	<input type="password" id="adminpw" placeholder="관리자만 들어올 수 있습니다."><br><br>
	<button class="Btn" id="submitAdmin" onclick="ck();">로그인</button>
</div>
</center>