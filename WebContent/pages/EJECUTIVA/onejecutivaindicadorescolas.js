$(document).ready(function() {
	
	$('.fecha').datepicker();
	$('#rangoFechas').validate();
	$('#fechaInicio').rules('add',{dateRangeMin:'#fechaTermino'});
	$('#fechaTermino').rules('add',{dateRangeMax:'#fechaInicio'});
	$('#fechaInicio').rules('add',{rangoMeses:'#fechaTermino'});
	
	var fechaActual;
	SSTFacade.getDateTrunc({async:false, callback:function(fechaTrunc) {
		fechaActual = fechaTrunc.toString("dd/MM/yyyy");
	}});

	$("#calularIndicadoresColas").click(function() {
		if($('#rangoFechas').valid()){
			var filterEjecutiva = {fechaInicio: $("#fechaInicio").val(), fechaTermino: $("#fechaTermino").val()};
		    SSTFacade.listIndicadoresEjecutivaGestion(filterEjecutiva,{async:true,callback:function(indicadores){
				$.each(indicadores,function(i,indicador){
					var el = $('#' + (indicador.id + 10) + '');
					var filter = {
						idIndicador:indicador.id,
						fechaInicio:filterEjecutiva.fechaInicio,
						fechaTermino:filterEjecutiva.fechaTermino
					};
					var filterColumn = {
						idRol:3,
						idSeccion:40001000,
						idIndicador:indicador.id,
						tipo:'OT'
					};
					el.text('');
					el.children().remove();
					if (indicador.valor <= 0) {
						el.text(0);
					} else {
						var a = $('<a></a>')
						.attr('href','#')
						.text(Math.round(indicador.valor * 100) / 100)
						.attr('onclick','exportDocument("xls",' + JSON.stringify(filterColumn) + ',' + JSON.stringify(filter) + ')');
						el.append(a);
					}
				}); 
			}});
		}
	});
	
	SSTFacade.listIndicadoresEjecutivaGestion({},{async:true,callback:function(indicadores){
		$.each(indicadores,function(i,indicador){
			var el = $('#' + indicador.id + '');
			var filter = {
				idIndicador:indicador.id
			};
			var filterColumn = {
				idRol:3,
				idSeccion:40001000,
				idIndicador:indicador.id,
				tipo:'OT'
			};
			if (indicador.valor <= 0) {
				el.text(0);
			} else {
				var a = $('<a></a>')
				.attr('href','#')
				.text(Math.round(indicador.valor * 100) / 100)
				.attr('onclick','exportDocument("xls",' + JSON.stringify(filterColumn) + ',' + JSON.stringify(filter) + ')');
				el.append(a);
			}
		});		
	}});
	
	$(".tip img").tooltip({
		track: true,
		delay: 0,
		showURL: false,
		showBody: " - ",
		fade: 250
	});
	
});

var exportDocument = function(type, filterColumn, filter){
	var url = "/sst/ViewReportServlet?type=" + type + 
		"&report=OrdenTrabajoIndicadorEjecutivaReport" +
		"&filter=" + JSON.stringify(filter) + 
		"&filterColumn=" + JSON.stringify(filterColumn);
	$.openWindowsMenubar(url, "OrdenTrabajoIndicadorEjecutivaReport", 600, 800);
};

