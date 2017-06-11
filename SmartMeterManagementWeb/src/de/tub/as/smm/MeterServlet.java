package de.tub.as.smm;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.tub.as.smm.dao.MeterDao;
import de.tub.as.smm.dao.UserDao;
import de.tub.as.smm.models.Consumption;
import de.tub.as.smm.models.Meter;
import de.tub.as.smm.models.User;

/**
 * Servlet implementation class UserServlet
 */

@WebServlet("smart-meter")
public class MeterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Injected DAO EJB:
    @EJB
    MeterDao meterDao;
    
 
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	//System.out.print("smart meter DAO");
    	String smartMeterID = request.getParameter("id");
    	if (smartMeterID != null) {
    		request.setAttribute("meter", meterDao.getMeterByID(smartMeterID));
    		request.getRequestDispatcher("./content/pages/smart-meter.jsp").forward(request, response);
    	} else {
            request.getRequestDispatcher("./content/pages/overview.jsp").forward(request, response);
    	}
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	String id = request.getParameter("id");
    	String usr = request.getParameter("usr");
    	String matr = request.getParameter("matr");
    	String kWh = request.getParameter("kWh");
    	
    	
    	Meter meter = meterDao.getMeterByID(id);
    	// add the new Consumtion to the List of the smart Meter Consumptions
    	meter.getConsumptionList().add(new Consumption(meter, usr + matr, Double.valueOf(kWh)));

        doGet(request, response);
    }
}

