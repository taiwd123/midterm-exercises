<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/31/2021
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>
<div class="container" style="padding-top: 50px">
    <div class="row" style="margin-top: 80px">
        <div class="col-lg-6 pt-2" style="margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
            <div class="text-center mt-5">
                <p class="h1">Thanks for joining our email list</p>
                <p>Here's a table with all of the cookies that this browser is sending to the current server.</p>
                <form onsubmit="preventDefault()"\ action="ForwardHome" method="get">
                    <div class="form-group">
                        <label >Email:</label>
                        <span>${user.email}</span>
                    </div>
                    <div class="form-group">
                        <label>First Name:</label>
                        <span>${user.firstName}</span>
                    </div>
                    <div class="form-group">
                        <label>Last Name:</label>
                        <span>${user.lastName}</span><br>
                    </div>
                    <div class="form-group">
                        <input class="btn btn-secondary" type="submit" value="Return">
                    </div>
                    <input type="hidden" name="action" value="join">

                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
