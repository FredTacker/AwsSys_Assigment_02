<%@page import="java.util.*,de.tub.as.smm.models.Meter"%>	
<%@page import="java.util.*,de.tub.as.smm.models.Consumption"%>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="de">
    <head>
    	<%@ include file="./../includes/header.jsp" %>
    </head>
    <script>

    </script>
    <body onload="javascript:fillValuesIntoHTML();">

        <%@ include file="./../includes/navigation.jsp" %>
		
		<% Meter meter = (Meter) request.getAttribute("meter");%>
		
        <div class="container">
            <div class="page-header"><h1>Smart-Meter Device: <%=meter.getDeviceID() %></h1></div>    
            <main class="col-sm-9 offset-md-3 col-md-10 offset-md-2 pt-3">
                <section class="row text-center placeholders">
                    <div class="col-sm-4">
                        <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="../media/smartmeter.png" alt="smart-Meter Avatar"/></div>
                        <h4>Device identification: <%=meter.getDeviceID() %></h4>
                        <div class="text-muted" id="maximumLoad">Maximum load: <%=meter.getMaxLoad() %></div>
                    </div>
                    <div class="col-sm-4">
                        <div name="circle1" style="display: table;margin: 0 auto;">
                            <div class="c100 p23 big" style="display: table;margin: 0 auto;" id="voltageCircle">
                                <span id="voltageCirclePercent">23%</span>
                                <div class="slice">
                                    <div class="bar"></div>
                                    <div class="fill"></div>
                                </div>
                            </div>
                        </div>
                        <h4>Voltage:</h4>
                        <div class="text-muted" id="voltageValue"></div>
                    </div>
                    <div class="col-sm-4">
                        <div name="circle2" style="display: table;margin: 0 auto;">
                            <div class="c100 p23 big" style="display: table;margin: 0 auto;" id="amperageCircle">
                                <span id="amperageCirclePercent">23%</span>
                                <div class="slice">
                                    <div class="bar"></div>
                                    <div class="fill"></div>
                                </div>
                            </div>
                        </div>
                        <h4>Amperage:</h4>
                        <div class="text-muted" id="amperageValue"></div>
                    </div>
                </section>
                <div id="insertWarning"></div>
                <div class="page-header"> <h2>Reading Electricity-Meter</h2></div>
                <form method="Post">
                	<!--  this line is needed to identify the smart Meter were we want to add the consumption Data  not visibile for the user-->
                	<input type="text" name="id" style="visibility: hidden;" value="<%=meter.getId() %>">
                	
                <div class="form-group">
                    <label for="usr">User identification:</label>
                    <input type="text" name="usr" style="width: 40%;" class="form-control" id="usr">
                </div>
                <div class="form-group">
                    <label for="matr">Last Two Numbers of the "Matrikelnummer":</label>
                    <input type="text" name="matr" style="width: 40%;" class="form-control" id="matr">
                </div> 
                <div class="form-group">
                    <label for="kWh">Consumption data(kWh):</label>
                    <input type="text" name="kWh" style="width: 40%;" class="form-control" id="kWh">
                </div> 
                                <div class="form-group">
                        <button type="submit" class="btn btn-secondary">Add the Consumption</button>
                </div>
				</form>
                <div class="page-header"> <h2>Consumption History</h2></div>    
                <div class="table-responsive">
                    <table id="tableData" class="table table-striped">
                        <thead>
                            <tr>
                                <th>User identification:</th>
                                <th>Consumption data(kWh):</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<%
								List<Consumption> consumptionList = meter.getConsumptionList();
								if (consumptionList != null) {
									for (Consumption cons : consumptionList) {%>
                            			<tr>
                                			<td><%=cons.getUserID() %></td>
                                			<td><%=cons.getConsumptionData() %></td>
                                			<td><%=cons.getSigningDate() %></td>
                            			</tr>
                            		<%	} } %>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>

		<%@ include file="./../includes/footer.jsp" %>

        <%@ include file="./../includes/script.jsp" %>
        
		
    </body>
</html>