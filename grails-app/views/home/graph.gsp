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
		#number{
			padding-top:1.5em;
			float:left;
		}
		#number2{
			padding-top:1.5em;
			padding-left:1em;
			float:left;
		}
		td:hover{
			background-color:#4EAEE5;
		}
		
	</style>
  </head>
  

  <ofchart:resources/>
  <g:javascript library="prototype"/>  
  <body>
    <h2>Open Graph</h2>
    
    <br/><br/>
	<div id="form" style="height:360px; overflow-y:scroll;">
		<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'displayRatioOnYear']">
		<table>
			<th>Graph Report by Year</th><th> 	</th>
			<tr>
			
				<td>
					<div id="number"> 
					<g:datePicker name="chosenDate" value="${new Date()}" precision="year" />
					</div>
					<div id="number2">
					<g:submitButton name="submit" class="btn btn-primary" value="Submit"/>
					</div>
				</td>

				

			</tr>
		</table>
		</g:formRemote>
	
	
		<g:if test="${year}">

		<ofchart:chart name="chartA" url="${createLink(action:'BAR_CHART_3D',id:"${year}")}" width="450" height="200"/>
		<ofchart:chart name="chartB" url="${createLink(action:'PIE_CHART',id:"${year}")}" width="450" height="200"/>

		</g:if>
		
		<g:formRemote name="myForm1" update="page-body" url="[controller: 'home', action:'displayRatioOnMonth']">
		<table>
			<th>Graph Report by Month</th><th> 	</th>
			<tr>
			
				<td>
					<div id="number">
					<select name="month"><g:render template="templates/month"/></select>
					</div>
					<div id="number2">
					<g:submitButton name="submit" class="btn btn-primary" value="Submit"/>
				</div>
				</td>
			</tr>
		</table>
		</g:formRemote>
		
		
		<g:if test="${month}">

		
		<ofchart:chart name="chartC" url="${createLink(action:'PIE_CHART_Month',id:"${month}")}" width="450" height="200"/>
		<ofchart:chart name="chartA" url="${createLink(action:'BAR_CHART_3D_Month',id:"${month}")}" width="450" height="200"/>
		</g:if>

	</div>	
		
  </body>
</html>