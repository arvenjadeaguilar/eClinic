<jq:jquery>
	$(document).ready(function(){
		$("#editForm").hide()
		$("#showOrHide").click(function(){
			$("#editForm").toggle('slow');
		});
	});
</jq:jquery>


<div id="search">
				
				
				 <!-- <g:form class="form-search" controller="home" action="searchprofile">
					<fieldset>
						<table>
							<tr>
								<td><input type="text" name="parameter" placeholder="Search ID Number..."/></td>
								
								<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
							
							</td>	
						</table>	
					</fieldset>
				
				</g:form> -->
				
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." /></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				
				
</div>
			
<div id="Student-Profile">
	<h1 align="left">Student Profile</h1>
	<hr/>
	<div  id="add-Student" style="height:400px; overflow-y:scroll;">
		<table>
			<g:if test="${result}">
			<tr>
				<td width="90%"></td>
				<td align="right"><button id="showOrHide">Edit</button></td>
			</tr>
			</g:if>
		</table>
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
		<table>
			<tr id="editForm">
				<g:formRemote name="editform" update="page-body" url="[controller: 'home', action:'editStudentInfo']">
					<td width="40%">
						New height:<small> <input type="text" name="feet" value="${feet}">(ft) 
						<input type="text" name="inch" value="${inch}">(in)</small>
					</td>
					<td width="40%">
						New weight: <input type="text" name="weight" value="${weight}"><small>(kgs)</small>
					</td>
						 <input type="hidden" name="idNumber" value="${parameter}">
					<td width="20%"><center><input type="submit" class="btn" data-loading-text="Loading..."></center></td>
				</g:formRemote>
			</tr>
				
		</table>
	
		
	
	</div>
</div>			