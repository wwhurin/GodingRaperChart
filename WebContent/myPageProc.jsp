<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = "";
	
	id = (String)session.getAttribute("ID");
	
	if((id==null||id.equals(""))){
		out.println("<script>alert('로그인 후 이용해주세요');</script>");
		pageContext.forward("Login.jsp");
	}
	
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
		    	out.println(checkPath);
		    }
	  } 
	}
	
	if(br==null||checkPath==null){
		pageContext.forward("MyPageForm.jsp?ck="+-1);
	}
	
	String line = "", result="";
	while(line!=null){
		line = br.readLine();
		if(line.equals("결과")){
			result = br.readLine();
			session.setAttribute("QRESULT", result);
			pageContext.forward("MyPageForm.jsp?ck="+1);
			break;
		}
	}
	
	
%>