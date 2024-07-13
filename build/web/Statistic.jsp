<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Statistic</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 



        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <!-- Your custom styles (optional) -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            /* Sidebar */
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0; /* Height of navbar */
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }
        </style>
        <style>
            /* Custom styles can be added here */
            .small-box {
                border-radius: 10px;
                margin-bottom: 20px;
                overflow: hidden;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                /*                width: 50%;
                                height: 50%;*/
            }

            .small-box .icon {
                text-align: right;
                padding: 20px;
                color: rgba(255, 255, 255, 0.8);
                font-size: 64px;
            }

            .small-box .icon i {
                font-size: 40px;
            }

            .small-box .inner {
                padding: 10px;
            }

            .small-box h3 {
                font-size: 36px;
                font-weight: bold;
                margin: 0;
                color: #fff;
            }

            .small-box p {
                color: rgba(255, 255, 255, 0.8);
                margin: 0;
                font-size: 18px;
            }

            .small-box-footer {
                background: rgba(0, 0, 0, 0.1);
                color: rgba(255, 255, 255, 0.8);
                display: block;
                padding: 10px;
                text-align: center;
                transition: all 0.3s ease;
            }

            .small-box-footer:hover {
                background: rgba(0, 0, 0, 0.2);
                text-decoration: none;
                color: rgba(255, 255, 255, 1);
            }

            /* Custom CSS to fit all boxes in a single row */
            @media (min-width: 768px) {
                .col-md-6 {
                    flex: 0 0 49%; /* Adjust the width as per your preference */
                    max-width: 49%; /* Adjust the width as per your preference */
                }
            }
        </style>
    </head>
    <body>

        <!--Main Navigation-->
        <header>
            <jsp:include page="LeftAdmin.jsp"></jsp:include>
            </header>
            <!--Main Navigation-->

            <!--Main layout-->
            <main>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="small-box" style="background-color: #a35beb;">
                                <div class="inner">
                                    <h3>${allProduct }</h3>
                                <p>Total Product</p>
                            </div>
                            <div class="icon">
                                <i class="fa-solid fa-truck-ramp-box fa-2xl" style="color: #ffffff;"></i>
                            </div>
                            <a href="manager" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="small-box" style="background-color: #FFD43B;">
                            <div class="inner">
                                <h3 id="sumAllInvoice">${sumAllInvoice}</h3>
                                <p>Total Sales</p>
                            </div>
                            <div class="icon">
                                <i class="fa-brands fa-sellcast fa-2xl" style="color: #ffffff;"></i>
                            </div>
                            <a href="hoaDon" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="small-box" style="background-color: #eb5b8e;">
                            <div class="inner">
                                <h3 id="sumAllInvoice">${allReview}</h3>
                                <p>Feedbacks</p>
                            </div>
                            <div class="icon">
                                <i class="fa-solid fa-comments fa-2xl"style="color: #ffffff;"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <!--            <div class="container pt-4">
                            Section: Statistics with subtitles
                            <section>
                                <div class="row" id="total">
            
                                    <div class="col-xl-6 col-md-12 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between p-md-1">
                                                    <div class="d-flex flex-row">
                                                        <div class="align-self-center">
                                                            <a href="manager">
                                                                <i class="fas fa-brands fa-product-hunt fa-3x me-4" style="color: #74C0FC;"></i>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <h4>Total Products</h4>
                                                            <p class="mb-0"></p>
                                                        </div>
                                                    </div>
                                                    <div class="align-self-center">
                                                        <h2 class="h1 mb-0">${allProduct }</h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
            
                                    <div class="col-xl-6 col-md-12 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between p-md-1">
                                                    <div class="d-flex flex-row">
                                                        <div class="align-self-center">
                                                            <i class="far fa-solid fa-comments fa-3x me-4"style="color: #B197FC;"></i>
                                                        </div>
                                                        <div>
                                                            <h4>Feedbacks</h4>
                                                            <p class="mb-0"></p>
                                                        </div>
                                                    </div>
                                                    <div class="align-self-center">
                                                        <h2 class="h1 mb-0">${allReview }</h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-md-12 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between p-md-1">
                                                    <div class="d-flex flex-row">
                                                        <div class="align-self-center">
                                                            <h2 id="sumAllInvoice" class="h1 mb-0 me-4">$${sumAllInvoice}</h2>
                                                        </div>
                                                        <div>
                                                            <h4>Total Sales</h4>
                                                            <p class="mb-0"></p>
                                                        </div>
                                                    </div>
                                                    <div class="align-self-center">
                                                        <i class="far fa-brands fa-sellcast fa-3x" style="color: #FFD43B;"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
            
                                </div>
                            </section>
                            Section: Statistics with subtitles
                        </div>-->
        </main>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--Main layout-->
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <!-- MDB Ecommerce JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
        <script src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Free_3.8.1/js/mdb.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
        <script>// Graph
            //pie
            var ctxP = document.getElementById("pieChart").getContext('2d');

            var myPieChart = new Chart(ctxP, {
                type: 'pie',
                data: {
                    labels: ["Sunday", "Saturday", "Friday", "Thursday", "Wednesday", "Tuesday", "Monday"],
                    datasets: [{
                            data: [${totalMoney1}, ${totalMoney7}, ${totalMoney6}, ${totalMoney5}, ${totalMoney4}, ${totalMoney3}, ${totalMoney2}],
                            backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360", "#1874CD", "#CDB5CD"],
                            hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774", "#1E90FF", "#FFE1FF"]
                        }]
                },
                options: {
                    responsive: true
                }
            });
            function loadAmountCart() {
                $.ajax({
                    url: "/WebsiteBanGiay/loadAllAmountCart",
                    type: "get", //send it through get method
                    data: {

                    },
                    success: function (responseData) {
                        document.getElementById("amountCart").innerHTML = responseData;
                    }
                });
            }
        </script>
        <script>// Graph
            //Horizontal Bar Chart
            new Chart(document.getElementById("horizontalBar"), {
                "type": "horizontalBar",
                "data": {
                    "labels": ["Tháng 12", "Tháng 11", "Tháng 10", "Tháng 9", "Tháng 8", "Tháng 7", "Tháng 6", "Tháng 5", "Tháng 4", "Tháng 3", "Tháng 2", "Tháng 1"],
                    "datasets": [{
                            "label": "Doanh thu $",
                            "data": [${totalMoneyMonth12}, ${totalMoneyMonth11}, ${totalMoneyMonth10}, ${totalMoneyMonth9}, ${totalMoneyMonth8}, ${totalMoneyMonth7}, ${totalMoneyMonth6}, ${totalMoneyMonth5}, ${totalMoneyMonth4}, ${totalMoneyMonth3}, ${totalMoneyMonth2}, ${totalMoneyMonth1}],
                            "fill": false,
                            "backgroundColor": ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                                "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)",
                                "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)", "#99FF99", "#FFFF99", "#FFC1C1", "#FFB5C5", "#DDC488"
                            ],
                            "borderColor": ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
                                "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)", "	#66FF99", "#FFFF66", "#EEB4B4", "#EEA9B8", "#ECAB53"
                            ],
                            "borderWidth": 1
                        }]
                },
                "options": {
                    "scales": {
                        "xAxes": [{
                                "ticks": {
                                    "beginAtZero": true
                                }
                            }]
                    }
                }
            });
        </script>

        <script>
            var sumAllInvoiceElement = document.getElementById('sumAllInvoice');

            var sumAllInvoiceValue = sumAllInvoiceElement.textContent.replace('$', '');

            var roundedValue = parseFloat(sumAllInvoiceValue).toFixed(2);

            sumAllInvoiceElement.textContent = '$' + roundedValue;

        </script>
        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>