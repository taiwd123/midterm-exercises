<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>

<div class="container">
    <div class="row" style="margin-top: 80px">
        <div class="col-lg-6" style="background-color: #cccccc; border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
            <div class="text-center form-group">
                <p class="h1 mt-2">LIST OF ALBUMS</p>
                <p>Welcome back, ${cookie.firstNameCookie.value}</p>
            </div>

                    <ol>
                        <li>
                            <a href="<c:url value = "download?action=checkUser&amp;productCode=8601"/>">
                                86 (the band) - True Life Songs and Pictures
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value='download?action=checkUser&amp;productCode=pf01'/>">
                                Paddlefoot - The First CD
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="download?action=checkUser&amp;productCode=pf02"/> ">
                                Paddlefoot - The Second CD
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="download?action=checkUser&amp;productCode=jr01"/> ">
                                Joe Rut - Genuine Wood Grained Finish
                            </a>
                        </li>
                    </ol>
    </div>
</div>




</div>
</body>
</html>