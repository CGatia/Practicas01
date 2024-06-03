<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.usuario, com.productos.seguridad.pagina"%>
	<link rel="stylesheet" href="css/style.css">
<%
String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("usuario") == null) { //Se verifica si existe la variable
 %>
<jsp:forward page="login.jsp">
	<jsp:param name="error" value="Debe registrarse en el sistema." />
</jsp:forward>
<%
 } else {
 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
 int perfil=(Integer)sesion.getAttribute("perfil");
 %>
 <body>
	<header>
		<h1>Productos de Belleza Veganos - EcoBeauty</h1>
		<h2>"Naturalmente Bella, Naturalmente Tú"</h2>
		<nav class="navbar">
				<ul>
					<li><a href="Index.jsp">Home</a></li>
					<li><a href="cerrarSesion.jsp">Cerrar Sesion</a></li>
			
				</ul>
			</nav>
	</header>
<h1>Menu</h1>
<h4>
	Bienvenido
	<%
out.println(usuario);
%>
</h4>
<%
pagina pag = new pagina();
String menu = pag.mostrarMenu(perfil);
out.print(menu);
%>
<%
}
%>
</body>

