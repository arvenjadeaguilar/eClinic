<%@ page import="org.codehaus.groovy.grails.plugins.ofchart.demo.DemoCharts" contentType="text/html;charset=UTF-8" %>
<html>
  <head>  
	<style>
		#chartA{
			float:right;
		}
		#chartB{
			float:left;
		}
		
	</style>
  </head>
  

  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>
    
    <br/><br/>
	
		<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'displayRatioOnYear']">
		<table>
			<tr>
			
				<td><g:datePicker name="chosenDate" value="${new Date()}" precision="year" /></td>
				<td><g:submitButton name="submit" class="btn btn-primary" value="Submit"/></td>
			</tr>
		</table>
		</g:formRemote>
	
	
		<g:if test="${year}">
		<ofchart:chart name="chartA" url="${createLink(action:'BAR_CHART_3D',id:"${year}")}" width="450" height="200"/>
		<ofchart:chart name="chartB" url="${createLink(action:'PIE_CHART',id:"${year}")}" width="450" height="200"/>
		</g:if>
		
			
		

  </body>
</html>