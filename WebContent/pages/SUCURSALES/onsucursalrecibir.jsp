<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="../library.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/pages/SUCURSALES/onsucursalrecibir.js?<%= version %>"></script>
	<link type="text/css" href="<%=request.getContextPath()%>/css/pasosCrearOT.css?<%= version %>" rel="stylesheet"/>
</head>
<body> 
	<div class="main_body">
		<%@ include file="../header.jsp" %>
		<%@ include file="../menu.jsp" %>
		<div class="wrapper">
			<div class="container">
				<h1>RECIBIR ORDEN DE TRABAJO EN SUCURSAL</h1>		
				<div class="marco" id="etapas">
					<h1>Etapa de la orden de trabajo</h1>
					<table class="table_plana" id="etapasOT">
					</table>
				</div>	
				<div class="marco">
					<h1>Buscar orden de trabajo</h1>
					<form id="buscarDocumento">
						<table class="table_plana">
							<tr>
								<td style="width: 50%">
									<fieldset>
										<label for="idOT" style="width: 35%">N° ORDEN DE TRABAJO</label>&nbsp;
										<input type="text" id="idOT" name="idOT" style="width: 45%" maxlength="9" class="number"/>
									</fieldset>
								</td>
								<td style="width: 50%">
									<fieldset>								
										<label for="numeroGuia" style="width: 35%">N° GUÍA A S.TECNICO</label>
										<input type="text" id="numeroGuia" name="numeroGuia"  style="width: 45%" maxlength="9" class="number"/>								
									</fieldset>
								</td>
		<!-- 						<td style="width: 20%"> -->
		<!-- 							<input type="button" id="buscar" name="buscar" value="Buscar"> -->
		<!-- 						</td> -->
							</tr>
							<tr>
								<td style="width: 50%">
									<fieldset>
										<label for="numeroContrato" style="width: 35%">CONTRATO S. TÉCNICO</label>&nbsp;
										<input type="text" id="numeroContrato" name="numeroContrato" style="width: 45%" maxlength="16" />
									</fieldset>
								</td>
								<td style="width: 50%">
									<fieldset class="fieldset_botonera_center">								
										<input type="button" id="buscar" name="buscar" value="Buscar"> 							
									</fieldset>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div id="tabs" >
					<ul></ul>
				</div>
			</div><!-- FIN CONTAINER -->
		</div>
	</div>
</body>
</html>