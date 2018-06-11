<%@page import="java.util.UUID"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.net.URLEncoder"%>

<%!
	String[] raper = {"빈첸", "이로한", "김하온", "윤진영", "조원우"};
	int[] cnt = new int[5];

%>

<%

response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");

	request.setCharacterEncoding("UTF-8");

	String id = (String)session.getAttribute("ID"); 

	String q1=request.getParameter("q1");
	String q2=request.getParameter("q2");
	String q3=request.getParameter("q3");
	String q4=request.getParameter("q4");
	String q5=request.getParameter("q5");
	String q6=request.getParameter("q6");
	
	for(int i=0; i<cnt.length; i++){
		cnt[i]=0;
	}
	
	int cknum=-1;
	
	String uuid="";
	
	String filePath="";
	BufferedWriter bw=null;
	PrintWriter pw = null;
	
	if((id==null||id.equals(""))){
		uuid = UUID.randomUUID().toString();
		filePath = application.getRealPath("/WEB-INF/no-user/"+uuid+".txt");
		//out.println(filePath);
		
		bw = new BufferedWriter(new FileWriter(filePath, true));
		pw = new PrintWriter(bw, true);
	}else{
		filePath = application.getRealPath("/WEB-INF/user-index/"+id+".txt");
		//out.println(filePath);
		bw = new BufferedWriter(new FileWriter(filePath, true));
		pw = new PrintWriter(bw, true);
	}
		
		cknum = getnum(q1); cnt[cknum]++;
		pw.printf(q1); pw.println();
		
		cknum = getnum(q2); cnt[cknum]++;
		pw.printf(q2); pw.println();
		
		cknum = getnum(q3); cnt[cknum]++;
		pw.printf(q3); pw.println();
		
		cknum = getnum(q4); cnt[cknum]++;
		pw.printf(q4); pw.println();
		
		cknum = getnum(q5); cnt[cknum]++;
		pw.printf(q5); pw.println();
		
		cknum = getnum(q6); cnt[cknum]++;
		pw.printf(q6); pw.println();
		
		int max=cnt[0], max2=-1, ck=0;
		
		for(int i=0; i<5; i++){
			for(int j=0; j<=i; j++){
				if(max<cnt[j]){
					max=cnt[j];
					ck=j;
				}
			}
		}
		
		for(int i=0; i<5; i++){
			if(cnt[ck]==cnt[i]&&(ck!=i)){
				max2=i;
			}
		}
		
		if(max2!=-1){
		//out.println("djk");
		%>
			<center>
			<h3>마음에 드는 이름을 고르세요</h3>
			<form action="result.jsp">
				<input type="radio" name="same" value=<%=raper[max2] %>><%=raper[max2] %>
				<input type="radio" name="same" value=<%=raper[ck] %>><%=raper[ck] %><br><br>
				<input class="Btn" type="submit" value="제출하기">
			</form>
			</center>
			
		<% 
		}else{
		pw.printf("결과"); pw.println();
		pw.printf(raper[ck]);
		
		out.println(q1); out.println(q2); out.println(q3);
		out.println(q4); out.println(q5); out.println(q6);
		
		out.println(raper[ck]);
		
		session.setAttribute("same", raper[ck]); 
		//raper[ck]="abc";
		response.sendRedirect("result.jsp?same="+raper[ck]);
		
		}
	

%>

<%!
	public int getnum(String name){
		for(int i=0; i<raper.length; i++){
			if(name.equals(raper[i])){
				return i;
			}
		}
		return -1;
	}
%>
