<%@ page import="org.codehaus.groovy.grails.plugins.ofchart.demo.DemoCharts" contentType="text/html;charset=UTF-8" %>
<html>
  <head>  
  
  </head>
  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>

		
			<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'displayRatioOnYear']">
			<table>
				<tr>
				
					<td><g:datePicker name="chosenDate" value="${new Date()}" precision="year" /></td>
					<td><g:submitButton name="submit" value="Submit"/></td>
				</tr>
			</table>
			</g:formRemote>
		
		
			<g:if test="${year}">
			<ofchart:chart name="chart1" url="${createLink(action:'PIE_CHART',id:"${year}")}" width="400" height="300"/>
			<ofchart:chart name="chart2" url="${createLink(action:'PIE_CHART',id:"${year}")}" width="400" height="300"/>
			</g:if>
  </body>
</html>