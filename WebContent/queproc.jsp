 <%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
var x;

window.onload=function(){
	x=document.getElementsByClassName("mySlides");
	for(i=1; i<x.length; i++){
		x[i].style.display="none";
	}
}

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

<style>
	.back{
		width:50%;
		height:100%;
		background-color: rgb(255, 255, 255, 0.5);
		border-radius: 10px;
	}
	
	.w3-btn-floating{
		-moz-border-radius: 70px; 
		-webkit-border-radius: 70px; 
		border-radius: 70px;
		background-color:black;
		color:white;
		;
	}
	
	.w3-btn-floating:hover{
		cursor: pointer
	}
</style>
    
   <!--  <form> -->
    
<%-- <%
	request.getParameter("UTF-8");

	String code = request.getParameter("code");
	
	String fileDir = "/WEB-INF"; //파일을 보여줄 디렉토리
	  String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로


	  File f = new File(filePath); 
	  File [] files = f.listFiles(); //파일의 리스트를 대입
	
	  String filename="";
	  for ( int i = 0; i < files.length; i++ ) {
	    if ( files[i].isFile()){ 
	    out.println(files[i].getName());
		    if(code.equals(files[i].getName())){
		    	filename=code;
		    }
	    } 
	  }
	  
	String path = application.getRealPath("/WEB-INF/"+code+".txt");
	BufferedReader br = new BufferedReader(new FileReader(path));
	
	BufferedWriter bw = new BufferedWriter(new FileWriter(path, true));
	PrintWriter pw = new PrintWriter(bw, true);
	
	out.println(path);
	String line="";
	while(true){
		line= br.readLine();
		if(line.equals("제목!")){ %>
			<input type="radio" name="title"> <%=br.readLine() %><br>
			<% 
		}else if(line.equals("^")){
			break;
		}
	}
	%> --%>

<!-- </form> -->

<center>
<div class="back">
<form action="pue-input.jsp" method="post"> 

<div class="w3-content" style="max-width:100%;position:relative">
	<br>
	<div class="mySlides"style="width:100%; height: 100%">
		<h3>마음에 드는 가사를 골라주세요 ①</h3>
		<input type="radio" value="윤진영" name="q1" required> 오늘따라 저 달을 가리는 구름이 많아진듯해서 나도 그걸 아는 듯 가만 앉아 숫자를 셌어<br>
		<input type="radio" value="빈첸" name="q1"> 미안. 근데 난 원래 이런 놈이라 너에겐 예쁜 꽃이 나에겐 독초밖에 안돼<br> 
		<input type="radio" value="이로한" name="q1"> 간절함이 없는 놈들의 기회를 뺏고자 시작한 하얀 방 속의 고문이 날 키웠다<br>
		<input type="radio" value="김하온" name="q1"> 영감을 주는 동시에 대부분을 가져갔으니 등가교환이라 칭하기엔 저울은 많이 기울었지<br>
		<input type="radio" value="조원우" name="q1"> 12시 반이 되면 깜비 데리고 나가는 산책<br>
	</div>
	
	<div class="mySlides" style="width:100%">
		<h3>마음에 드는 가사를 골라주세요 ②</h3>
		<input type="radio" value="빈첸" name="q2" required> 난 기대치를 두 배로 올려 그래야 상실감이 거대해지니까<br> 
		<input type="radio" value="이로한" name="q2"> 누구에게나 와닿는 것들을 만드는 것 그것을 내 사명이라 여겨<br>
		<input type="radio" value="김하온" name="q2"> 마음이 붕 떠 여긴 밑도 위도 윈도우도 없어<br>
		<input type="radio" value="윤진영" name="q2"> 마주한 이 두 개의 달 두 개의 말 두 사람의 두 감정이 불이 붙어 두개로 나눠진 날 <br>
		<input type="radio" value="조원우" name="q2"> 많은 사람들의 꿈깨란 막되먹은 문제의 시선들에 눈 떼<br>
	</div>
	
	<div class="mySlides" style="width:100%">
	<h3>마음에 드는 비트를 골라주세요</h3>
		<input type="radio" value="빈첸" name="q3" required><audio controls="controls" src="audio/이병재.mp3" type="audio/mp3"></audio><br> 
		<input type="radio" value="김하온" name="q3"><audio controls="controls" src="audio/김하온.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="이로한" name="q3"><audio controls="controls" src="audio/이로한.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="윤진영" name="q3"><audio controls="controls" src="audio/윤진영.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="조원우" name="q3"><audio controls="controls" src="audio/조원우.mp3" type="audio/mp3"></audio><br>
	</div>
	
	<div class="mySlides" style="width:100%">
	<h3>마음에 드는 제목을 골라주세요</h3>
		<input type="radio" value="이로한" name="q4" required> 지향<br>
		<input type="radio" value="김하온" name="q4"> Adios<br>
		<input type="radio" value="조원우" name="q4"> What Time<br>
		<input type="radio" value="윤진영" name="q4"> YAHO<br>
		<input type="radio" value="빈첸" name="q4"> 탓<br> 
	</div>
	
	<div class="mySlides" style="width:100%">
	<h3>마음에 드는 색을 골라주세요</h3>
		<input type="radio" value="조원우" name="q5" required> 하얀색<br>
		<input type="radio" value="빈첸" name="q5"> 검정색<br> 
		<input type="radio" value="김하온" name="q5"> 노란색<br>
		<input type="radio" value="이로한" name="q5"> 빨강색<br>
		<input type="radio" value="윤진영" name="q5"> 파란색<br>
	</div>
	
	<div class="mySlides" style="width:100%">
	<h3>마음에 드는 목소리를 골라주세요.</h3>
		<input type="radio" value="조원우" name="q6" required><audio controls="controls" src="audio/원우-목소리.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="빈첸" name="q6"><audio controls="controls" src="audio/병재-목소리.mp3" type="audio/mp3"></audio><br> 
		<input type="radio" value="이로한" name="q6"><audio controls="controls" src="audio/로한-목소리.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="윤진영" name="q6"><audio controls="controls" src="audio/진영-목소리.mp3" type="audio/mp3"></audio><br>
		<input type="radio" value="김하온" name="q6"><audio controls="controls" src="audio/하온-목소리.mp3" type="audio/mp3"></audio><br>
	</div>

</div>
<br>
<a class="w3-btn-floating" onclick="plusDivs(-1)">&nbsp;&nbsp;❮&nbsp;&nbsp;</a>
<a class="w3-btn-floating" onclick="plusDivs(1)">&nbsp;&nbsp;❯&nbsp;&nbsp;</a>
<br><br>
<input type="submit" class ="Btn" value="제출하기">
<br><br>
</form>
</div>
</center>
