<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String major[]=request.getParameterValues("major");
	
//고유값 생성
	UUID uuid = UUID.randomUUID();
	out.println(uuid);
	String id=uuid.toString();
	
	String filePath = application.getRealPath("/WEB-INF/"+uuid+".txt");
	BufferedWriter br = new BufferedWriter(new FileWriter(filePath));
	out.println(filePath);
	PrintWriter pw = new PrintWriter(br, true);

	pw.printf(id); pw.println();
	
	for(String val:major){
		out.println(val);
		pw.printf(val); pw.println();
	}
	
	pw.printf("^");
	
	session.setAttribute("UUID", id);  
	
	response.sendRedirect("plus-book.jsp");
	
%>
