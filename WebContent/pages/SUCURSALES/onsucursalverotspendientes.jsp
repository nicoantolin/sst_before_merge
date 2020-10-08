<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<%@ include file="../library.jsp" %>	
		<script type="text/javascript" src="<%=request.getContextPath()%>/pages/SUCURSALES/onsucursalverotspendientes.js?<%= version %>"></script>
</head>
<body>
	<div class="main_body">
		<%@ include file="../header.jsp" %>
		<%@ include file="../menu.jsp" %>
		<div class="wrapper">
			<div class="container">
				<h1>Ordenes de Trabajo Pendientes</h1>
				A CONTINUACIÓN SE LISTAN LAS ORDENES DE TRABAJO QUE QUEDARON PENDIENTES POR ACCESORIOS, LAS ORDENES DE TRABAJO QUE ESTAN EN PREPARACIÓN ACTUALMENTE Y LAS ORDENES DE TRABAJO DE GARANTÍA MASTER QUE HAN SIDO CREADAS POR EL EJECUTIVO DE GARANTIA MASTER.
				<div class="marco">
					<div class="marco_interior_tabla">
						<div id="resultados"></div>
					</div>
				</div>
			</div>
		</div>
	</div>		
</body>
</html>