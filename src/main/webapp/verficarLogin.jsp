<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
<%
usuario us = new usuario();
String nlogin = request.getParameter("usuario");
String nclave = request.getParameter("clave");
HttpSession sesion = request.getSession(); //Se crea la variable de sesi�n
boolean respuesta = us.verificarUsuario(nlogin, nclave);
if (respuesta) {
	sesion.setAttribute("usuario", us.getNombre()); //Se a�ade atributos
	sesion.setAttribute("perfil", us.getPerfil()); //Se a�ade atributos
	response.sendRedirect("menu.jsp"); //Se redirecciona a una p�gina espec�fica
} else {
	System.out.println("no vale");
%>
<jsp:forward page="login.jsp">
	<jsp:param name="error"
		value="Datos incorrectos.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>
