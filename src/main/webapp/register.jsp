<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css">
	<title>Regristro</title>
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
		<form class='center' id="registro" action="respuestas.jsp" method="post">
	        <fieldset>
	            <h1>Registro de Cliente</h1>
	            	<label class="label">Cédula: </label>
	                <input type="text" name="txt_cedula" class="input_izq" placeholder="Ingrese su Número de Cédula: " required oninvalid="this.setCustomValidity('Ingrese su número de cédula')" maxlength="10">
	            
	                <label class="label">Nombre:  </label>
	                <input type="text" placeholder="Ingrese su Nombre" class="input_izq" name="txt_nombre" required oninvalid="this.setCustomValidity('Ingrese sus nombres completos')">

	                <label class="label">Teléfono: </label>
	                <input type="text" placeholder="Ingrese su Teléfono" class="input_izq" name="txt_telefono" required oninvalid="this.setCustomValidity('Ingrese un número telefónico')" maxlength="10">

	                <label class="label">Correo: </label>
	                <input type="email" placeholder="Ingrese su Email" class="input_izq" name="txt_correo" required oninvalid="this.setCustomValidity('Correo electrónico no válido')">

	               <label class="label">Estado Civil: </label>
	               <select name="cmbEstadoCivil" required oninvalid="this.setCustomValidity('Seleccione una opción')" class='input_izq'>
	               		<option value="1">Soltero</option>
               			<option value="2">Casado</option>	
						<option value="3">Divorciado</option>
						<option value="4">Viudo</option>		
	               </select>

	                <label class="label">Contraseña: </label>
	                <input type="password" class="input_izq" name="txt_pass1" required oninvalid="this.setCustomValidity('Contraseña no válida')">
                	
                	<label class="label">Repetir Contraseña: </label>
	                <input type="password" class="input_izq" name="txt_pass2" required oninvalid="this.setCustomValidity('Contraseña no válida')">
                	
	            <div class="envio">
	                <input type="submit" class="boton">
	                <input type="reset" class="boton">
	            </div>     
	        </fieldset>
            </form> 
		<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
	</main>
</body>
</html>