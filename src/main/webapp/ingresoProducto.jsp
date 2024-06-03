<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
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
		<form class='center' id="registro" action="respuestaProductos.jsp"
			method="post">
			<fieldset>
				<h1>Registro de Productos</h1>
				<label class="label">ID: </label> <input type="text" name="txt_id"
					class="input_izq" placeholder="Ingrese la ID: " required
					oninvalid="this.setCustomValidity('Ingrese su número de cédula')"
					maxlength="10"> <label class="label">Categoría: </label>
				<%
				categoria categoria = new categoria();
				String opcionesCategoria = categoria.mostrarCategoria2();
				out.println(opcionesCategoria);
				%>

				<label class="label">Nombre: </label> <input type=text
					placeholder="Ingrese el nombre del producto: " class="input_izq"
					name="txt_nombre" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Cantidad: </label> <input type="number"
					value="5" min="5" placeholder="Ingrese la cantidad: "
					class="input_izq" name="txt_cantidad" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Precio: </label> <input type="number"
					step="0.01" placeholder="Ingrese el precio: " class="input_izq"
					name="txt_precio" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Imagen: </label> <input type="file"
					accept=".jpg" class="input_izq" name="imagen" id="imagen">

				<div class="envio">
					<input type="submit" class="boton"> <input type="reset"
						class="boton">
				</div>
			</fieldset>
		</form>
		<script>
			function mostrarRuta() {
				const input = document.getElementById('imagen');
				const rutaArchivo = document.getElementById('rutaArchivo');

				if (input.files && input.files[0]) {
					const archivo = input.files[0];
					const ruta = URL.createObjectURL(archivo);
					rutaArchivo.textContent = 'Ruta del archivo: ' + ruta;
				}
			}
		</script>
		<footer>
			<p>Teléfono: +123456789</p>
			<p>Correo: crissgatia2003@gmail.com</p>
		</footer>
	</main>
</body>
</html>