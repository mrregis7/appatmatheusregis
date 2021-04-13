<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assessment</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
			<div class="container">	
			
				<form action="/cliente/incluir" method="post">
				
					<div class="form-group">
					<label>Informe seu nome:</label>
					<input type="text" name="nome" required>
					</div>
					<div class="painel-body">
						<div class="btn-group">
							<form action="/">
								<button type="submit" class="btn btn-link"> Home </button>
							</form>
						</div>
					</div>
				</form>
			
			<c:if test="${not empty lista}">	
							
			<h2>Listagem de clientes</h2>			
			  <table class="table">
			    <thead>
			      <tr>
			        <th>Nome</th>	
			        <th>Telefone</th>
			        <th>CPF</th>  
			        <th>E-mail</th> 			              
			        <th></th>
			      </tr>
			    </thead>
			    <tbody> 
			    			    
			    <c:forEach var="c" items="${lista}">     
			      <tr>
			        <td>${c.nome}</td>	
			        <td>${c.telefone}</td>	
			        <td>${c.cpf}</td>   
			        <td>${c.email}</td>			        
 
			        <td><a href="/cliente/${c.id}/excluir">Excluir</a></td>
			      </tr>
			    </c:forEach>
			      
			    </tbody>			    
			  </table>
		</c:if> 
		<c:if test="${empty lista}">
			  	<h2>Nenhum cliente cadastrado no sistema</h2>
		</c:if>
	</div>
	
</body>
</html>