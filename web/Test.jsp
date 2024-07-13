
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
        <!-- IonIcons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <style>
            body {
                margin: 0;
                padding: 0;
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

            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }</style>
    </head>
    <body>

        <main>

            <c:if test="${error!=null }">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>
            <c:if test="${mess!=null }">
                <div class="alert alert-success" role="alert">
                    ${mess}
                </div>
            </c:if>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>${n}</h3>
                                <p>Total Orders</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>${t}</h3>
                                <p>Total Profit</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header py-3 row">
                    <div class="col-sm-6">
                        <h5 class="mb-0 text-left" id="">
                            <strong>Hóa Đơn</strong>
                        </h5>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover text-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Create Date</th>
                                    <th scope="col">Total</th>
                                    <th scope="col">Notes</th>
                                    <th scope="col" colspan="2" class="text-center">Action</th>
                                </tr>
                            </thead>

                            <tbody id="content">
                                <c:forEach var="p" items="${p1}">
                                    <tr>
                                        <th scope="row">${p.getId()}</th>
                                        <td>${p.getUser().getName()}</td>
                                        <td>${p.getUser().getEmail()}</td>
                                        <td>${p.getUser().getPhone()}</td>
                                        <td>${p.getUser().getAddress()}</td>
                                        <td>${p.getOrderDate()}</td>
                                        <td>${p.getTotal()}</td>
                                        <td>${p.getNotes()}</td>
                                        <td><a href="DeleteOrder?pid=${p.getId()}" class="btn btn-danger btn-lg">Delete</a></td>
                                        <td><button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal${p.getId()}">Edit</button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </div>

        </div>
    </main>

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


    <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>

</body>
</html>



