<%@ page import="org.codehaus.groovy.grails.plugins.ofchart.demo.DemoCharts" contentType="text/html;charset=UTF-8" %>
<html>
  <head></head>
  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>
    
    <br/><br/>
	
		<ofchart:chart name="demo-chart" url="${createLink(action:'PIE_CHART')}" width="400" height="300"/>
	
  </body>
</html>