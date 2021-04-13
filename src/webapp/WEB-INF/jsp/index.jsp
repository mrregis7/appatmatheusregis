<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APP TP3</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<div class="container">	
		<div class="panel-group"">	
			<div class="panel panel-defalut">	
				<div class="panel-heading">	
					<h3>${user.nome}</h3>
					<h4>${user.email} }</h4>
					<h4><a href="${git}">GIT</a></h4>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
					<form action="/cliente" method="get">
						<button type="submit" >Novo cliente</button>
					</div>
				</div>					
				<div class="panel-body">
					<div class="btn-group">		
						<form action="/pedido" method="get">
							<button type="submit" >Novo pedido</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>				
</body>
</html>


	