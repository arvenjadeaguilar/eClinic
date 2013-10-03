<style>
	#diagnosis td{
		width:10%;
	}
	#pres{
		width:95%;
	}
	
</style>




<div id="search">
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." required="true"/></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				
				
</div>

			
<div id="diagnosis">
	<h1 align="left">Diagnosis</h1>
	<hr/>
	<div  id="add-diagnosis" style="height:360px; overflow-y:scroll;">
				
				<g:formRemote name="Back" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<input type="hidden" name="parameter" value="${idNum}">
					<input type="submit" class="btn btn-primary" value="<<< BACK"> 
				</g:formRemote>	
				
				<g:formRemote name="DiagnosisForm" update="page-body" url="[controller: 'home', action:'addDiagnosis']">		
				<br/>
				Diagnosis:</br> <input type="hidden" value="${idNum}" name="studentId"/> <input id="diag" type="text" name="diagnosis" required="true"/>
				<br/>
				Prescription: </br><textarea style="height: 130px;" id="pres" name="prescription" required="true"></textarea>
				<br/>
	
				<g:actionSubmit id="suway" class="btn btn-primary" value="Add" onclick="return confirm('Are you sure you want to add?')" />
			
					
	</g:formRemote>	
		
	</div>
</div>