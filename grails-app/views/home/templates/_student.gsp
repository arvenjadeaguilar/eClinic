<div id="search">
				<form>
					<fieldset>
						<table>
							<tr>
								<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Submit</button></td> 
								<td><input type="text" placeholder="ID No. / Last Name"/></td>
							</td>	
						</table>	
					</fieldset>
				</form>
</div>

			
			
<div id="Student-Add">
	<h1>Student</h1>
	<hr/>
	<div  id="add-Student" style="height:400px; overflow-y:scroll;">
	<g:form name="add_Student" action="addStudent">
		<table>
		<tr>
			<td>First Name : </br><input type="text" name="fname" placeholder="ex. Arven Jade"/></td>
			<td>Last Name : </br><input type="text" placeholder="ex Aguilar"/></td>
			<td>
			Middle Name : </br><input type="text" placeholder="ex. Buenavista"/>
			</td> 
		</tr>
		
		<tr>
			<td>College : </br><input type="text" placeholder="ex. MSU-IIT"/></td>
			<td>Course : </br><input type="text" placeholder="ex. Computer Science"/></td>
			<td>ID No. : </br><input type="text" placeholder="ex. 2009-3644"/></td>
		
		</tr>
	
		<tr>
			<td>Gender
				<br/>
				<label class="checkbox inline">
					<input type="checkbox" id="inlineCheckbox1" value="male"/> Male
				</label>
				
				<label class="checkbox inline">
					<input type="checkbox" id="inlineCheckbox2" value="female"/> Female
				</label>
			
			</td>
			
			<td>Birthday <br/>
				<select  style="width:100px">
					<g:render template="templates/month"/>	
				</select>
				-
				<select id="date" style="width:70px">
						<g:render template="templates/date"/>			
				</select>
			
				-
				<select style="width:70px">
					<g:render template="templates/year"/>
					
				</select>
				
				<select style="width:70px">
					<g:render template="templates/number"/>
					
				</select>
			</td>
			<td>Age <br/> 
				<select style="width:70px">
				<g:render template="templates/number"/>
				</select>
				
			</td>
		</tr>
		
		<tr>
			<td>City Adress </br><input type="text" placeholder="ex. Iligan City"/></td>
			<td>Province </br><input type="text" placeholder="ex. Iligan"/></td>
			<td>Postal Code </br><input type="text" placeholder="ex. 9200"/></td>
		</tr>
		<tr>
			<td>Height
				</br><input type="number" placeholder="ex. 5'6 "/> ft
			
			</td>
			<td>Weight
				</br><input type="number" placeholder="ex. 60 "/> kg
			</td>
			<td>BloodType
				<br/>
				<select>
					<g:render template="templates/bloodType"/>	
				</select>
			
			</td>
		</tr>
		
		<tr>
			<td>Fathers Name </br><input type="text" placeholder="ex. Rogelio Aguilar"/></td>
			<td>Age<br/> 
				<select style="width:70px">
				<g:render template="templates/number"/>
				</select>
			</td>
			<td>Occupation </br><input type="text" placeholder="ex. Driver"/></td>
		</tr>
		
		<tr>
			<td>Mothers Name </br>
			
			<input type="text" placeholder="ex. Bienvenida Buenavista"/>
			
			</td>
			
			<td>
			Age <br/>
				<select style="width:70px">
				<g:render template="templates/number"/>
				</select>
				
			</td>
			<td>Occupation </br><input type="text" placeholder="ex. Accountant"/></td>
		</tr>
	
		<tr>
			<td>Brothers Name<br/>
				<textarea rows="4" cols="50">
				
				</textarea>
				
				
			</td>
			<td>Sisters Name <br/>
				<textarea rows="4" cols="50">
				
				</textarea>
			</td>
		</tr>
		
		<tr>
		<td><input type="submit" class="btn btn-primary btn-large" value="Add Student"> </td>
		</tr>
	
	
		
	
		</table>	
	</g:form>
	
	</div>
</div>			