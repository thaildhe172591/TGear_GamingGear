

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <!--Bootstrap core CSS-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!--Material Design Bootstrap-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!--Material Design Bootstrap Ecommerce-->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
        <!--Your custom styles (optional)-->
        <style>
            .text-dark {
                font-weight: 700;
                color: #212121 !important;
            }
            * {
                font-family: "Roboto Mono", monospace;
                margin: 0;
                padding: 0;
            }
            .shopping-cart{
                margin-top: 80px;
            }
            .btn-success {
                color: #fff;
                background-color: #8f6933;
                border-color: #fff;
            }
            .btn-success:hover {
                background-color: #8f6933 !important;
            }
            /*            .btn-group-sm .btn, .btn-sm {
                            padding: 11px 21px 10px 21px;
                            font-size: .875rem;
                            line-height: 1.5;
                            border-radius: 0.2rem;
                        }*/
            .btn.btn-sm {
                padding: 11px 21px 10px 21px;
                font-size: .64rem;
            }
            /*            #cartbutton {
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
                            left: -12px;
                        }
                        #iconspc{
                            position: relative;
                            left: 17px;
                        }
                        .skin-light .badge-light{
                            background-color: yellow !important;
                        }*/
        </style>
    </head>

    <body onload="loadTotalMoney()">
        <jsp:include page="Menu.jsp"></jsp:include>
        <c:if test="${not empty errorMessage}">
            <script>
                // Hiển thị cửa sổ thông báo với nội dung của errorMessage
                alert("${errorMessage}");
            </script>
        </c:if>
        <div class="shopping-cart">
            <div class="px-4 px-lg-0">
                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
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
                                        <tr>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="p-2 px-3 text-uppercase">PRODUCT NAME</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">PRICE</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">COLOR</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Delivery</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Mode</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">QUANTITY</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">REFUND</div>
                                                <!--<img src="images/z5566742380043_23d8c3ad032551431ceac76a7d3ee4f1.jpg" alt="alt"/>-->
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listCart}" var="o">
                                                <c:forEach items="${listProduct}" var="p">
                                                    <c:if test="${o.productID == p.id}">
                                                        <tr>
                                                            <th scope="row">
                                                                <div class="p-2">
                                                                    <a href="detail?pid=${p.id}">
                                                                        <img src="${p.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                                    </a>
                                                                    <div class="ml-3 d-inline-block align-middle">
                                                                        <h5 class="mb-0"> <a href="detail?pid=${p.id}" class="text-dark d-inline-block">${p.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                                    </div>
                                                                </div>
                                                            </th>
                                                            <td class="align-middle"><strong>${p.price}$</strong></td>
                                                            <td class="align-middle"><strong>${p.color}</strong></td>
                                                            <td class="align-middle"><strong>${p.delivery}</strong></td>

                                                            <td class="align-middle">
                                                                <strong>${o.size}</strong>
                                                            </td>

                                                            <td class="align-middle" id="amountCart">
                                                                <a href="subAmountCart?productID=${o.productID}&amount=${o.amount}"><button class="btnSub">-</button></a> 
                                                                <strong>${o.amount}</strong>
                                                                <a href="addAmountCart?productID=${o.productID}&amount=${o.amount}"><button class="btnAdd">+</button></a>
                                                            </td>
                                                            <td class="align-middle"><a href="deleteCart?productID=${o.productID }" class="text-dark">
                                                                    <button type="button" class="btn" style="background-color: #8f6933; color: #fff;">Delete</button>
                                                                </a>
                                                            </td>
                                                        </tr> 
                                                    </c:if>
                                                </c:forEach>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">

                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>

                                <div class="p-4">
                                    <ul class="list-unstyled mb-4" id="contentTotalMoney">
                                        <!--                                          <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>100 $</strong></li>
                                                                                 <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                                                                 <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>10 $</strong></li>
                                                                                 <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                                                                     <h5 class="font-weight-bold">110 $</h5>
                                                                                 </li> -->
                                    </ul><a href="order" class="btn rounded-pill py-2 btn-block text-white" style="background-color: #8f6933">Thanh Toán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                function loadTotalMoney() {
                    $.ajax({
                        url: "/LDTGear/totalMoneyCart",
                        type: "get", //send it through get method
                        data: {

                        },
                        success: function (responseData) {
                            document.getElementById("contentTotalMoney").innerHTML = responseData;
                        }
                    });
                }

                window.addEventListener("load", function loadAmountCart() {
                    $.ajax({
                        url: "/LDTGear/loadAllAmountCart",
                        type: "get", //send it through get method
                        data: {

                        },
                        success: function (responseData) {
                            document.getElementById("amountCart").innerHTML = responseData;
                        }
                    });
                }, false);
        </script>
    </body>

</html>
</html>