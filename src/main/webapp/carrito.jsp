<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"
    import="com.productos.negocio.*" import="java.util.List" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito</title>
<link rel="stylesheet" href="css/carrito.css">
</head>
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

    <h2>Mi carrito</h2>
    <form name="listadoProductos" action="carrito.jsp">
        <%
        producto producto = new producto();
        String tabla = producto.consultarProductos();
        out.print(tabla);
        %>
        <p>
            <input type="submit" name="button" id="button" value="Enviar" />
        </p>
    </form>
    <img src="img/carrito.jpg" width="80" height="100"
        alt="carrito de compras" />
    <ul>
        <%
        List<String> listaElementos = (List<String>) session.getAttribute("carrito");
        String nompr = "";
        int e = 0;
        Double pr = 0.0;
        producto p = new producto();
        if (listaElementos == null) {
            listaElementos = new ArrayList<String>();
            session.setAttribute("carrito", listaElementos);
        }
        String[] elementos = request.getParameterValues("productos");
        int i = 0;
        if (elementos != null) {
            while (i < elementos.length) {
                listaElementos.add(elementos[i]);
                i++;
            }
        }
        for (String tmp : listaElementos) {
            e = Integer.parseInt(tmp);
            nompr = p.consultarNombrePrecio(e);
            pr += p.consultarPrecio(e);
            out.println("<li>" + nompr + "</li>");
        }
        %>
    </ul>
    <p>Precio total: <%= pr %></p>

    <footer>
        <p>Teléfono: +123456789</p>
        <p>Correo: crissgatia2003@gmail.com</p>
    </footer>
</body>
</html>
