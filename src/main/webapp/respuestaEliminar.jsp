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
	int valor = Integer.parseInt(request.getParameter("valor"));
	String nombre_pro = request.getParameter("valor2");
	producto pro = new producto();
	boolean eliminado = pro.eliminarProducto(valor);
	if(eliminado)
	{
        response.sendRedirect("productos.jsp?mensaje=eliminado");
	}
	else
	{
        response.sendRedirect("productos.jsp?mensaje=error2");
	}
%>
</body>
</html>