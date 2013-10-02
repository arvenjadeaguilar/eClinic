<%@ page import="org.codehaus.groovy.grails.plugins.ofchart.demo.DemoCharts" contentType="text/html;charset=UTF-8" %>
<html>
  <head>  
  
  </head>
  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>
    
    <br/><br/>
<<<<<<< HEAD
	<center>
		<ofchart:chart name="demo-chart" url="${createLink(action:'BAR_CHART_3D')}" width="800" height="200"/>
	</center>
=======
		
			<ofchart:chart name="chart1" url="${createLink(action:'PIE_CHART')}" width="400" height="300"/>
			<ofchart:chart name="chart2" url="${createLink(action:'PIE_CHART')}" width="400" height="300"/>
		
>>>>>>> 8129fbbec1697464111714983f08d568ea3631b0
  </body>
</html>