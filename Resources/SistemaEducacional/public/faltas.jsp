<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:import url="links.jsp" />
<title>Faltas</title>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse"
					aria-expanded="false" aria-controls="navbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/app"> <span
					class="glyphicon glyphicon-education" aria-hidden="true"></span>
					Sistema Educacional
				</a>
			</div>
			<div class="navbar-collapse collapse">
				<c:if test="${sessionScope.logado eq true }">
					<p class="navbar-text">Logado como ${sessionScope.usuario }</p>

					<ul class="nav navbar-nav">
						<li><a href="insereNota.jsp">Inserir Notas</a></li>
						<li><a href="insereFalta.jsp">Inserir Faltas</a></li>
					</ul>
					
					<form class="navbar-form navbar-right" action="login" method="post">
						<button type="submit" class="btn btn-default" name="btn"
							value="sair">Sair</button>
					</form>
				</c:if>

				<c:if test="${sessionScope.logado eq null or sessionScope.logado eq false }">

					<c:import url="formLogin.jsp" />

				</c:if>
			</div>
		</div>
	</nav>
	
	<c:if test="${disciplina.turno == 'T'.charAt(0) }">
		<small>Igual a T</small>
	</c:if>

</body>
</html>