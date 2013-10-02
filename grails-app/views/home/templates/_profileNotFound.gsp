<style>
	#notFound{
		margin-top:100px;
		background-color:#8fc8d8;
		border:2px dashed;
		border-radius:25px;
	}
	#par{
		font-family:"Times New Roman";
		font-size:80px;
		text-align:center;
	}
	#sub{
		font-family:"Times New Roman";
		font-size:30px;
		text-align:center;
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

<div id="notFound">
	<p id="par">
		NOT FOUND
	</p>
	<p id="sub">
		Enter ID-number again
	</p>

</div>



			
				