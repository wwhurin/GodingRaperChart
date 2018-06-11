<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	String filePath = application.getRealPath("/WEB-INF/user.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	out.println(filePath);
	//String str = br.readLine();
	String str="";
	
	while(true){
		str = br.readLine();
		if(str==null){
			break;
		}else if(str.equals("id/")){ out.println(str);
			str=br.readLine();
			if(str.equals(id)){out.println(str);
				str=br.readLine();
				if(str.equals("pwd/")){
					str=br.readLine();
					if(str.equals(pwd)){
						session.setAttribute("ID", id); 
						session.setAttribute("PWD", pwd);  
						pageContext.forward("index.jsp");
					}
				}
			}
		}
	}
	
	
	pageContext.forward("NoLogin.jsp");
%>
