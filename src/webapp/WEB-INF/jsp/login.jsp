  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<div>
		<div class="container">	
			<h1>Cadastro</h1>
		</div>
		<div class="painel-body">
			<div class="btn-group">
				<form action="/">
					<button type="submit" class="btn btn-link"> Novo usuario</button>
				</form>
			</div>
		</div>
		
		<c:if test="${not empty mensagem}">
			<div class="alert alert-info">
	    		<strong>Atencao!</strong> ${mensagem}
	  		</div>
  		</c:if>
			<form action="/usuario/login" method="post">
					<div class="form-group">
						<label>Informar o nome:</label>
						<input type="email" name="email" class="form-control">
					</div>
					<div class="form-group">
						<label>Informa o e-mail:</label>
						<input type="email" name="email" class="form-control">
					</div>
					<div class="form-group">
						<label>Informe a senha:</label>
						<input type="password" name="senha" class="form-control">
					</div>
				
				<button type="submit">Confirmar</button>
				
			</form>
	</div>
</body>
</html>