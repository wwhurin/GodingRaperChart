<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.getParameter("UTF-8");

	String uuid = (String)session.getAttribute("UUID");
	
	String filePath = application.getRealPath("/WEB-INF/"+uuid+".txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	
	out.println(uuid);
	
	br.readLine();
	
	String major="";
	String test="";
	 while(true){
		 test=br.readLine();
		 if(test.equals("^")) break;
		 major+=test+"/"; 
	}
	 
	out.println(major);
	
	String[] result = major.split("/");
	
%>

	<%
		for(int i=0; i<result.length; i++){ %>
			<a href="input.jsp?uuid=<%=uuid %>&name=<%=result[i] %>" target="_blank"><%=result[i] %> 추가하기</a>
		<%	
		}
	
	%>