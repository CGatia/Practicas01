<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<title>Ingreso de Productos</title>
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
		<h1>Resultado de ingreso</h1>
		<%
			producto pro= new producto();
			String id = request.getParameter("txt_id");
			String cat = request.getParameter("cmbCategoria");
			String nombre = request.getParameter("txt_nombre");
			String cantidad = request.getParameter("txt_cantidad");
			String precio = request.getParameter("txt_precio");
			String directorio = request.getParameter("imagen");
			//directorio="C:/Users/eclipse-workspace/Practica_02rc/main/webapp/resources/ROSTRO.jpg";
			directorio="src/main/webapp/img/acon.jpg";
			String res = pro.ingresarProducto(Integer.parseInt(id), Integer.parseInt(cat), nombre, Integer.parseInt(cantidad), Float.parseFloat(precio), directorio);
			out.print(res);
		%>
		<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
	</main>
</body>
</html>