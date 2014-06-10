package ca.blackperl.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter("/Fragment/*")
public class AuthenticationFilter implements Filter {
	private static final Log log = LogFactory
			.getLog(AuthenticationFilter.class);
    /**
     * Default constructor. 
     */
    public AuthenticationFilter() {
    	log.info("Created");
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		log.info("destroyed");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		log.info("doFilter");
		
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpRes = (HttpServletResponse) response;
		
		String authorization = httpReq.getHeader("Authorization");
		
		if ( authorization == null ) {
			log.info("not authorized");
			httpRes.setStatus(401);
			httpRes.setHeader("WWW-Authenticate", "Basic realm=\"fragment\"");
			return;
		}
		else {
			log.info("Authorization: " + authorization);
			// pass the request along the filter chain
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		log.info("init");
	}

}
