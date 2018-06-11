<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.net.URLEncoder"%>

    
<%!
	String[] raper = {"빈첸", "이로한", "김하온", "윤진영", "조원우"};
	int[] cnt = new int[5];
%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = "";
	id = (String)session.getAttribute("ID");
	String same=request.getParameter("same");
	if(same==null||same.equals("")){same = (String)session.getAttribute("same");}
	else{same=request.getParameter("same"); session.setAttribute("same", same);}
	out.println(same);
	
	if(!(id==null||id.equals(""))){
		String userPath="";
		BufferedWriter bw=null;
		PrintWriter pw = null;
		userPath = application.getRealPath("/WEB-INF/user-index/"+id+".txt");
		//out.println(userPath);
		bw = new BufferedWriter(new FileWriter(userPath, true));
		pw = new PrintWriter(bw, true);
		
		pw.println(); pw.print("결과");
		pw.println(); pw.print(same);
	}

	int sum=0;

	String resultPath = application.getRealPath("/WEB-INF/result.txt");
	out.println(resultPath);
	BufferedWriter bw2 = new BufferedWriter(new FileWriter(resultPath, true));
	PrintWriter pw2 = new PrintWriter(bw2, true);
	
	pw2.printf(same); pw2.println();
	
	String filePath = application.getRealPath("/WEB-INF/result.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	//out.println(filePath);
	
	String test="";
	while(true){
		test=br.readLine();
		if(test==null) break;
		for(int i=0; i<5; i++){
			if(test.equals(raper[i])){
				cnt[i]++; 
			}
		}
		out.println("test "+sum);
		sum++;
	}
	
	for(int i=0; i<5; i++){
		out.println(cnt[i]);
	}
	
	pageContext.forward("resultForm.jsp?count="+sum);

%>
