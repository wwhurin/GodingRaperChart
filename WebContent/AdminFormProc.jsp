<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%!
	String[] raper = {"빈첸", "이로한", "김하온", "윤진영", "조원우"};
	int[] cnt = new int[5];
	int sum=0;
%>



<center>
<div class="content">
	<h3>관리자 페이지</h3>
	<h4>회원 투표 정보</h4>
<%
	
	String fileDir = "/WEB-INF/user-index/"; //파일을 보여줄 디렉토리
	String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로
	
	
	File f = new File(filePath); 
	File [] files = f.listFiles(); //파일의 리스트를 대입
	
	String filename="";
	
	String checkPath = "";
	BufferedReader br=null;
	
	for ( int i = 0; i < files.length; i++ ) {
	  if ( files[i].isFile()){ 
	  	//out.println(files[i].getName());
	  	checkPath = application.getRealPath("/WEB-INF/user-index/"+files[i].getName());
	  	br = new BufferedReader(new FileReader(checkPath));
	  	%>
	  	<h5><%=files[i].getName().replace(".txt", "") %></h5>
	  	<table style="border:1px solid; width:50%; text-align: center;">
	  		<tr>
	  	<%
	  	for(int j=0; j<6; j++){
	  		String line=br.readLine();
	  		%>
	  		<td><%=line %><br></td>
	  		
	  <%	} %>
	  		</tr>
	  </table>
	<%  } 
	}


%>
<br><br>
<hr><br>
<h4>비회원 투표 정보</h4>

<%
	
	fileDir = "/WEB-INF/no-user/"; //파일을 보여줄 디렉토리
	filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로
	
	
	f = new File(filePath); 
	files = f.listFiles(); //파일의 리스트를 대입
	
	filename="";
	
	checkPath = "";
	br=null;
	
	for ( int i = 0; i < files.length; i++ ) {
	  if ( files[i].isFile()){ 
	  	//out.println(files[i].getName());
	  	checkPath = application.getRealPath("/WEB-INF/no-user/"+files[i].getName());
	  	br = new BufferedReader(new FileReader(checkPath));
	  	Date fileDate=new Date(files[i].lastModified());
	  	SimpleDateFormat formatD = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	  	String date = formatD.format(fileDate);
	  	%>
	  	<h5><%=files[i].getName().replace(".txt", "") %>&nbsp;&nbsp; | &nbsp;&nbsp;투표 시각 : <%=date %></h5> 
	  	<table style="border:1px solid; width:50%; text-align: center;">
	  		<tr>
	  	<%
	  	for(int j=0; j<6; j++){
	  		String line=br.readLine();
	  		%>
	  		<td><%=line %><br></td>
	  		
	  <%	} %>
	  		</tr>
	  </table>
	<%  } 
	}


%>

<br><br>
<hr>

<h4>현재 결과</h4>
<%
	filePath = application.getRealPath("/WEB-INF/result.txt");
	br = new BufferedReader(new FileReader(filePath));
	//out.println(filePath);
	for(int i=0; i<5; i++){
		cnt[i]=0;
	}
	
	int sumck=0;
	String test="";
	while(true){
		test=br.readLine();
		if(test==null) {sumck=sum; sum=0; break;}
		for(int i=0; i<5; i++){
			if(test.equals(raper[i])){
				cnt[i]++; 
			}
		}
		//out.println("test "+sum);
		sum++;
	}

%>
<form action="AdminReset.jsp">
	빈첸 :&nbsp;&nbsp; <input type="number" name="can1" value=<%=cnt[0] %> required><br>
	이로한 : <input type="number" name="can2" value=<%=cnt[1] %> required><br>
	김하온 : <input type="number" name="can3" value=<%=cnt[2] %> required><br>
	윤진영 : <input type="number" name="can4" value=<%=cnt[3] %> required><br>
	조원우 : <input type="number" name="can5" value=<%=cnt[4] %> required><br><br>
	<input type="submit" class="Btn" value="바꾸기">
</form>
</div>
</center>