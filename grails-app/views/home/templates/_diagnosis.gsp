<div id="search">
				
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
				<td width="80%"></td>
				
				<td align="right"><button id="showOrHide">Edit</button></td>
			</tr>
			</g:if>
		</table>
	</div>
</div>