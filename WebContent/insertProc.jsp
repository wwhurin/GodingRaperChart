<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

try{
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	PrintWriter writer = null;
	
		String filePath = application.getRealPath("/WEB-INF/user.txt");
		out.println(filePath);
		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true));
		PrintWriter pw = new PrintWriter(bw, true);
		
		pw.printf("id/"); pw.println(); pw.printf(id); pw.println();
		pw.printf("pwd/"); pw.println(); pw.printf(pwd);
		
		pw.println();
		
		pw.flush();
		
		response.sendRedirect("Login.jsp");
	}catch(Exception e){
		out.println("오류발생");
	}

%>