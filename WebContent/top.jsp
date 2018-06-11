<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	String id="";
    	id = (String)session.getAttribute("ID");
    %>
    
<style>
body{
	width:100%;
	margin:0px;
	padding:0px;
}
#navbar {
  overflow: hidden;
  /* background-color: #ffffff; */
 /*  border-top : 1px solid #005500;
  border-bottom:  1px solid #005500; */
}

#navbar a {
  float: center;
  display: block;
  color: #ffffff;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 15px;
  margin:0px 20px;
}

#navbar a:hover {
  /* background-color: #ddd; */
  color: #ffffff;
  font-weight:bolder; 
}

#navbar a.active {
 /*  background-color: #005500; */
	 color: #ffffff;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

ul li{
	display: inline-block;
}

</style>
<center>
<%-- <div id="navbar">
  <a class="active" href="javascript:void(0)">메인 화면</a>
  <a href="que.jsp">설문 하러 가기</a>
  <% if((id==null||id.equals(""))){   %>
  	<a href="Login.jsp">로그인</a>
  	<a href="insert.jsp">회원가입</a>
  	<%}else {%>
  	<a href="MyPage.jsp">마이페이지</a>
  	<a href="Logout.jsp">로그아웃</a>
  	<%} %>
</div>
 --%>
<div id="navbar">
	<ul>
		<li><a class="active" href="index.jsp">메인 화면</a></li>
		<li><a href="que.jsp">설문 하러 가기</a></li>
		<% if((id==null||id.equals(""))){   %>
	  	<li><a href="Login.jsp">로그인</a></li>
	  	<li><a href="insert.jsp">회원가입</a></li>
	  	<%}else {%>
	  	<li><a href="MyPage.jsp">마이페이지</a></li>
	  	<li><a href="Logout.jsp">로그아웃</a></li>
	  	<%} %>
	</ul>
</div>
</center>
<script>
/* window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
} */
</script>
