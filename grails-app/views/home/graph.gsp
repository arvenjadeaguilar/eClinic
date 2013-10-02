<%@ page import="org.codehaus.groovy.grails.plugins.ofchart.demo.DemoCharts" contentType="text/html;charset=UTF-8" %>
<html>
  <head>  
  
  </head>
  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>
    
    <br/><br/>
	
		<ofchart:chart name="demo-chart" url="${createLink(action:'BAR_CHART_3D')}" width="800" height="200"/>
			
		<ofchart:chart name="chart1" url="${createLink(action:'PIE_CHART')}" width="400" height="300"/>


  </body>
</html>