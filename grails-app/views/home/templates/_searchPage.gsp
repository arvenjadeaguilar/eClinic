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
	
</style>
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
				
				<center>
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." /></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				</center>
				
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
		
	
		
	
	</div>
</div>			