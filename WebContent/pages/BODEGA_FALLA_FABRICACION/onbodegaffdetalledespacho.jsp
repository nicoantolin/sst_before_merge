<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
	<%@ include file="../library.jsp" %>
	<script type="text/javascript" src="<%=request.getContextPath()%>/pages/BODEGA_FALLA_FABRICACION/onbodegaffdetalledespacho.js?<%= version %>"></script>	
	<link type="text/css" href="<%=request.getContextPath()%>/css/pasosCrearOT.css?<%= version %>" rel="stylesheet"/>
</head> 
<body>
	<div class="main_body">
		<%@ include file="../header.jsp" %>
		<%@ include file="../menu.jsp" %>
		<div class="wrapper">
			<input type="hidden" id="idDespacho" name="idDespacho" value='<%=request.getParameter("idDespacho")%>'>
			<div class="container">
				<h1>
					Detalle del despacho N° <span id="idDespacho"><%=request.getParameter("idDespacho")%></span>
				</h1>
				<div class="marco">
					<h1>Etapas del despacho</h1>
					<table class="table_plana" id="etapasDespacho">
						<tr>
							<td class="td_etapa preparacion  ">Preparación</td>
							<td class="td_etapa traslado2    ">Traslado</td>
							<td class="td_etapa terminar     ">Finalizado</td>
						</tr>
					</table>
				</div>
				
				<div id="tabs" >
					<ul></ul>
				</div><!-- Fin tabs -->
			</div><!-- Fin container -->	
		</div>
	</div>
</body>
</html>