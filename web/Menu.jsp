<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <link rel="stylesheet" href="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap')
        </style>
        <style>

            .nav-link {
                display: flex;
                align-items: center; /* Căn dòng Hello name và icon theo chiều dọc */
            }

            .nav-item {
                position: relative;
                margin-right: 20px;
            }
            .nav-link:hover + .nav-item::after,
            .nav-item:hover::after {
                width: calc(100%);
            }
            .nav-link {
                display: inline-block;
                position: relative;
            }

            .nav-link img {
                width: 30px;
                height: 30px;
                border-radius: 50%;
                transition: transform 0.3s;
            }

            .nav-link {
                display: inline-block;
                position: relative;
                overflow: hidden;
            }

            .nav-link:hover {
                transform: scale(1.3);
                transition: transform 0.3s;
            }

            #cartbutton {
                color: #E30019;
                background-color: #fff !important;
            }

            .skin-light .btn-success:hover {
                background-color: #fff !important;
            }
            .btn .badge {
                position: relative;
                top: -17px;
                left: 2px;
            }
            #gio{
                position: relative;
                top: -17px;
                left: 18px;
            }
            #hang{
                position: relative;
                top: 4px;
                left: -13px;
            }
            #iconspc{
                position: relative;
                left: 17px;
            }
            .skin-light .badge-light{
                background-color: yellow !important;
            }
        </style>
    </head>
    <body>
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-light" style="position: fixed; top: 0; width:100%;  z-index: 100000; background-color: #87673a">
            <div class="container">
                <a href="home"><img src="images/gaming gear (2).png" width="90px" height="auto" alt="alt"/></a>
                <!--                <a class="navbar-brand" style="color: white; margin-left: 7px"  href="home">LDTGear</a>-->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--                <section class="mb-4">
                                    <div class="md-form md-outline mt-0 d-flex justify-content-between align-items-center">
                                        <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control mb-0" placeholder="Search...">
                                        <a href="#!" class="btn btn-flat btn-md px-3 waves-effect"><i class="fas fa-search fa-lg"></i></a>
                                    </div>
                                </section>-->
                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="home" style="display: flex; flex-direction: column; align-items: center;">
                                <i class="fa-solid fa-house fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                <br>
                                <i style="color: #fff">Home</i>
                                <!--<img src="images/home_10536099.png" alt="Avatar" style="width: 50px; height: 50px; border-radius: 50%; margin-right: 5px;">-->
                            </a>
                            <!--<a class="nav-link">Home</a>-->
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="shop" style="display: flex; flex-direction: column; align-items: center;">    
                                <i class="fa-solid fa-shop fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                <br> 
                                <i style="color: #fff">Shop</i>
                                <!--<img src="images/shopping-cart.png" alt="Avatar" style="width: 30px; height: 30px;margin-right: 5px;">-->
                            </a>
                            <!--<a class="nav-link">Shop</a>-->
                        </li> 

                        <%--<c:if test="${sessionScope.acc.isSell == 1}">--%>
                        <!--                            <li class="nav-item">
                                                        <a class="nav-link" href="manager" style="display: flex; flex-direction: column; align-items: center; text-align: center;">
                                                            <i class="fa-solid fa-layer-group fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                                            <br> 
                                                            <i style="color: #fff">Manager Product</i>
                                                        </a>
                                                    </li>-->
                        <%--</c:if>--%>
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="EditProfile.jsp" style="display: flex; flex-direction: column; align-items: center; text-align: center;">
                                    <i class="fa-solid fa-user fa-2xl" style="color: #fff;margin-top: 12px;"></i>
                                    <br>
                                    <!--<img src="images/staff_1319004.png" alt="" style="width: 50px; height: 50px; border-radius: 50%; margin-bottom: 5px; align-items: center;">-->
                                    <span style="color: #fff;">${sessionScope.acc.user}</span>
                                </a>
                            </li>
                        </c:if>
                        <%--<c:if test="${sessionScope.cart == null || sessionScope.cartSize == 0}">--%>
                        <li class="nav-item">
                            <a class="nav-link" href="#" style="display: flex; flex-direction: column; align-items: center;">
                                <i class="fa-solid fa-bell fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                <br> 
                                <i style="color: #fff">Notify</i>
                                <!--<img src="images/exit.png" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin-right: 5px;">-->
                            </a>
                        </li> 
                        <!--                            <span style="color: black" class="header__cart-list--no-cart-msg">Nothing now!</span>
                                                    <img src="images/emptycart.png" alt="Emptycart" style=" width: 60%;">-->
                        <%--</c:if>--%>
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="logout" style="display: flex; flex-direction: column; align-items: center;">
                                    <i class="fa-solid fa-right-to-bracket fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                    <br> 
                                    <i style="color: #fff">Logout</i>
                                    <!--<img src="images/exit.png" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin-right: 5px;">-->
                                </a>
                            </li> 
                        </c:if>

                        <!--                            <li class="nav-item">
                                                        <a class="nav-link" href="EditProfile.jsp" style="display: flex; flex-direction: column; align-items: center;">
                                                            <i class="fa-solid fa-user fa-xl" style="color: #ae00ff;margin-top: 12px;"></i>
                                                            <br> 
                                                            <i style="color: #fff">Profile</i>
                                                            <img src="images/bell_12661568.png" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin-right: 5px;">
                                                        </a>
                                                    </li>-->
                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="admin" style="display: flex; flex-direction: column; align-items: center;">
                                    <i class="fa-solid fa-user-tie fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                    <br> 
                                    <i style="color: #fff">Admin Management</i>
                                    <!--<i class="fa-solid fa-right-to-bracket" style="color: #ae00ff;"></i>-->
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="login" style="display: flex; flex-direction: column; align-items: center;">
                                    <i class="fa-solid fa-power-off fa-xl" style="color: #fff;margin-top: 12px;"></i>
                                    <br> 
                                    <i style="color: #fff">Login</i>
                                    <!--<i class="fa-solid fa-right-to-bracket" style="color: #ae00ff;"></i>-->
                                </a>
                            </li>
                        </c:if>
                        <%--<c:if test="${sessionScope.acc == null}">--%>
                        <!--                            <li class="nav-item">
                                                        <a class="nav-link" href="forgotPassword" style="display: flex; flex-direction: column; align-items: center;">
                                                            <i class="fa-solid fa-eye-slash fa-xl" style="color: #ae00ff;margin-top: 12px;"></i>
                                                            <br> 
                                                            <i style="color: #fff">Forgot Password</i>
                                                        </a>
                                                    </li>-->
                        <%--</c:if>--%>
                        <%--<c:if test="${sessionScope.acc != null}">--%>
                        <!--                    <li class="nav-item">
                                                <a class="nav-link" href="EditProfile.jsp">
                                                    <img src="images/bell_12661568.png" alt="Avatar" style="width: 30px; height: 30px; border-radius: 50%; margin-right: 5px;">
                                                </a>
                                            </li>-->
                        <%--</c:if>--%>
                        <%--  <c:if test="${sessionScope.acc.isAdmin == 1}">
                             <li class="nav-item">
                                 <a class="nav-link" href="statistic">Statistic</a>
                             </li>
                         </c:if> --%>
                    </ul>

                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <a id="cartbutton" class="btn btn-success btn-sm ml-3" href="managerCart">
                            <i id="iconspc" class="fa fa-shopping-cart" style="color: #8f6933; font-size: 25px"></i>
                            <span style="font-size: 14px;color: #deae6a">
                                <b>
                                    <span id="amountCart" class="badge" style="color:black; background-color: #deae6a; font-size: 12px; border-radius: 50%;"></span>
                                </b>
                            </span>
                            <!--<b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>-->
                            <span id="gio" style="font-size: 14px;color: #8f6933">Giỏ</span>
                            <span id="hang" style="font-size: 14px;color: #8f6933">Hàng</span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>


        <!--end of menu-->
    </body>
</html>



