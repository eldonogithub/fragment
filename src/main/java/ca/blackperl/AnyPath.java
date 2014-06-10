package ca.blackperl;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Servlet implementation class AnyPath
 */
@WebServlet(description = "a,b/c;d/e.f;g/h?i=j+k&l=m", urlPatterns = { "/any/*" }, name= "Annotated AnyPath" )
public class AnyPath extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final Log log = LogFactory.getLog(AnyPath.class);
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnyPath() {
        super();
        
        log.info("Servlet created");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.info("Begin Processing request: " + request.getRequestURI());
		log.info("Begin PathInfo: " + request.getPathInfo() );
		log.info("Begin Servlet Path: " + request.getServletPath());
		URI uri;
		try {
			uri = new URI(request.getRequestURI() + "#access_token=$$32343234");
			String fragment = uri.getFragment();
			log.info("Fragment: " + fragment );
		} catch (URISyntaxException e) {
			log.error(e,e);
		}
		getServletContext().getRequestDispatcher("/pages/any.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
