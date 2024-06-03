<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.productos.negocio.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header>
		<h1>Productos de Belleza Veganos - EcoBeauty</h1>
		<h2>"Naturalmente Bella, Naturalmente Tú"</h2>
		<nav class="navbar">
				<ul>
					<li><a href="Index.jsp">Home</a></li>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="categoria.jsp">Categoria</a></li>
					<li><a href="productos.jsp">Productos</a></li>
			
				</ul>
			</nav>
	</header>
	
	<section class="main-section">
		<article>
			<h2>Productos</h2>
			<ul>

				<form method="post" action="consulta.jsp">
					<label for="categoria">Seleccionar Categoria:</label>
					<%
					categoria c = new categoria();
					String opcCategoria = c.mostrarCategoria();
					out.println(opcCategoria);
					%>
					<button type="submit">Mostrar Reporte</button>
				</form>
			</ul>
		</article>
	</section>
	<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
</body>
</html>
