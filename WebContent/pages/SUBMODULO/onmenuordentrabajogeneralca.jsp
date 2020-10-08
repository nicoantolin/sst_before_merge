<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="onmenuordentrabajogeneralcaPanel">
		<form id="ordenTrabajoca" name="ordenTrabajoca" class="formTab">
			<table class="table_plana" width="100%">
				<tr>
					<td width="55%">
						<fieldset>
							<label for="id" style="width:235px;">N&deg; Orden de trabajo</label>
							<label id="id">&nbsp;</label>				
												
							<label for="idGuia" style="width:235px;">N&deg; Guia despacho a postventa</label>
							<label id="idGuia">&nbsp;</label>
							
							<label for="idDocumento" style="width:235px;">Boleta </label>
							<label id="idDocumento">&nbsp;</label>
							
							<label for="logistico.nombreCompleto" style="width:235px;">Logístico responsable</label>
							<label id="logistico.nombreCompleto">&nbsp;</label>
							
							<label for="ejecutiva.nombreCompleto" style="width:235px;">Ejecutiva responsable</label>
							<label id="ejecutiva.nombreCompleto">&nbsp;</label>
							
							<label for="sucursal" style="width:235px;">Sucursal</label>
							<label id="sucursal" ><span id="sucursal.id">&nbsp;</span> <span id="sucursal.glosa">&nbsp;</span></label>
							
							<label for="sucursal.region.glosa" style="width:235px;">Región</label>
							<label id="sucursal.region.glosa">&nbsp;</label>
							
							<label for="tipoCambio.descripcion" style="width:235px;">Tipo cambio</label>
							<label id="tipoCambio.descripcion">&nbsp;</label>
							
							<label for="tipoCambioJT.descripcion" style="width:235px;">Motivo del cambio por Jefe de Tienda</label>
							<label id="tipoCambioJT.descripcion">&nbsp;</label>
						</fieldset>
					</td>
					<td width="45%">
						<fieldset >
							<label for="tipo.glosa">Tipo de recepción</label>
							<label id="tipo.glosa">&nbsp;</label>
							
							<label for="fechaVencimiento">Fecha vencimiento garantía</label>
							<label id="fechaVencimiento" format="dd/MM/yyyy">&nbsp;</label>
						</fieldset>
						<fieldset>
							<label for="fechaEmision">Fecha emisión</label>
							<label id="fechaEmision" format="dd/MM/yyyy">&nbsp;</label>
																
							<label for="logistico.anexo">Telefono logístico</label>
							<label id="logistico.anexo" >&nbsp;</label>
							
							<label for="ejecutiva.anexo">Telefono ejecutiva</label>
							<label id="ejecutiva.anexo" >&nbsp;</label>
							
							<label for="sucursal.telefono">Telefono sucursal</label>
							<label id="sucursal.telefono" >&nbsp;</label>
							
							<label for="sucursal.comuna.glosa">Comuna</label>
							<label id="sucursal.comuna.glosa">&nbsp;</label>
						</fieldset>
					</td>
				</tr>
			</table>
		</form>
	</div><!-- fin tabOrdenTrabajo -->
</body>
</html>