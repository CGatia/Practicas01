<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.productos.negocio.*"%>
<% 
	int cod = Integer.parseInt(request.getParameter("valor"));
	producto cp = new producto();
	boolean f = cp.eliminarProducto(cod);
	if(f==true){
		response.sendRedirect("categoria.jsp");
	}

%>