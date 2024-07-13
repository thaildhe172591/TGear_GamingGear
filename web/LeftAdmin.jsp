<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Sidebar -->
<html>
    <head>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <!-- Google Fonts Roboto -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
        <!-- MDB -->
        <link rel="stylesheet" href="css/mdb.min.css" />
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/style.css" />

        <!--         Roboto Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
        <!--        Font Awesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!--Bootstrap core CSS-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!--Material Design Bootstrap-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!--Material Design Bootstrap Ecommerce-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
        <!--Your custom styles (optional)--> 
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/Logo.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/homeheader.css" rel="stylesheet" />
        <!-- Fontawesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Liên kết phông chữ -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Madimi+One&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <style>
            /* CSS for Sidebar Navigation Hover Effect */
            .list-group-item {
                transition: all 0.3s ease;
                border-radius: 8px; /* Bo tròn các góc */
                margin-bottom: 8px; /* Khoảng cách giữa các mục */
                text-decoration: none; /* Loại bỏ gạch chân */
                color: #333; /* Màu chữ mặc định */
            }

            .list-group-item:hover {
                background-color: #f0f0f0; /* Màu nền khi hover */
                color: #E30019; /* Màu chữ khi hover */
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Hiệu ứng shadow khi hover */
                transform: scale(1.1); /* Phình to ra 110% */
                z-index: 1; /* Đảm bảo phần tử hover nổi lên trên các phần tử khác */
            }
            .list-group-item-action {
                width: 100%;

                text-align: inherit;
            }

        </style>
    </head>

    <body>
        <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white" style="padding: 0px">
            <div class="position-sticky">
                <div class="list-group list-group-flush mx-3 mt-4">

                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <a href="admin" class="list-group-item list-group-item-action py-2 ripple" aria-current="true">
                            <i class="fas fa-solid fa-gauge fa-fw me-3" style="color: #9a80ea;"></i><span>Main dashboard</span>
                        </a>
                    </c:if>

                    <a href="doanhThuTheoThu" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-chart-pie fa-fw me-3" style="color: #e980ea;"></i><span>Danh thu theo tuần</span>
                    </a>

                    <a href="doanhThuTheoThang" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-chart-bar fa-fw me-3" style="color: #ea808a;"></i><span>Doanh thu tháng</span>
                    </a>

                    <a href="hoaDon" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-file-invoice-dollar fa-fw me-3" style="color: #80a0ea;"></i><span>Hóa Đơn</span>
                    </a>

                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <a href="managerAccount" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-solid fa-user fa-fw me-3" style="color: #80eaa5;"></i><span>Quản lý tài khoản</span>
                        </a>
                    </c:if>

                    <a href="manager" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-solid fa-dolly fa-fw me-3" style="color: #eac380;"></i><span>Quản lý sản phẩm</span>
                    </a>

                    <a href="top10" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-solid fa-list-ol fa-fw me-3"></i><span>Top 10 sản phẩm</span>
                    </a>

                    <a href="top5khachhang" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-solid fa-address-card fa-fw me-3" style="color: #f06666;"></i><span>Top 5 khách hàng</span>
                    </a>

                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <a href="top5chinhanh" class="list-group-item list-group-item-action py-2 ripple">
                            <i class="fas fa-solid fa-address-book fa-fw me-3"style="color: #666af0;"></i><span>Top 5 Chi nhánh</span>
                        </a>
                    </c:if>

                    <a href="managerSupplier" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fas fa-solid fa-truck-field-un fa-fw me-3" style="color: #e7f066;"></i><span>Quản lý nhà cung cấp</span>
                    </a>
                    <a href="logout" class="list-group-item list-group-item-action py-2 ripple">
                        <i class="fa-solid fa-right-to-bracket fa-xl" style="color: red;"></i><span>Logout</span>
                    </a>
                </div>
            </div>
        </nav>
        <!-- Sidebar -->
    </body>
</html>

