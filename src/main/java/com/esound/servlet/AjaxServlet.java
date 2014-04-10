/**
 * @author Lyon - 2014.04.10
 */
package com.esound.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class AjaxServlet extends HttpServlet {

	Logger logger = Logger.getLogger(AjaxServlet.class);
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("doPost");
		String pathInfo = request.getPathInfo();
		if( pathInfo.indexOf("User") > 0 ){
			//new UserAjax().doPost(request, response);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("doGet");		
	}
	
}