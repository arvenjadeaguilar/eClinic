<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Clinic</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'home.css')}" type="text/css">
		<script src="../js/jquery-ui.js"></script>
		<script src="../js/jquery-1.8.3.js"></script>
	</head>
	<body>
		
		<div id="status1">
		
		<g:remoteLink action="student" id="" update="page-body">
		<div id="status">
		Student
		</div>
		</g:remoteLink>
		
		<g:remoteLink action="profile" id="" update="page-body">
		<div id="status">
		Profile
		</div>
		</g:remoteLink>
		
		
		
		<g:remoteLink action="graph" id="" update="page-body">
		<div id="status">
		Graph
		</div>
		</g:remoteLink>
		
		</div>	

		
		<div id="page-body">
			<g:render template="templates/student"/>
		</div>
		
		
		
	</body>
</html>
