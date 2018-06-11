<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String result = (String) session.getAttribute("QRESULT");
	String id = (String) session.getAttribute("ID");
%>
    
<style>

li{
	display:block
}

.re{
	display: inline-block;
	padding: 10px;
    margin: 5px;
    border: 1px solid #efefef;
    font-size: 12px;
    /* cursor: pointer; */
}
</style>

<center>
<div class="content">
<form action="shareInput.jsp">
	<ul>
		<li><%=id %></li><br>
		<li class="re"><%=id %>의 고등래퍼는 <%=result %>입니다!</li><br>
		<li><textarea name ="context" rows="10" cols="50" placeholder="내용을 작성해주세요. 작성하지 않아도 됩니다."></textarea></li><br>
	</ul>
	<input class="Btn" type="submit" value="작성하기">&nbsp;&nbsp;&nbsp;
	<input class="Btn" type="reset" value="내용 지우기">
</form>
</div>
</center>