<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css">
	<title>Log-In</title>
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
		<div class="center">
			<div class="agrupacion">
				<form action="verficarLogin.jsp" method='post'>
					<h1>Inicio de Sesión</h1>
					<div class="input-box">
						<input type="text" placeholder="Usuario" required name='usuario'>
						<i class='bx bx-user' ></i>
					</div>
					<div class="input-box">
						<input type="password" placeholder="Contraseña" required name='clave'>
						<i class='bx bx-lock-alt' ></i>
					</div>
					<div class="recordar">
						<label>
							<input type="checkbox">Recordar contraseña
						</label>
					</div>
					<input class="btn_login" type="submit">Iniciar Sesión</input>
					<div class="registro">
						<p>¿No tienes una cuenta?
							<a href="register.jsp">Regístrate</a>
						</p>
					</div>
				</form>
			</div>
		</div>
		<footer>
		<p>Teléfono: +123456789</p>
		<p>Correo: crissgatia2003@gmail.com</p>
	</footer>
	</main>
</body>
</html>