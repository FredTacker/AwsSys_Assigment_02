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

@WebServlet("")
public class OverviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Injected DAO EJB:
    @EJB
    MeterDao meterDao;
 
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("test");
    	
    	//Temp test add meters
    	Meter a = new Meter("AE123456789", 200.0 , 300.0, 100.0);
    	a.getConsumptionList().add(new Consumption(a, "henrik23", 3000.0));
    	Meter b = new Meter("AE99", 299.0 , 299.0, 199.0);
    	Meter c = new Meter("AE22", 322.0 , 222.0, 122.0);
    	Meter d = new Meter("AE11", 311.0 , 211.0, 111.0);
    	
    	meterDao.persist(a);
    	meterDao.persist(b);
    	meterDao.persist(c);
    	meterDao.persist(d);
    	
    	System.out.print("test2");
        // Display the list of all meters in the JSP:
    	request.setAttribute("meters", meterDao.getAllMers());
        request.getRequestDispatcher("./content/pages/overview.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 

 
        // Display the list of guests:
        doGet(request, response);
    }
}

