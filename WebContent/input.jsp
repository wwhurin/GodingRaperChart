<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>

 <%
 	request.getParameter("UTF-8");
 
 	
 	String id=request.getParameter("uuid");
 	String name=request.getParameter("name");
 	
 %>
 
 <script>
 var i=1;
 	function plus(){
 		var btn = document.getElementById("button1");
 		var sub = document.getElementById("sub");
 		
 		var hr = document.createElement( 'hr' );
 		//document.body.appendChild( hr );
 		$(btn).before("<hr><br>");
 		//hr.insertBefore(btn);
 		 
 		var theForm = document.forms['form01'];
 		var input   = document.createElement('input');
 		var textarea = document.createElement('textarea');

 		input.type   = 'text';
 		input.name  = 'bookname'+i;
 		input.placeholder = "책 제목을 입력하세요";
 		
 		textarea.name='bookin'+i;
 		textarea.cols="50";
 		textarea.rows="10";
 		textarea.placeholder="책의 한 문장을 적어주세요";
 		
 		theForm.appendChild(input);
 		theForm.appendChild(textarea);
 		
 		$(btn).before(input); $(btn).before("<br><br>");
 		$(btn).before(textarea);  $(btn).before("<br>");
 		
 		$(btn).before("<br>");
 		return false;
	
 	}
 </script>
 
 <h1><%=name %> 추가하기</h1>
 
 <form action="inputproc.jsp?uuid=<%=id %>&name=<%=name %>" method="post" name="form01">
 	<input type="text" name="bookname0" placeholder="책 제목을 입력하세요."><br><br>
 	<textarea name="bookin0" cols="50" rows="10" placeholder="책의 한 문장을 적어주세요"></textarea>
 	<br><br>
 	<button id="button1" onclick="plus(); return false;">추가하기</button>
 	<input id="sub" type="submit" value="제출하기">
 </form>
 
 