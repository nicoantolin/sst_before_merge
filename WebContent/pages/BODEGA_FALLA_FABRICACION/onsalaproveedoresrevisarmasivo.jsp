<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="../library.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/pages/BODEGA_FALLA_FABRICACION/onsalaproveedoresrevisarmasivo.js?<%= version %>"></script>
</head>
<body>
	<div class="main_body">
		<%@ include file="../header.jsp" %>
		<%@ include file="../menu.jsp" %>
		<div class="wrapper">
			<div class="container">
				<h1>Revisar Orden de Trabajo</h1>
				<div class="marco">
					<h1>Buscador Automático</h1>
					<div id="marco_interior">
						<form id="buscadorAutomatico">
							<table class="table_plana">
								<tr>
									<td>
										<fieldset>
											<label for="codigoBarra">Codigo de barras (Búsqueda con lector)</label>
											<input type="text" id="codigoBarra" name="codigoBarra" style="width: 140px;" class="number" maxlength="10">
										</fieldset>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div><!-- fin buscadorAutomatico -->
				<div class="marco">
					<h1>Buscador manual</h1>
					<div class="marco_interior">
						<form id="buscadorManual">
							<table class="table_plana" width="100%">
								<tr>
									<td width="35%">
										<fieldset>
											<label for="codigoBarra" style="width: 150px;">Código de barras</label>
											<input type="text" id="codigoBarra" name="codigoBarra" style="width: 140px;" class="number" maxlength="10">
										</fieldset>
										<fieldset>	
											<label for="numeroSerie" style="width: 150px;">N° Serie</label>
											<input type="text" id="numeroSerie" name="numeroSerie" style="width: 140px;" maxlength="32">
										</fieldset>
									</td>
									<td width="50%">
										<fieldset>
											<label for="idOT" style="width: 315px;">N° orden de trabajo</label>
											<input type="text" id="idOT" name="idOT" style="width: 140px;" class="number" maxlength="9">
										</fieldset>
										<fieldset>
											<input type="button" value="Buscar" id="buscar" style="margin-left: 315px; width: 140px">
										</fieldset>
									</td>
							</table>
						</form>
					</div>
				</div><!-- fin buscadorManual -->
				<div class="marco">
					<h1>Productos</h1>
					<div class="marco_interior">
						<div id="ordenesTrabajo"></div>
						<div id="revision">
							<form id="onsalaproveedoresrevisarot" class="form_table">
								<div class="marco_interior_tabla">
									<table class="table_plana" width="100%">
										<tr>
											<td width="50%">
												<fieldset>
													<label for="clasificacion">Clasificación</label>
													<select id="clasificacion" name="clasificacion" class="required">
													</select>
												</fieldset>
											</td>
											<td width="50%">
												<fieldset>
													<label for="nombreTecnico">Nombre del técnico</label>
													<input type="text" id="nombreTecnico" name="nombreTecnico" class="required">
												</fieldset>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<fieldset>
													<label for="observacion">Observación</label>
													<textarea rows="5" cols="122" id="observacion" name="observacion" class="required"></textarea>
												</fieldset>
											</td>
										</tr>
										<tr>
											<td>
												
											</td>
											<td>
												<fieldset>
													<input type="button" id="grabar" value="Grabar" style="float:right">
												</fieldset>
											</td>
										</tr>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>