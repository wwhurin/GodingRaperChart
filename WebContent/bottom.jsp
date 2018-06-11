<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<center>
<%-- <%
	String id = "";
	id = (String)session.getAttribute("ID"); 
	if(!(id==null||id.equals(""))){   %>
	 <button class="Btn" onclick="location.href='Logout.jsp'">로그아웃</button>
			<% } else { %>
	<button class="Btn" onclick="location.href='Login.jsp'">로그인</button>
<% } %> --%>

<button class="Btn" onclick="location.href='Admin.jsp'">관리자 페이지</button>
</center>