<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Respuestas del Formulario</title>
<link rel="stylesheet" href="css/style.css">
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
		<h1>Respuestas del Formulario</h1>
		<%-- Obtener parámetros del formulario --%>
		<%
		String cedula = request.getParameter("txt_cedula");
		%>
		<%
		String nombre = request.getParameter("txt_nombre");
		%>
		<%
		String telefono = request.getParameter("txt_telefono");
		%>
		<%
		String correo = request.getParameter("txt_correo");
		%>
		<%
		String estadocivil = request.getParameter("cmbEstadoCivil");
		%>
		<%-- Mostrar los datos recibidos --%>
		<p>
			<b>Cedula:</b>
			<%=cedula%></p>
		<p>
			<b>Nombre:</b>
			<%=nombre%></p>
		<p>
			<b>Teléfono:</b>
			<%=telefono%></p>
		<p>
			<b>Correo:</b>
			<%=correo%></p>
		<p>
			<b>Estado Civil:</b>
			<%=estadocivil%></p>
		<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
	</main>	
</body>
</html>
