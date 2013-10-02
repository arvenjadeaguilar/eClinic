<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Clinic</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
		<script src="../js/jquery-ui.js"></script>
		<script src="../js/jquery-1.8.3.js"></script>
		
		
		<script src="../js/bootstrap.js"></script>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
		<!--<link rel="stylesheet" type="text/css" href="../css/usermainpage.css"/>-->
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap-modal.js"></script>
	
	
	</head>
	
	

	<body>
		
		<div id="status1">
		
		
		<g:remoteLink action="profile" id="" update="page-body">
		<div id="status">
		Profile
		
		<!--<form action="" method="POST" id="prescription" autocomplete="off">
			Enter Prescription here
			<textarea rows="7" cols="50" form="prescription">
			</textarea>
			<input type="submit">
		</form>-->
		
		</div>
		</g:remoteLink>
		
		
		
		<g:remoteLink action="graph" id="" update="page-body">
		<div id="status">
		Graph
		</div>
		</g:remoteLink>
		
		<g:remoteLink action="logout" id="" update="page-body">
		<div id="status">

			<a data-toggle="modal" href="#out">Logout</a>
			
		</div>
		</g:remoteLink>
		
		
			<div class="container">
				<div id="out" class="modal hide fade in" style="display: none; ">
					<div class="modal-header">
						<a class="close icon-remove" data-dismiss="modal">X</a>
						<br/><h3>Are you sure you want to logout?</h3>
					</div>
					<div class="modal-body">
						<g:form controller="logout" action="index">
							<center>
								<input type="submit" class="btn btn-primary btn-lg btn-block" value="Yes"/>
							</center>
						</g:form>
						<a href="#" class="btn btn-default btn-lg btn-block" data-dismiss="modal">No</a>
					</div>
				</div>
			</div>
			
			
		</div>	
		
		
		
		<div id="page-body">
			<g:render template="templates/profile"/>
			    
		</div>
		
		
		
	</body>
</html>
