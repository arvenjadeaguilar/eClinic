<style>
	tr:hover{
		background-color:white;
	}
	#diagnosis td{
		width:10%;
	}
	#pres{
		width:100%;
		height:200%;
	}
</style>

<div id="search">
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." /></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				
				
</div>
			
<div id="diagnosis">
	<h1 align="left">Diagnosis</h1>
	<hr/>
	<div  id="add-diagnosis" style="height:360px; overflow-y:scroll;">
		
	<g:formRemote name="DiagnosisForm" update="page-body" url="[controller: 'home', action:'addDiagnosis']">
			<table border='1'>	
				<tr>
					<td>ID No.:  ${idNum} <input type="hidden" value="${idNum}" name="studentId"/></td>
				</tr>
				
				<tr>
					
					<td align="center" width="90%">Diagnosis:</br> <input name="diagnosis"/></td>
				
				</tr>
				
				<tr>
					
					<td align="center" width="90%">Prescription: </br><textarea id="pres" name="prescription"></textarea></td>
				
				</tr>
				
				<tr>
					<td><button type="text" class="btn btn-primary" data-loading-text="Loading...">Add</button></td>
				</tr>
			</table>
					
	</g:formRemote>	
		
	</div>
</div>