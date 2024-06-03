<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%@ page import="com.productos.negocio.*"%>
<%@ page import="java.util.*"%>
<%
String usuario = "";
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
{
%>
<jsp:forward page="login.jsp">
	<jsp:param name="error" value="Debe registrarse en el sistema." />
</jsp:forward>
<%
} else {
usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
int perfil = (Integer) sesion.getAttribute("perfil");
int id_us = (Integer) sesion.getAttribute("id_us");
String clave = (String) sesion.getAttribute("clave");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador</title>
<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

	<header>
		<h1>
			<img src="./public/N_videojuegos_logo.png" alt="Logo" class="logo">
			<span>N Videojuegos</span>
		</h1>

	</header>
	<nav>
		<ul>
			<li><a href="cerrarSesion.jsp">Cerrar sesion</a></li>
		</ul>

	</nav>
	<section class="main-section">
		<article>
			<div class="registro-box">
				<h2>Registro vendedores y administradores</h2>
				<form action="registroAdmin.jsp" method="post">
					<label for="nombre">Nombre:</label> <input type="text"
						name="txtnombre" required><br> <br>
						<label for="correo">Correo Electrónico:</label>
					<input type="email" name="correo" required><br> <br>
					
					<label for="cmbPerfil">Perfil:</label> <select
						name="cmbPerfil">
						<option value="1">Admin</option>
						<option value="2">Vendedor</option>
					</select><br> <br> 
					<button type="submit">Registrar usuario</button>
					<button type="reset">Limpiar</button>
				</form>
			</div>
		</article>
	</section>
	<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
</body>
</html>