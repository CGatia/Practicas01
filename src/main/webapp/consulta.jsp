<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css">
	<title>Categorías</title>
</head>
<body>
	<main>
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
		<div class="center">
			<div class="down">
				<h2>Listado Categorias</h2>
				<%
					String res = request.getParameter("cmbCategoria");
					int cat = Integer.valueOf(res);
					producto pro = new producto();
					String tabla = pro.buscarProductoCategoria(cat);
					out.print(tabla);
				%>
			</div>
		</div>
		
		<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
	</main>
</body>
</html>