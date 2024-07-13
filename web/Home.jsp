<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <!-- Google Fonts Roboto -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
        <!-- MDB -->
        <link rel="stylesheet" href="css/mdb.min.css" />
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <link href="css/homeheader.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css" />
        <!-- Custom styles -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
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
        <!-- Fontawesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!-- Liên kết phông chữ -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Madimi+One&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
        <style>
            .main-footer .main-footer--copyright .logo-footer img {
                height: 52px;
            }
            img {
                max-width: 100%;
            }
            img {
                max-width: 100%;
            }
            img {
                vertical-align: middle;
                border-style: none;
            }
            .main-footer .social-list a img {
                position: relative;
                height: 32px;
            }
            img {
                max-width: 100%;
            }
            img {
                max-width: 100%;
            }
            img {
                vertical-align: middle;
                border-style: none;
            }
            .main-footer .social-list {
                display: flex;
                align-items: center;
            }
            .list-info a {
                color: #1982F9;
                font-weight: 600;
            }
            a {
                color: #fff;
                text-decoration: none;
                outline: none;
                -moz-transition: all 0.2s ease-in-out;
                -o-transition: all 0.2s ease-in-out;
                -webkit-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
            }
            a {
                font-size: 0.75em;
                color: #fff !important;
                text-decoration: none;
                background-color: transparent;
            }

            .main-footer h4 {
                font-size: 14px;
                font-weight: 600;
                margin: 0 0 10px;
                position: relative;
                line-height: 22px;
                text-transform: uppercase;
            }
            h1, h2, h3, h4, h5, h6 {
                color: var(--titlecolor);
                margin: 0 0 10px 0;
                font-weight: 600;
                line-height: 1.2;
            }
            footer a {
                color: #000000 !important;
            }
            *, ::after, ::before {
                box-sizing: border-box;
            }
            user agent stylesheet
            footer {
                display: block;
            }
            body {
                font-family: "Roboto Mono", monospace;
                color: var(--color-text);
                font-size: 14px;
                font-weight: 400;
                background: var(--color-body-bg);
                position: relative;
            }
            .main-footer {
                background: #ffffff;
            }
            footer, header, hgroup, main, nav, section {
                display: block;
            }
            footer {
                background: #343a40;
                padding: 40px;
                margin-top: 20px;
            }
            .row {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                margin-right: -15px;
                margin-left: -15px;
            }
            .footer-title h4 {
                color: #000;
            }
        </style>
        <style>
            #introCarousel, .carousel-inner, .carousel-item, .carousel-item.active {
                height: 100%;
                /*margin-top: 70px;*/
            }
            #razer-mouse, #razer-kb, #razer-hs {
                color: #00ff00;
                font-size: 3em;
                text-transform: uppercase;
                letter-spacing: 2px;
                text-align: center;
                /*border-bottom: 2px solid #00ff00;*/
                padding: 10px 0;
                /*                background: linear-gradient(to right, #00ff00, #ff00ff, #00ff00);
                                -webkit-background-clip: text;  Thêm hỗ trợ cho các trình duyệt WebKit 
                                -webkit-text-fill-color: transparent;  Ẩn màu văn bản gốc */
            }
            #zowie-monitor{
                color: #fff;
                font-size: 3em;
                text-transform: uppercase;
                letter-spacing: 2px;
                text-align: center;
                /*border-bottom: 2px solid #00ff00;*/
                padding: 10px 0;
                /*background: linear-gradient(to right, #017373, #fa6e6e, #017373);*/
            }
            #razer-mouse::after {
                content: '';
                display: block;
                width: 100%;
                height: 4px;
                /*background: linear-gradient(to right, #00ff00, #ff00ff, #00ff00);*/
            }
            #razer-kb::after{
                content: '';
                display: block;
                width: 100%;
                height: 4px;
                /*background: linear-gradient(to right, #00ff00, #ff00ff, #00ff00);*/
            }
            #razer-hs::after{
                content: '';
                display: block;
                width: 100%;
                height: 4px;
                /*background: linear-gradient(to right, #00ff00, #ff00ff, #00ff00);*/
            }
            #zowie-monitor::after{
                content: '';
                display: block;
                width: 100%;
                height: 4px;
                /*background: linear-gradient(to right, #00ff00, #ff00ff, #00ff00);*/
            }
            * {
                font-family: "Roboto Mono", monospace;
                margin: 0;
                padding: 0;
            }
        </style>
        <style>
            /* Carousel styling */
            #introCarousel,
            .carousel-inner,
            .carousel-item,
            .carousel-item.active {
                height: 90vh;
            }

            .carousel-item:nth-child(1) {
                background-image: url('https://cdna.artstation.com/p/assets/images/images/053/685/658/large/john-lord-ralla-night-owl-razer-new-arrivals.jpg?1662778041');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
                max-width: 100%;
            }

            .carousel-item:nth-child(2) {
                background-image: url('https://cdn.nguyenkimmall.com/images/promo/870/Catepage-Banner_1200x628px-Logitech.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
                max-width: 100%;
            }

            .carousel-item:nth-child(3) {
                background-image: url('https://image.benq.com/is/image/benqco/ZOWIE-2022-BRAND-banner-1920?$ResponsivePreset$');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
                max-width: 100%;
            }

            /* Height for devices larger than 576px */
            @media (min-width: 992px) {
                #introCarousel {
                    margin-top: -58.59px;
                }
            }

            .navbar .nav-link {
                color: #fff !important;
            }
            /*            #introCarousel {
                            position: relative;
                        }
            
                        .carousel-inner {
                            width: 60%;
                            margin: 0 auto;
                        }
            
                        .carousel-item {
                            text-align: center;
                        }
            
                        .carousel-indicators {
                            bottom: 10px;
                        }*/
            .carousel-control-next-icon:after {
                content: "" ;
            }
            .carousel-control-prev-icon::after{
                content: "";
            }
            .carousel .carousel-control-prev-icon {
                width: 52px;
                height: 52px;
            }
            .carousel .carousel-control-next-icon {
                width: 52px;
                height: 52px;
            }
            #introCarousel, .carousel-inner, .carousel-item, .carousel-item.active {
/*                width: 190vh;
                height: 80vh;*/
                border-radius: 10px;
            }
            #banner-web{
                display: flex;
            }
            #sc-banner{
                margin-top: 80px;
            }
            .secondbanner img{
                width: 100%;
                height: 100%;
                border-radius: 5px;
            }
            .secondbanner{
                margin: 12px 12px;
            }
            body.skin-light {
                color: #fff;
                background-color: #fff;
                background-image: url("images/wallpaperflare.com_wallpaper.jpg");
                background-size: 100%;
            }
            #service{
                background-color: #8f6933;
                padding:12px 12px;
            }
            #text-service{
                color: #edc387;
            }
            #razer{
                background-color: #000;
                padding:12px 12px;
            }
            .card .card-body .card-text {
                font-size: .9rem;
                font-weight: 400;
                color: gray;
            }
            /*            .skin-light .btn-primary {
                            color: #fff;
                            background-color: #E30019 !important;
                            border-color: #fff !important;
                            border: 1px solid #E30019 !important;
                        }*/
            #razer-load{
                color: #fff;
                background-color: #44d62c !important;
                /*border-color: #fff !important;*/
                border: 1px solid #44d62c !important;
            }
            #logi-load{
                color: #fff;
                background-color: #000 !important;
                /*border-color: #fff !important;*/
                border: 1px solid #000 !important;
            }
            #zowie-load{
                color: #fff;
                background-color: #017373 !important;
                /*border-color: #fff !important;*/
                border: 1px solid #017373 !important;
            }
            /*            .skin-light .btn-success {
                            color: #fff;
                            background-color: #E30019 !important;
                            border: 1px solid #E30019 !important;
                        }*/
            #razer-button{
                color: #000;
                font-weight: 700;
                font-size: 15px;
                background-color: #44d62c !important;
                border: 1px solid #44d62c !important;
            }
            /*            .skin-light .btn-success {
                            color: #8102f7;
                            background-color: #fff !important;
                        }*/
            #logitech{
                background-color: #343a40;
                padding:12px 12px;
            }
            #logi-button{
                color: #fff;
                font-weight: 700;
                font-size: 15px;
                background-color: #000 !important;
                border: 1px solid #000 !important;
            }
            #zowie{
                background-color: #017373;
                padding:12px 12px;
            }
            #zowie-button{
                color: #017373;
                font-weight: 700;
                font-size: 15px;
                background-color: #fff !important;
                border: 1px solid #fff !important;
            }
            .gaming-mouse  {
                background: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
                color: white; /* Ensure the text is readable against the background */
                padding: 10px; /* Add some padding for better spacing */
                border-radius: 5px; /* Optional: adds rounded corners */
                position: relative; /* Required for the pseudo-element */
                overflow: hidden; /* Ensures the pseudo-element stays within the h1 */
            }
        </style>
        <style>
            .background-overlay {
                z-index: 0; /* Đặt z-index để lớp nền trong suốt hiển thị dưới chữ */
            }
        </style>
    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>
            <!-- Carousel wrapper -->
            <div id="banner-web" class="col-sm-12" >
                <div class="col-sm-8">
                    <div id="introCarousel" class=" carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:120px;">
                        <!--Indicators--> 
                        <ol class="carousel-indicators">
                            <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
                            <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
                            <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
                        </ol>

                        <!--Inner--> 
                        <div class="carousel-inner">
                            <!--Single item--> 
                            <div class="carousel-item active">

                            </div>

                            <!--Single item--> 
                            <div class="carousel-item">

                            </div>

                            <!--Single item--> 
                            <div class="carousel-item">

                            </div>
                        </div>
                        <!--Inner--> 

                        <!--                             Controls -->
                        <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div id="sc-banner" class="col-sm-4 mb-4" style="margin-top:160px;">
                    <div class="d-flex justify-content-center align-items-center">
                        <div class="secondbanner shadow-4-strong">
                            <img src="https://static.ladipage.net/5bf3dc7edc60303c34e4991f/banner-ver-2022-13-20230221091740-plwex.png" class="card-img-top" alt="">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center align-items-center">
                        <div class="secondbanner shadow-4-strong">
                            <img src="https://static.ladipage.net/5bf3dc7edc60303c34e4991f/banner-13-20220617101733.jpg" class="card-img-top" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Carousel wrapper -->      


            <div class="card-group container" style="margin-top:50px;">
                <div id="service" class="card" style="border-style: none;">
                    <img style="height:55px; width:64px; margin: auto;" src="images/free-shipping.png">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">GIAO HÀNG TRÊN TOÀN QUỐC</h5>
                        <p id="text-service" class="card-text" style="text-align:center">Vận chuyển toàn quốc, nhanh chóng tiện lợi</p>
                    </div>
                </div>
                <div id="service" class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/credit-card.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
                        <p id="text-service" class="card-text" style="text-align:center">Thạnh toán trực tiếp sau khi giao hàng</p>
                    </div>
                </div>
                <div id="service" class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/product.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">CHÍNH SÁCH BẢO HÀNH HẤP DẪN</h5>
                        <p id="text-service" class="card-text" style="text-align:center">Bảo hành dài hạn lên đến 2 năm</p>
                    </div>
                </div>
                <div id="service" class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/exchange.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">HỖ TRỢ HOÀN TRẢ HÀNG TIỆN LỢI</h5>
                        <p id="text-service" class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row" style="margin-top:25px">            
                    <h1 class="gaming-mouse" style="text-align:center; width:100%" id="razer-mouse"> RAZER MICE</h1>
                    <!--<h1 class="header" markdown="" pnxssr_4="">GAMING MICE</h1>-->
                    <div class="col-sm-12">
                        <div id="contentRazerM" class="row">
                        <c:forEach items="${listRazerMouse}" var="o">
                            <div class="productRazerM col-12 col-md-3 col-lg-2">
                                <div id="razer" class="card" style="margin: 10px 0;">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">

                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p>${o.price} $</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" title="View Product"><p id="razer-button" class="btn btn-success btn-block">BUY</p></a>   
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button id="razer-load" onclick="loadMoreRazerM()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 class="gaming-mouse" style="text-align:center; width:100%" id="razer-kb">Razer Gaming Keyboard</h1>
                <div class="col-sm-12">
                    <div id="contentRazerKB" class="row">
                        <c:forEach items="${listRazerKB}" var="o">
                            <div class="productRazerKB col-12 col-md-3 col-lg-2">
                                <div id="razer" class="card" style="margin: 10px 0;">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p>${o.price} $</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" title="View Product"><p id="razer-button" class="btn btn-success btn-block">BUY</p></a>   
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button id="razer-load" onclick="loadMoreRazerKB()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 class="gaming-mouse" style="text-align:center; width:100%" id="razer-hs">Razer Gaming Headset</h1>
                <div class="col-sm-12">
                    <div id="contentRazerH" class="row">
                        <c:forEach items="${listRazerH}" var="o">
                            <div class="productRazerH col-12 col-md-3 col-lg-2">
                                <div id="razer" class="card" style="margin: 15px 0;">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p>${o.price} $</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" title="View Product"><p id="razer-button" class="btn btn-success btn-block">BUY</p></a>   
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button id="razer-load" onclick="loadMoreRazerH()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 class="gaming-mouse" style="text-align:center; width:100%" id="gmmouse"> LOGITECH MICE</h1>
                <!--<h1 class="header" markdown="" pnxssr_4="">GAMING MICE</h1>-->
                <div class="col-sm-12">
                    <div id="contentLogiM" class="row">
                        <c:forEach items="${listLogiMouse}" var="o">
                            <div class="productLogiM col-12 col-md-3 col-lg-2">
                                <div id="logitech" class="card" style="margin: 10px 0;">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">

                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a id="logi-title" href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p>${o.price} $</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" title="View Product"><p id="logi-button" class="btn btn-success btn-block">BUY</p></a>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button id="logi-load" onclick="loadMoreLogiM()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 class="gaming-mouse" style="text-align:center; width:100%" id="zowie-monitor">ZOWIE Monitor</h1>
                <div class="col-sm-12">
                    <div id="contentMonitor" class="row">
                        <c:forEach items="${list4MonitorLast}" var="o">
                            <div class="productMonitor col-12 col-md-3 col-lg-2">
                                <div id="zowie" class="card" style="margin: 10px 0;">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <p>${o.price} $</p>
                                        <div class="row">
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" title="View Product"><p id="zowie-button" class="btn btn-success btn-block">BUY</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button id="zowie-load" onclick="loadMoreZowieMonitor()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <!--            <div class="row" style="margin-top:50px">            
                            <div class="col-sm-12">
                                <div id="content" class="row">
                                    <div class=" col-12 col-md-12 col-lg-6">
                                        <div class="card-body" style="font-family: Arial, sans-serif;
                                             padding: 20px;
                                             text-align: center;">
                                            <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00; color: #fff;
                                                font-size: 24px;
                                                font-weight: bold;">About Us</h4>
                                            <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;color:#b57b00; color: #fff;
                                                font-size: 24px;
                                                font-weight: bold;">LDT Gear</h2>
                                            <p style="text-align:center;color: #fff;">LDTGear là thương hiệu được sinh ra từ giấc mơ của một game thủ, phát triển bởi tập thể các game thủ để phục vụ cho cộng đồng game thủ Việt.</p>
                                            <p style="text-align:center;color: #fff;">Đội ngũ tư vấn của LDTGear không đơn thuần là nhân viên kinh doanh, chúng tôi còn là những người yêu game với mong muốn giúp bạn cùng sở thích có được dàn máy và gear phù hợp.
            
                                                Sự hài lòng của khách hàng chính là động lực giúp GearVN không ngừng hoàn thiện, mang lại ngày càng nhiều giá trị tích cực cho cộng đồng.   </p>                  
                                        </div>  
                                    </div>
                                    <div class=" col-12 col-md-12 col-lg-6">
                                        <img class="card-img" style="border-radius: 5px " src="https://file.hstatic.net/200000722513/file/khuyen-mai-slider_8d11698460494236899f88fcbd3568eb.png" alt="Card image cap">        
                                    </div>
                                </div>
                            </div>
                        </div>-->

            <div class="row" style="margin-top:50px">
                <div class="col-sm-12">
                    <div id="content" class="row" style="display: flex; justify-content: center; align-items: center;">
                        <div class=" col-12 col-md-12 col-lg-6 position-relative">
                            <div class="background-overlay" style="position: absolute;
                                 top: 0;
                                 left: 0;
                                 width: 100%;
                                 height: 100%;
                                 background-color: rgba(0, 0, 0, 0.5);
                                 border-radius: 5px;"></div>
                            <div class="card-body" style="font-family: Arial, sans-serif;
                                 padding: 20px;
                                 text-align: center;
                                 position: relative; /* Đặt vị trí tương đối cho box */
                                 z-index: 1;"> <!-- Thêm z-index để chữ hiển thị trên lớp nền -->
                                <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00; color: #fff;
                                    font-size: 24px;
                                    font-weight: bold;">About Us</h4>
                                <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;color:#b57b00; color: #fff;
                                    font-size: 24px;
                                    font-weight: bold;">TGear</h2>
                                <p style="text-align:center;color: #fff;">TGear là thương hiệu được sinh ra từ giấc mơ của một game thủ, phát triển bởi tập thể các game thủ để phục vụ cho cộng đồng game thủ Việt.</p>
                                <p style="text-align:center;color: #fff;">Đội ngũ tư vấn của TGear không đơn thuần là nhân viên kinh doanh, chúng tôi còn là những người yêu game với mong muốn giúp bạn cùng sở thích có được dàn máy và gear phù hợp.

                                    Sự hài lòng của khách hàng chính là động lực giúp GearVN không ngừng hoàn thiện, mang lại ngày càng nhiều giá trị tích cực cho cộng đồng.   </p>
                            </div>
                        </div>
                        <div class=" col-12 col-md-12 col-lg-6">
                            <img class="card-img" style="border-radius: 5px " src="https://haiphongcomputer.vn/wp-content/uploads/2022/05/BANNER-THU-CU-DOI-MOI-scaled.jpg" alt="Card image cap">
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="Footer.jsp"></jsp:include>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script>

                        function loadMore() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/LDTGear/load",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML += data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function loadMoreLogiM() {
                            var amountLogiM = document.getElementsByClassName("productLogiM").length;
                            $.ajax({
                                url: "/LDTGear/loadLogiM",
                                type: "get", //send it through get method
                                data: {
                                    exitsLogiM: amountLogiM
                                },
                                success: function (dataLogiM) {
                                    document.getElementById("contentLogiM").innerHTML += dataLogiM;

                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function loadMoreRazerM() {
                            var amountRazerM = document.getElementsByClassName("productRazerM").length;
                            $.ajax({
                                url: "/LDTGear/loadRazerMice",
                                type: "get", //send it through get method
                                data: {
                                    exitsRazerM: amountRazerM
                                },
                                success: function (dataRazerM) {
                                    document.getElementById("contentRazerM").innerHTML += dataRazerM;

                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }

                        function loadMoreZowieMonitor() {
                            var amountMonitor = document.getElementsByClassName("productMonitor").length;
                            $.ajax({
                                url: "/LDTGear/loadMonitor",
                                type: "get", //send it through get method
                                data: {
                                    exitsMonitor: amountMonitor
                                },
                                success: function (dataZowieMonitor) {
                                    document.getElementById("contentMonitor").innerHTML += dataZowieMonitor;

                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function loadMoreRazerKB() {
                            var amountRazerKB = document.getElementsByClassName("productRazerKB").length;
                            $.ajax({
                                url: "/LDTGear/loadRazerKB",
                                type: "get", //send it through get method
                                data: {
                                    exitsRazerKB: amountRazerKB
                                },
                                success: function (dataRazerKB) {
                                    document.getElementById("contentRazerKB").innerHTML += dataRazerKB;

                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function loadMoreRazerH() {
                            var amountRazerH = document.getElementsByClassName("productRazerH").length;
                            $.ajax({
                                url: "/LDTGear/loadRazerHeadset",
                                type: "get", //send it through get method
                                data: {
                                    exitsRazerH: amountRazerH
                                },
                                success: function (dataRazerH) {
                                    document.getElementById("contentRazerH").innerHTML += dataRazerH;

                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function searchByName(param) {
                            var txtSearch = param.value;
                            $.ajax({
                                url: "/LDTGear/searchAjax",
                                type: "get", //send it through get method
                                data: {
                                    txt: txtSearch
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function load(cateid) {
                            $.ajax({
                                url: "/LDTGear/category",
                                type: "get", //send it through get method
                                data: {
                                    cid: cateid
                                },
                                success: function (responseData) {
                                    document.getElementById("content").innerHTML = responseData;
                                }
                            });
                        }
                        function loadAmountCart() {
                            $.ajax({
                                url: "/LDTGear/loadAllAmountCart",
                                type: "get", //send it through get method
                                data: {

                                },
                                success: function (responseData) {
                                    document.getElementById("amountCart").innerHTML = responseData;
                                }
                            });
                        }
            </script>  


            <!-- MDB -->
            <script type="text/javascript" src="js/mdb.min.js"></script>
            <!-- Custom scripts -->
            <script type="text/javascript" src="js/script.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="js/javasc.js"></script>
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
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>

