<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/14/2021
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="template/header.jsp"></jsp:include>
<div class="container">
    <div class="row" style="margin-top: 80px">
        <div class="col-lg-6" style="border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
            <div class="text-center">
                <p class="h1">Join our email list</p>
                <p>To join our email list, enter your name and email address below.</p>
            </div>
            <form onsubmit="preventDefault()" action="emailList" method="post">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="action" value="registerUser">
                <h3><%=request.getAttribute("msg") != null ?request.getAttribute("msg"): ""%></h3>
                <div class="form-group">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label class="form-label" for="validationCustom01">First name</label>
                    <input type="text" name="firstName" class="form-control" id="validationCustom01" placeholder="First name"  required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label" for="validationCustom02">Last name</label>
                    <input type="text" name="lastName" class="form-control" id="validationCustom02" placeholder="Last name"  required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="text-center form-group">
                    <button type="submit" value="Join Now"  class="btn btn-primary">Join Now</button>
                </div>

            </form>
        </div>
    </div>
</div>



</body>
</html>