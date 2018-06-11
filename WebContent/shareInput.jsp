<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id= (String) session.getAttribute("ID");
	String result = (String) session.getAttribute("QRESULT");
	String context = "null";
	context = request.getParameter("context");

	String filePath = application.getRealPath("/WEB-INF/board.txt");
	out.println(filePath);
	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true));
	PrintWriter pw = new PrintWriter(bw, true);

	pw.printf("id/"); pw.println();
	pw.printf(id); pw.println();
	
	pw.printf("result/"); pw.println();
	pw.printf(result); pw.println();
	
	pw.printf("context/"); pw.println();
	pw.printf(context); pw.println();
	
	pw.println();
	
	response.sendRedirect("index.jsp");

%>