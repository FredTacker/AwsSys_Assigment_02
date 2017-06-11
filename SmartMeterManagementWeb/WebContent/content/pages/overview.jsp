<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="java.util.*,de.tub.as.smm.models.Meter"%>	

<!DOCTYPE html>
<html lang="de">
    <head>
			<%@ include file="./../includes/header.jsp" %>
    </head>
    <body>

			<%@ include file="./../includes/navigation.jsp" %>


        <div class="container">
            <div class="jumbotron">
                <h1>smart-Meter Controll Overview</h1>
                <p>This is the Controll Overview Page for the registered smart Meters.</p>
                <p><a class="btn btn-primary btn-lg" href="imprint.html" role="button">Learn more</a></p>
            </div>

            <div class="row">
            
            <%
			@SuppressWarnings("unchecked")
			List<Meter> meterList = (List<Meter>) request.getAttribute("meters");
			if (meterList != null) {
				for (Meter meter : meterList) {
			%>
            
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div name="center" style="display: table;margin: 0 auto;width: 50%;">
                            <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="./media/smartmeter.png" alt="smart-Meter Avatar"/></div>
                            <div class="caption" style="display: table;margin: 0 auto;">
                                <h4>smart-Meter Nr. <%=meter.getDeviceID()%></h4>
                                <p>The average usage of energy is temporary at a level of 3520kw</p>
                                <p><a href="./smart-meter?id=<%=meter.getId()%>" class="btn btn-default" role="button">Details</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            <%
			}
			}
			%>

            </div>


        </div>

		<%@ include file="./../includes/footer.jsp" %>

        <%@ include file="./../includes/script.jsp" %>
        
    </body>
</html>
