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
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div name="center" style="display: table;margin: 0 auto;width: 50%;">
                            <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="./media/smartmeter.png" alt="smart-Meter Avatar"/></div>
                            <div class="caption" style="display: table;margin: 0 auto;">
                                <h4>smart-Meter Nr. FE20843749</h4>
                                <p>The average useage of energy is temporary at a level of 3520kw per Year.</p>
                                <p><a href="content/smart-meter_01.html" class="btn btn-default" role="button">Details</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div name="center" style="display: table;margin: 0 auto;width: 50%;">
                            <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="./media/smartmeter2.png" alt="smart-Meter Avatar"/></div>
                            <div class="caption" style="display: table;margin: 0 auto;">
                                <h4>smart-Meter Nr. GE49728972</h4>
                                <p>The average useage of energy is temporary at a level of 4525kw per Year.</p>
                                <p><a href="content/smart-meter_02.html" class="btn btn-default" role="button">Details</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div name="center" style="display: table;margin: 0 auto;width: 50%;">
                            <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="./media/smartmeter3.png" alt="smart-Meter Avatar"/></div>
                            <div class="caption" style="display: table;margin: 0 auto;">
                                <h4>smart-Meter Nr. ZE91407841</h4>
                                <p>The average useage of energy is temporary at a level of 2615kw per Year.</p>
                                <p><a href="content/smart-meter_03.html" class="btn btn-default" role="button">Details</a></p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>

		<%@ include file="./../includes/footer.jsp" %>

        <%@ include file="./../includes/script.jsp" %>
        
    </body>
</html>
