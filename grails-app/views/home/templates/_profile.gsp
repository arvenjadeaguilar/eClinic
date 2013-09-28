<div id="search">
				
				
				<g:form class="form-search" controller="home" action="searchprofile">
					<fieldset>
						<table>
							<tr>
								<td><input type="text" name="parameter" placeholder="Search ID Number..."/></td>
								<!--<g:remoteLink action="graph" id="" update="page-body">-->
								<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td> 
								<!--</g:remoteLink>-->
							</td>	
						</table>	
					</fieldset>
				</g:form>
				
				
				
</div>

			
			
<div id="Student-Profile">
	<h1 align="left">Student Profile</h1>
	<hr/>
	<div  id="add-Student" style="height:400px; overflow-y:scroll;">
		
		<!--First Name : 
		<br>
		Last Name :
		<br>
		ID Number :
		<br>
		Course :
		<br>
		College :
		<br>
		Gender :-->
		
		<table>
			<g:each in="${result}" var="${results}">
			<tr>
				<td>First Name : ${results.first_name}</td>
				<td>Last Name : ${results.last_name}</td>
			</tr>
			<tr>
				<td>ID Number : ${results.id_number}</td>
				<td>College : ${results.college}</td>
			</tr>
			<tr>
				<td>Major : ${results.major}</td>
				<td>Gender : ${results.gender}</td>
			</tr>
			<tr>
				<td>Middle Name : ${results.middle_name}</td>
				<td>Birthday : ${results.birthday}</td>
			</tr>
			<tr>
				<td>Address : ${results.address}</td>
				<td>Blood Type : ${results.blood_type}</td>
			</tr>
			<tr>
				<td>Height :  ${results.height}</td>
				<td>Weight : ${results.weight}</td>
			</tr>
			<tr>
				<td>Enrolled : ${results.enrolled}</td>
			</tr>
			</g:each>
		</table>
		
		
	
	</div>
</div>			