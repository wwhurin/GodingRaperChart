<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String[] raper = {"빈첸", "이로한", "김하온", "윤진영", "조원우"};
	int[] cnt = new int[5];
	int sum=0;
%>
    
<%
	request.setCharacterEncoding("UTF-8");

	/* String can1=request.getParameter("can1");
	out.println(can1);
 */
 
 	
	cnt[0] = Integer.parseInt(request.getParameter("can1"));
	cnt[1] = Integer.parseInt(request.getParameter("can2"));
	cnt[2] = Integer.parseInt(request.getParameter("can3"));
	cnt[3] = Integer.parseInt(request.getParameter("can4"));
	cnt[4] = Integer.parseInt(request.getParameter("can5"));

	String backupPath = application.getRealPath("/WEB-INF/result1.txt");
	/* BufferedReader backbr = new BufferedReader(new FileReader(backupPath));
	out.println(backupPath); */
	
	BufferedWriter bw = new BufferedWriter(new FileWriter(backupPath, true));
	PrintWriter pw = new PrintWriter(bw);
	
	String filePath = application.getRealPath("/WEB-INF/result.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	out.println(filePath);
	
	pw.printf("");
	String line=" ";
	while(true){
		line=br.readLine(); out.println(line);
		if(line==null)break;
		else {
			pw.append(line);
			pw.println();
		}
	}
	
	bw = new BufferedWriter(new FileWriter(filePath));
	pw = new PrintWriter(bw);
	
	BufferedWriter bw2 = new BufferedWriter(new FileWriter(filePath, true));
	PrintWriter pw2 = new PrintWriter(bw2, true);
	
	pw.println();
	for(int i=0; i<5; i++){
		for(int j=0; j<cnt[i]; j++){
			pw2.printf(raper[i]);
			pw2.println();
		}
	}
	
	response.sendRedirect("AdminForm.jsp");

%>