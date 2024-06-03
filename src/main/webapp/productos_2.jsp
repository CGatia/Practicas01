<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>Productos</title>
</head>
<script type="text/javascript">
        window.onload = function() 
        {
            var mensaje = '<%=request.getParameter("mensaje")%>
		if (mensaje === "actualizado") {
			alert("¡Producto actualizado exitosamente!");
		} else if (mensaje === "error") {
			alert("Error en la actualización del producto.");
		} else if (mensaje === "eliminado") {
			alert("¡Producto eliminado exitosamente!")
		} else if (mensaje === "error2") {
			alert("Error en la eliminación del producto.");
		}
	};
</script>

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
				<h2>Listado de Productos</h2>
				<%
				producto pro = new producto();
				String tabla = pro.consultarTodo2();
				out.print(tabla);
				%>
			</div>
		</div>
		<div class='derecha'>
			<a href="ingresoProducto.jsp">Ingresar productos</a>
		</div>

		<footer>
			<p>Teléfono: +123456789</p>
			<p>Correo: crissgatia2003@gmail.com</p>
		</footer>
	</main>
</body>
</html>