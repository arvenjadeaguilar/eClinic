<style>
	#showHideTable{
		border:2px dashed #6497b1;
		width:65%;
	}
	#sub1{
		vertical-align:middle;
	}
	#sub2{
		vertical-align:middle;
	}
	#editForm{
		background-color:#b1dafb;
	}
	#inputForm{
		width:20px;
		height:16px;
	}
	tr:hover{
		background-color:#82CAFA;
		
	}
	#editBtn{
		float:right;
		margin-right:1%:
	}
	
	#prescriptionBtn{
		float:right;
		margin-right:3%;
	}
	#listOfDiag{
		margin-top:-38px;
	}
	#medHist:hover{
		background-color:#2B60DE;	
	
	}
	#medHist tr:hover{
		background-color:#2B60DE;	
	
	}
	
	tr hr{
	
		background-color:#000000;
	}
	#hr{
		background-color:#000000;
		width:100%;
	}
	#option{
		margin-top:-16px;
	}
</style>
<jq:jquery>
	$(document).ready(function(){
		$("#hide").hide();
		$("#listOfDiag").hide();
		$("#editForm").hide()
		$("#showOrHide").click(function(){
			$("#editForm").toggle('slow');
			$("#option").toggle('slow');
		});
	});
</jq:jquery>

<script>
	
	$("#show").click(function(){
		$("#listOfDiag").show("slow");
		$("#studentProf").hide("slow");
		$("#show").hide();
		$("#hide").show();
	});
	$("#hide").click(function(){
		$("#listOfDiag").hide("slow");
		$("#studentProf").show("slow");
		$("#hide").hide();
		$('#show').show();
	});
	
</script>
<script>
	

</script>

<div id="search">
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." required="true"/></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>

				
</div>
			
			
			
<div id="Student-Profile">
	<h1 align="left">Student Profile</h1>
	<hr/>
	<div  id="add-Student" style="height:360px; overflow-y:scroll;">
	
		<div id="studentProf">
		<div id="editBtn">
			<g:if test="${result}">
			
				<button id="showOrHide" class="btn btn-primary">Edit</button>
		
			</g:if>
		</div>
		
		<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'route_diagnosis']">
		
		<table>
			<g:each in="${result}" var="${results}">
			<%----------------------------------------------------%>
			<g:set var="firstName" value="${results.first_name}"/>
			<!--${firstName.getClass()}-->
			<g:set var="lastName" value="${results.first_name}"/>
			<!--${lastName.getClass()}-->
			<%----------------------------------------------------%>
			<tr>
				<td>First Name : ${results.first_name}</td>
				<td>Last Name : ${results.first_name}</td>
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
				<td>Birthday : <g:formatDate format="MMMM dd, yyyy" date="${results.birthday}"/></td>
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
			<div id="prescriptionBtn">
				<input type="hidden" value="${results.id_number}" name="studentId"/>
				<button id="add-Description" type="submit"class="btn btn-primary" name="idNum" value="1">Add Prescription</button>
			</div>
			</g:each>		
		</table>
		
		</g:formRemote> 
		</div>
		
		<center>
		<table id="showHideTable">
			<tr id="editForm">
				<g:formRemote name="editform" update="page-body" url="[controller: 'home', action:'editStudentInfo']">
					<td id="sub1">
						<center>
							New height:
							<small> 
								<!--<input id="inputForm" type="text" name="feet" value="${feet}" required="true">(ft) -->
								<div class="control-group" id="inputForm">
										<select name="feet" placeholder="asd">
											<option value="${feet}"  selected>Select feet</option>
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
								</div><br/>
								
								<!--<input id="inputForm" type="text" name="inch" value="${inch}" required="true">(in)-->
								<div class="control-group" id="inputForm">
										<select name="inch">
											<option value="${inch}"  selected>Select inch</option>
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
								</div>
							</small>
						</center>
					</td>
					<td id="sub1">
						<center>
						<div align="right">
							New weight: <input id="inputForm" type="text" name="weight" value="${weight}" required="true"><small>(kgs)</small>
						</div>
						</center>
					</td>
						<center>
							<input type="hidden" name="idNumber" value="${parameter}">
						</center>
					<td id="sub2">
						<center>
							<g:actionSubmit value="Submit" class="btn btn-default" onclick="return confirm('Do you really want to update?')" />
							
						</center>
					</td>
					
					
					<div class="container">
						<div id="example" class="modal hide fade in" style="display: none; ">
							<div class="modal-header">
								<a class="close icon-remove" data-dismiss="modal">X</a>
								<br/><h3>Are you sure?</h3>
							</div>
							<div class="modal-body">
								<g:form controller="home" action="editStudentInfo">
									<center>
										<input type="submit" class="btn btn-primary btn-lg btn-block" value="Yes"/>
										
									</center>
								</g:form>
								<br/>
								<a href="#" class="btn btn-default btn-lg btn-block" data-dismiss="modal">No</a>
							</div>
						</div>
					</div>
					
					
				</g:formRemote>
			</tr>
				
		</table>
		</center>
				<g:if test="${student?.diagnoses}">

<div id="option">
	<button id="show" class="btn btn-primary">Show Medical History</button>
	<button id="hide" class="btn btn-primary">Hide Medical History</button>
		
</div>

			
		<div id="listOfDiag">	
			<caption>
		<center><h2> Medical History </h2></center>
	</caption>	
					<table>
					<tr>
							<th></th>
							<th></th>
							<th>Prescription</th>
							<th></th>
						</tr>
					<g:each in="${student.diagnoses}" var="diagnosis">
						<tr>
							<td>${diagnosis.name}</td> 
							<td><g:formatDate format="MMMM dd, yyyy" date="${diagnosis.dateCreated}"/> </td> <br>
							<td>${diagnosis.prescription}</td>
							<%-------------------------------------------------------%>
							<td><a class="btn btn-primary" data-toggle="modal" href="#printPrescription">Print</a></td>
						
<%-------------------------------------------------------------------------------------------%>
			<div align="center" class="container">
			<div id="printPrescription" class="modal hide fade in" style="display: none; ">
				<div class="modal-header" align="left">
					<a class="close icon-remove" data-dismiss="modal">X</a>
					<h1>PRESCRIPTION</h1>
				</div>
				<div class="modal-body">
					<div> <font size="2"> During ${diagnosis.dateCreated} the student ${firstName} ${lastName} was diagnosed with ${diagnosis.name}
											and was prescribed with ${diagnosis.prescription}</font>
					</div>
				</div>
			</div>
<%-------------------------------------------------------------------------------------------%>
						</tr>				
		<!--				
		
<script>
	$('#${diagnosis.name}').click(function() {
		diagnosis = $('#${diagnosis.prescription}').text();
		$('#prescription').html(diagnosis);
		
	});
</script>
					
						<div class="container">
						<div id="ex" class="modal hide fade in" style="display: none; ">
							<div class="modal-head">
							<h3> Prescription </h3><br/>
							</div>
							<div class="modal-body">
							<p id="prescription"></p>
								
							</div>
							<div class="modal-footer">
								<a href="#" class="btn btn-default btn-primary btn-block" data-dismiss="modal">Close</a>
								
							</div>
							-->
							
						</g:each>
						
						</div>
					</div>	
			</table>
			
		</div>
		</g:if>
	
		
	
	</div>
</div>




