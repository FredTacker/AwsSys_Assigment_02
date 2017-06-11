<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>smart-Meters</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <!-- circle Bootstrap library -->
        <link rel="stylesheet" href="../css/circle.css">
        <!-- custom Bootstrap footer -->
        <link rel="stylesheet" href="../css/footer.css">
    </head>
    <script>

    </script>
    <body onload="javascript:fillValuesIntoHTML();">

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../index.html">Smart-Meters</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="../index.html">Overview</a></li>
                        <li><a href="../content/imprint.html">Imprint</a></li>
                    </ul>


                </div>
            </div>
        </nav>


        <div class="container">
            <div class="page-header"><h1>Smart-Meter Device: FE20843749</h1></div>    
            <main class="col-sm-9 offset-md-3 col-md-10 offset-md-2 pt-3">
                <section class="row text-center placeholders">
                    <div class="col-sm-4">
                        <div><img style="border-radius: 50%;width: 240px;height: 240px;"src="../media/smartmeter.png" alt="smart-Meter Avatar"/></div>
                        <h4>Device identification: FE20843749</h4>
                        <div class="text-muted" id="maximumLoad">Maximum load: 60 Ampere</div>
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
                <div class="form-group">
                    <label for="usr">User identification:</label>
                    <input type="text" style="width: 40%;" class="form-control" id="usr">
                </div>
                <div class="form-group">
                    <label for="matr">Last Two Numbers of the "Matrikelnummer":</label>
                    <input type="text" style="width: 40%;" class="form-control" id="matr">
                </div> 
                <div class="form-group">
                    <label for="kWh">Consumption data(kWh):</label>
                    <input type="text" style="width: 40%;" class="form-control" id="kWh">
                </div> 
                                <div class="form-group">
                        <button type="button" onclick="javascript:newValueIntoTable();" class="btn btn-secondary">Add the Consumption</button>
                </div>

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
                            <tr>
                                <td>Franz20</td>
                                <td>4800</td>
                                <td>Sat May 13 2017 21:28:32 GMT+0200 (CEST)</td>
                            </tr>
                            <tr>
                                <td>Henrik12</td>
                                <td>4500</td>
                                <td>Sat May 10 2017 19:30:32 GMT+0200 (CEST)</td>
                            </tr>
                            <tr>
                                <td>Franz20</td>
                                <td>3940</td>
                                <td>Sat May 5 2017 17:28:32 GMT+0200 (CEST)</td>
                            </tr>
                            <tr>
                                <td>Antonia73</td>
                                <td>3705</td>
                                <td>Sat May 4 2017 19:28:32 GMT+0200 (CEST)</td>
                            </tr>
                            <tr>
                                <td>Mark58</td>
                                <td>3600</td>
                                <td>Sat May 1 2017 05:28:32 GMT+0200 (CEST)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>

		<%@ include file="./../includes/footer.jsp" %>

		<%@ include file="./../includes/script.jsp" %>
		
    </body>
</html>