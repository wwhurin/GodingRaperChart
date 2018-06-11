<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	#chart_div{
		width:50%;
		height:100%;
		background-color: rgb(255, 255, 255, 0.5);
		border-radius: 10px;
	}
	
	h3{
		color:white;
	}
	
	#board:link{
		text-decoration: none;
		color:white;
	}
	
	#board:horver{
		font-weight: bolder;
	}
	
</style>
    
<%!
	String[] raper = {"빈첸", "이로한", "김하온", "윤진영", "조원우"};
	int[] cnt = new int[5];
	int sum=0;
%>
    
<%
	String filePath = application.getRealPath("/WEB-INF/result.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
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
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 <script>
 google.charts.load('current', {packages: ['corechart', 'bar']});
// google.charts.setOnLoadCallback(drawBasic);

 window.onload= function drawBasic() {

    init();
      
     }
 function init() {
	 
	   var data = google.visualization.arrayToDataTable([
	         ['', '',{ role: 'style' }],
	         ['빈첸', <%= cnt[0]%>, 'black'],
	         ['이로한', <%= cnt[1]%>, 'red'],
	         ['김하온', <%= cnt[2]%>, 'yellow'],
	         ['윤진영', <%= cnt[3]%>, 'skyblue'],
	         ['조원우', <%= cnt[4]%>, '#FFFFFF']
	       ]);

	       var options = {
	         //title: '고등래퍼 블라인드 투표',
	         chartArea: {
	        	 width: '70%', 
	        	 height:'100%',
	        	 },
	         hAxis: {
	           title: '현재 투표 수',
	           minValue: 0,
	         },
	         vAxis: {
	           title: '',
	           minValue:0, 
	           maxValue:1000
	         },
	         'backgroundColor': 'transparent',
	       };

	       var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
	       //var button = document.getElementById('b1');
	       chart.draw(data, options);
	       
 }
 </script>


<!-- ----------------------------------------------- -->
<center class="cn">
	<h3>고등래퍼 현재 투표 결과</h3>
	 <div id="chart_div"></div><br><br>
	<%
	String id = "";
	id = (String)session.getAttribute("ID"); 
	if(!(id==null||id.equals(""))){   %>
	<%=id %>을 환영합니다!<br>
	 <button class="Btn" onclick="location.href='queCheck.jsp'">설문하기</button><br>
			<% } else { %>
	<button class="Btn" onclick="location.href='Login.jsp'">로그인</button>&nbsp;&nbsp;&nbsp;
	<button class="Btn" onclick="location.href='que.jsp'">설문하기</button><br><br>
	<% } %>
	
	<a id="board" href="javascript:void(window.open('showShareProc.jsp', '댓글','width=100px, height=100px'))">댓글보기</a> <br><br><br>
	
</center>