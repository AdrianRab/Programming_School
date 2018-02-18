package pl.coderslab.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;


@WebFilter("/*")
public class FilterCharEncoding implements Filter {


    public FilterCharEncoding() {
    }
	public void destroy() {}

	
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		String path = ((HttpServletRequest) request).getRequestURI();
		String path2 = "/Warsztaty_03/AddUsers";
		if (path.endsWith(path2)) {
		    chain.doFilter(request, response); 
		} else {
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("Encoding change!");
		chain.doFilter(request, response);
		}
	
		

	}

	private String pathToBeIgnored;

	public void init(FilterConfig fConfig) throws ServletException {

	    pathToBeIgnored = fConfig.getInitParameter("/Warsztaty_03/AddUsers");
	}

}
