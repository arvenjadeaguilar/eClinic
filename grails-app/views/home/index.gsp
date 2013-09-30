<!DOCTYPE html>
<html>
	<head>

		<meta name="layout" content="main"/>
		<meta charset="UTF-8" />
		<title>Clinic</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
		<script src="../js/jquery-ui.js"></script>
		<script src="../js/jquery-1.8.3.js"></script>
		
		
		
		
		
	</head>
	
	

	<body>
		
		<div id="status1">
		
		
		<g:remoteLink action="profile" id="" update="page-body">
		<div id="status">
		Profile
		<form action='${post.url}' method="POST" id="prescription" autocomplete="off">
			Enter Prescription here
			<textarea rows="7" cols="50" form="prescription">
			</textarea>
			<input type="submit">
		</form>
		
		</div>
		</g:remoteLink>
		
		
		
		<g:remoteLink action="graph" id="" update="page-body">
		<div id="status">
		Graph
		</div>
		</g:remoteLink>
		
		<g:remoteLink action="logout" id="" update="page-body">
		<div id="status">
		Logout
		</div>
		</g:remoteLink>
		
		</div>	
		
		
		
		<div id="page-body">
			<g:render template="templates/profile"/>
			    
		</div>
		
		
		
	</body>
</html>
