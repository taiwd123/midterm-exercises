<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        .table th, .table td {
            vertical-align: middle !important;
            text-align: center;
        }

        .table {
            margin-bottom: 0 !important;
        }
    </style>
</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>
<div class="container">
    <div class="row" style="margin-top: 80px">
        <div class="col-lg-8" style="background-color: #cccccc; border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
            <div class="text-center mt-2">
                <p class="h1">Cookies</p>
                <p>Here's a table with all of the cookies that this browser is sending to the current server.</p>
            </div>
            <form onsubmit="preventDefault()">

                        <div class="table-responsive form-group  border border-light" style="margin-top: 20px; border-radius: 3px">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Value</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${cookie}">
                                    <tr>
                                        <td>${c.value.name}</td>
                                        <td>${c.value.value}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                <div class="form-group">
                    <p><a href="download?action=viewAlbums">View list of albums</a></p>
                    <p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>
                </div>
            </form>

        </div>
    </div>
</div>





</body>
</html>