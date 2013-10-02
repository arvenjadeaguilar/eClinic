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
	<h1>${name} </h1>
	<hr/>
	<div  id="view_presription" style="height:360px;">
				
				
				
				
				<g:formRemote name="Back" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<input type="hidden" name="parameter" value="${idNum}">
					<input type="submit" class="btn btn-primary" value="<<< BACK"> 
				</g:formRemote>	
				
				
			
					

		
	</div>
</div>