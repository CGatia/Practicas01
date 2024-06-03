<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int cod = Integer.parseInt(request.getParameter("cod_pr"));
	int cod_cat = Integer.parseInt(request.getParameter("cmbCategoria"));
	String nombre = request.getParameter("nombre_pr");
	double precio = Double.parseDouble(request.getParameter("precio_pr"));
	int cantidad = Integer.parseInt(request.getParameter("cantidad_pr"));
	producto pro = new producto(cod, cod_cat, nombre, cantidad, precio);
	boolean actualizado = pro.editarInfo(pro);
	if(actualizado)
	{
        response.sendRedirect("productos.jsp?mensaje=actualizado");
	}
	else
	{
        response.sendRedirect("productos.jsp?mensaje=error");
	}
%>
</body>
</html>