<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body onLoad="parent.resizeTo(600,720)">
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
  
    
<%
	request.setCharacterEncoding("UTF-8");
 

	String filePath = application.getRealPath("/WEB-INF/board.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	//out.println(filePath);
	
	String line = "id/";
	String[] getcon = new String [3];
	String ck="id/";
	while(true){ 
		line=br.readLine(); //out.println(line);
		if(line==null)break;
		if(line.equals(ck)){
			getcon[0]=br.readLine(); br.readLine();
			getcon[1]=br.readLine(); br.readLine();
			getcon[2]=br.readLine(); br.readLine();
	%>
	<ul>
		<li><%=getcon[0] %></li>
		<li class="re"><%=getcon[0]%>님의 고등래퍼는 <%=getcon[1] %>입니다!</li>
		<li><%=getcon[2] %></li>
	</ul>
	<hr>
		
<%	}
}
%>
</body>