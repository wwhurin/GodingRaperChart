<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String same=(String)session.getAttribute("same");
	String num=request.getParameter("count");
	
%>
<center>
<div class="content">
	<h3>투표결과</h3>
	<p>	
		당신과 어울리는 고등래퍼는 
		<%=same %>입니다!
	</p>
</div>
</center>