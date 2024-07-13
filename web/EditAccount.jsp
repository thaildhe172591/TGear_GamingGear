

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Administration</h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editAccount">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editAccount" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Administration</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <!--                          <label>ID</label> -->
                                    <input value="${infor.id}" name="id" type="hidden" class="form-control" readonly required>
                                </div> 
<!--                                <div class="form-group">
                                    <label>User</label>
                                    <input value="${infor.user}" name="user" type="text" class="form-control" required>
                                </div>-->
<!--                                <div class="form-group">
                                    <label>Pass</label>
                                    <input value="${infor.pass}" name="pass" type="text" class="form-control" required>
                                </div>-->
                                <div class="form-group">
                                    <label>isSell</label>
                                    <input value="${infor.isSell}" name="isSell" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>isAdmin</label>
                                    <input value="${infor.isAdmin}" name="isAdmin" type="text" class="form-control" required>
                                </div>
<!--                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${infor.email}" name="email" type="text" class="form-control" required>
                                </div>-->
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>