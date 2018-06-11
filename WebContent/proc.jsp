<%
	String pagename = request.getParameter("CONTENT");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body background="img/bg_sub.jpg" style="background-repeat: no-repeat; background-size: cover;">
<style>

body{
	background: url(img/bg_sub.jpg) no-repeat center center fixed; 
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	 background-color: rgba( 0, 0, 0, 0.5 );
}

.Btn {
	border: none;
    color: white;
    padding: 10px 27px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.Btn:hover {
    background-color: #555555;
    color: white;
}

.content{
	width:50%;
	height:100%;
	background-color: rgba( 255, 255, 255, 0.5 );
	border-radius: 10px;
}

/* table{
	 background-color: rgba( 0, 0, 0, 0.5 );
	 maring:20px;
} */
</style>

<table border=0 width=100% cellpadding=2 cellspacing=0>
<tr>
	<td>
		 <center><a href="index.jsp"><img id="logo" src="img/logo.png"></a></center> 
	</td>
</tr>
<tr>
	<td>
		<center><jsp:include page="top.jsp"/></center>
	</td>
</tr>
<tr >
	<td style="with:100%; height: 70%">
		<jsp:include page="<%=pagename%>" flush="false"/>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>

</table>


</body>
</html>