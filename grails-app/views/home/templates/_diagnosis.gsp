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
	<div  id="add-diagnosis" style="height:400px; overflow-y:scroll;">
		
	<g:formRemote name="DiagnosisForm" update="page-body" url="[controller: 'home', action:'addDiagnosis']">
			<table>	
				<tr>
					<td>ID No.:  ${idNum} <input type="hidden" value="${idNum}" name="studentId"/></td>
				</tr>
				
				<tr>
					
					<td align="center" width="90%">Diagnosis: <textarea name="diagnosis" rows=10 cols=60></textarea></td>
				
				</tr>
				
				<tr>
					
					<td align="center" width="90%">Prescription: <textarea name="prescription" rows=10 cols=60></textarea></td>
				
				</tr>
				
				<tr>
					<td><button type="text" class="btn btn-primary" data-loading-text="Loading...">Add</button></td>
				</tr>
			</table>
					
	</g:formRemote>	
		
	</div>
</div>