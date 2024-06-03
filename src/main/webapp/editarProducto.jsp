<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Productos</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		String valor = request.getParameter("valor");
		String nombre_pro = request.getParameter("valor2");
		int cod = Integer.parseInt(valor);
		producto pro = new producto();
		pro.editarProducto(cod);
	%>
	<form class='center' action="respuestaEditar.jsp" method="post">	
	        <fieldset>
	            <h1>Modificación de Producto</h1>
	            	<label class="label">Código de Producto: </label>
	                <input type="text" name="cod_pr" class="input_izq" value="<%=cod%>" readonly>
	            
	                <label class="label">categoria:  </label>
	                <%
	                	categoria cat = new categoria();
	                	String cmb = cat.mostrarCategoria2();
	                	out.print(cmb);
	                %>

	                <label class="label">Nombre: </label>
	                <input type="text" class="input_izq" name="nombre_pr" value="<%=nombre_pro%>">

	                <label class="label">Precio: </label>
	                <input type="number" value="0.00" class="input_izq" name="precio_pr" required step="0.01">
                	
                	<label class="label">Cantidad: </label> 
                	<input type="number" value="5" placeholder="Ingrese la cantidad: " class="input_izq" name="cantidad_pr" required oninvalid="this.setCustomValidity('Complete este campo')">
                	
	            <div class="envio">
	                <input type="submit" class="boton">
	                <input type="reset" class="boton">
	            </div>     
	        </fieldset>
        </form> 
</body>
</html>