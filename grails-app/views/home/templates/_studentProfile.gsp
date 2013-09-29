<div id="search">
				
				<g:form >
					<fieldset>
						<table>
							<tr>
								<td><input type="text" name="studentSearch" placeholder="ID No. / Last Name"/></td>
								<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td> 
							</td>	
						</table>	
					</fieldset>
				</g:form>
				
</div>

			
			
<div id="Student-Profile">
	<h1 align="left">Student Information</h1>
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
			<tr>
				<td>First Name : ${student.firstName} </td>
				<td>Last Name : ${student.lastName}</td>
			</tr>
			<tr>
				<td>ID Number : ${student.idNumber}</td>
				<td>Course : ${student.major}</td>
			</tr>
			<tr>
				<td>College : ${student.college}</td>
				<td>Gender : ${student.gender}</td>
			</tr>
		</table>
		
	
	</div>
</div>			