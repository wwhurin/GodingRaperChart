<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id =(String)session.getAttribute("ID"); 
	
	String list[]=new String[6];
	
	String idtxt=id+".txt";

	String fileDir = "/WEB-INF/user-index/"; //파일을 보여줄 디렉토리
	String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로
	
	
	File f = new File(filePath); 
	File [] files = f.listFiles(); //파일의 리스트를 대입
	
	String filename="";
	
	String checkPath = "";
	BufferedReader br=null;
	
	for ( int i = 0; i < files.length; i++ ) {
	  if ( files[i].isFile()){ 
	  out.println(files[i].getName());
		    if(idtxt.equals(files[i].getName())){
		    	checkPath = application.getRealPath("/WEB-INF/user-index/"+id+".txt");
		    	br = new BufferedReader(new FileReader(checkPath));
		    	//out.println(checkPath);
		    }
	  } 
	}
	
	for(int i=0; i<6; i++){
		list[i]=br.readLine();
		//out.println(list[i]);
	}

%>

<center>
	<h3 style="color: white;"><%=id %>님의 마이페이지</h3>

<div class="content">
<%
	String cknum = request.getParameter("ck");

	if(cknum.equals("-1")){%>
		
			아직 투표를 하지 않으셨습니다.
			<button class="Btn" onclick="location.href='que.jsp'">투표하러 가기</button>
<% 
	}else{
		String result =(String)session.getAttribute("QRESULT");
	%>
	
		<%=id %>님의 고등 래퍼는 <b><%=result %></b>입니다! <br><br>
		
		<table style="width:50%; padding: 10px; margin:10px; text-align: center; font-size: 15px">
		<th>1번 문항</th>
		<th>2번 문항</th>
		<th>3번 문항</th>
		<tr>
			<td><%=list[0] %></td>
			<td><%=list[1] %></td>
			<td><%=list[2] %></td>
		</tr>
		<th>4번 문항</th>
		<th>5번 문항</th>
		<th>6번 문항</th>
		<tr>
			<td><%=list[3] %></td>
			<td><%=list[4] %></td>
			<td><%=list[5] %></td>
		</tr>
		</table>
	
		<%-- <h5>1번문항 </h5>
		<p><%=list[0] %></p>
		
		<h5>2번문항 </h5>
		<p><%=list[1] %></p>
		
		<h5>3번문항 </h5>
		<p><%=list[2] %></p>
		
		<h5>4번문항 </h5>
		<p><%=list[3] %></p>
		
		<h5>5번문항 </h5>
		<p><%=list[4] %></p>
		
		<h5>6번문항 </h5>
		<p><%=list[5] %></p> --%>
		
		<button class="Btn" value="공유하기" onclick="location.href='share.jsp'">공유하기</button>
	
		
<%
	}
%>
</div>
</center>