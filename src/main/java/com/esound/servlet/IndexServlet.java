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

public class IndexServlet extends HttpServlet {

	Logger logger = Logger.getLogger(IndexServlet.class);
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		performTask(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        performTask(request, response);
    }

    public void performTask(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    	try {
    		request.getRequestDispatcher("/index.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}    	
    }
}