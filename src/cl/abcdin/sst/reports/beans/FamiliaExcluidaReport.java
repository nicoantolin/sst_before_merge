package cl.abcdin.sst.reports.beans;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.directwebremoting.json.JsonUtil;

import ar.com.fdvs.dj.domain.CustomExpression;
import ar.com.fdvs.dj.domain.entities.columns.AbstractColumn;
import cl.abcdin.sst.dao.FamiliaDAO;
import cl.abcdin.sst.model.Columna;
import cl.abcdin.sst.model.Usuario;
import cl.abcdin.sst.model.filters.FilterColumna;
import cl.abcdin.sst.model.filters.FilterProducto;
import cl.abcdin.sst.model.vo.FamiliaExcluida;
import cl.abcdin.sst.reports.common.CommandReportSST;
import cl.abcdin.sst.utils.Constants;

public class FamiliaExcluidaReport extends CommandReportSST {
	private static final Log log = LogFactory.getLog(FamiliaExcluidaReport.class);
	private FamiliaDAO familiaDAO;
	
	@SuppressWarnings("rawtypes")
	@Override
	protected Collection<AbstractColumn> getAbstractColumns(Map map, HttpServletRequest request) throws Exception {
		String filter = getData("filterColumn", map);
		log.debug(filter);
		FilterColumna filterColumna = JsonUtil.toReflectedTypes(FilterColumna.class, filter);
		log.debug(filterColumna.getClass().toString());
		filterColumna.setUsuario((Usuario)request.getSession().getAttribute(Constants.SESSION_USER));
		return getAbstractColumns(filterColumna, FamiliaExcluida.class);
	}
	
	@SuppressWarnings({ "serial", "unchecked" })
	protected <T> Collection<AbstractColumn> getAbstractColumns(FilterColumna filterColumna, Class<T> clazz) throws Exception {
		List<Columna> columnas = getColumnaDAO().listColumnasByFilter(filterColumna);
		for (Columna columna : columnas) {
			if (columna.getPropiedad().equals("excluida")) {
				columna.setCustomExpression(new CustomExpression() {
					@SuppressWarnings("rawtypes")
					@Override
					public Object evaluate(Map fields, Map variables, Map parameters) {
						return (Boolean) fields.get("excluida") ? "SI" : "NO";
					}

					@Override
					public String getClassName() {
						return String.class.toString();
					}

				});
			}
		}
		return parseAbstractColumns(columnas, clazz);
	}


	@SuppressWarnings("rawtypes")
	@Override
	protected Collection getData(Map map, HttpServletRequest request) throws Exception {
		String filter = getData("filter", map);
		
		FilterProducto filterProducto = JsonUtil.toReflectedTypes(FilterProducto.class, filter);
		
		log.debug(filterProducto.getClass().toString());
		return familiaDAO.listFamiliasExcluidasByFilter(filterProducto);
	}

	public void setFamiliaDAO(FamiliaDAO familiaDAO) {
		this.familiaDAO = familiaDAO;
	}
}
