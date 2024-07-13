
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            body{
                /*background-color: #512da8;*/
                background: linear-gradient(to right, #fad7d7, #fccccc) !important;
            }
            .password-container {
                position: relative;
                width: 100%;
            }

            /*            .eye-icon {
                            position: absolute;
                            right: 10px;
                            top: 50%;
                            transform: translateY(-50%);
                            cursor: pointer;
                        }*/
            i[id='iconsee']:hover {
                color: rgba(0, 0, 0, 0.5);
            }

            i#iconsee {
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
            }
            /*            #back {
                            display: flex;
                            align-items: center;
                            margin-bottom: 10px;
                        }
                        #back i, a{
                            text-decoration: none;
                        }
                        #back {
                            margin: 0 50px;
                        }*/
            .toggle{
                background-color: #8f6933;
                background: linear-gradient(to right, #a66303, #8f6933);
            }
            .container button {
                background-color: #8f6933;
            }
        </style>
        <title>Login Page | LDT</title>
    </head>

    <body>

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
        <%--<jsp:include page="Menu.jsp"></jsp:include>--%>
        <%--<c:if test="${sessionScope.account==null}">--%>
        <a href="home"class="back" style="position: absolute; top: 40px; left: 100px;" >
            <i class="fa-solid fa-arrow-right fa-flip-horizontal fa-2xl" style="color: #8f6933;"></i>
        </a>
        <div class="container" id="container">
            <div class="form-container sign-up">
                <form action="signup" method="post">
                    <h1>Create Account</h1>
                    <div class="social-icons">
<!--                        <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>-->
                    </div>
                    <!--<span>or use your email for registeration</span>-->
                    <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                    <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                    <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                    <input name="email" type="email" id="email" class="form-control" placeholder="Email" required="" autofocus="">
                    <button class="btn btn-primary btn-block" type="submit">Sign Up</button>                
                </form>
            </div>
            <div class="form-container sign-in">
                <form action="login" method="post">             
                    <h1>Sign In</h1>
                    <div class="social-icons">
<!--                        <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>-->
                    </div>
                    <!--<span>or use your account</span>-->

                    <div class="password-container">
                        <input name="user" value="${username}" id="inputEmail" class="form-control" type="text" placeholder="Username" required="" autofocus="">
                    </div>               
                    <div class="password-container">
                        <input name="pass" value="${password}" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                        <!--                        <i class="fa-solid fa-eye eye-icon"></i>-->
                        <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                    </div>
                    <div> 
                        <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1" style=";margin-right: 6px; width: 15px; height: 15px">
                        <label class="form-check-label" for="exampleCheck1" style="font-size: 13px;">Remember me</label>
                    </div>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="forgotPassword">Forget Your Password?</a>
                    </c:if>
                    <button>Sign In</button>                   
                </form>
            </div>

            <div class="toggle-container">
                <div class="toggle">
                    <div class="toggle-panel toggle-left">
                        <h1>Welcome Back!</h1>
                        <p>Enter your personal details to use all of site features</p>
                        <button class="hidden" id="login">Sign In</button>
                    </div>
                    <div class="toggle-panel toggle-right">
                        <h1>Hello, Friend!</h1>
                        <p>Register with your personal details to use all of site features</p>
                        <button class="hidden" id="register">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/script.js"></script>
        <script>
                            function changeIcon(obj) {
                                var inputP = document.querySelector("#inputPassword");
                                console.log(inputP)
                                if (obj.className == 'fa-solid fa-eye-slash') {
                                    obj.className = 'fa-solid fa-eye';
                                    inputP.type = 'text';
                                } else {
                                    obj.className = 'fa-solid fa-eye-slash';
                                    inputP.type = 'password';
                                }
                            }
        </script>
        <!--        <script>
                    function toggleResetPswd(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle() // display:block or none
                        $('#logreg-forms .form-reset').toggle() // display:block or none
                    }
        
                    function toggleSignUp(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle(); // display:block or none
                        $('#logreg-forms .form-signup').toggle(); // display:block or none
                    }
        
                    $(() => {
                        // Login Register Form
                        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                        $('#logreg-forms #btn-signup').click(toggleSignUp);
                        $('#logreg-forms #cancel_signup').click(toggleSignUp);
                    })
        
                    window.addEventListener("load", function loadAmountCart() {
                        $.ajax({
                            url: "/WebsiteBanGiay/loadAllAmountCart",
                            type: "get", //send it through get method
                            data: {
        
                            },
                            success: function (responseData) {
                                document.getElementById("amountCart").innerHTML = responseData;
                            }
                        });
                    }, false);
                </script>-->
        <%--</c:if>--%>
    </body>
</html>