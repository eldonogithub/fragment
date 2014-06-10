package ca.blackperl;

import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class Fragment extends Action {
	private static final Log log = LogFactory.getLog(Fragment.class);
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		log.info("URL received " + request.getRequestURL().toString());
		Map<String, String[]> parameterMap = request.getParameterMap();
		
		for (Entry<String, String[]> param : parameterMap.entrySet()) {
			log.info(param.getKey() + ": " + param.getValue());
		}
		
		return mapping.getInputForward();
	}

}
