<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String id = "";

id = (String)session.getAttribute("ID");

String idtxt=id+".txt";

if(!(id==null||id.equals(""))){
	String fileDir = "/WEB-INF/user-index/"; //파일을 보여줄 디렉토리
	String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로
	
	
	File f = new File(filePath); 
	File [] files = f.listFiles(); //파일의 리스트를 대입
	
	String filename="";
	for ( int i = 0; i < files.length; i++ ) {
	  if ( files[i].isFile()){ 
	  out.println(files[i].getName());
		    if(idtxt.equals(files[i].getName())){
		    	response.sendRedirect("que-Back.jsp");
		    }
	  } 
	}
}
%>
