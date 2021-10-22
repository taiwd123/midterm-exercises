<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/css/bootstrap.min.css"/>">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/css/font-awesome.min.css"/>">

    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/css/line-awesome.min.css"/>">

    <!-- Select2 CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/css/select2.min.css"/>">

    <!-- Datetimepicker CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/css/bootstrap-datetimepicker.min.css"/>">

    <!-- Tagsinput CSS -->
    <link rel="stylesheet" href="<c:url value = "/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"/>">

    <!-- Main CSS -->



</head>
<body>
<div>
    <jsp:include page="template/header.jsp"></jsp:include>
</div>


<div class="container" >
    <div  class="row " style="margin-top: 40px; margin-bottom: 40px">
        <div class="col-lg-8" style="border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px; background: linear-gradient(to right, #ffffff, #a3a7b0);">
            <div class="text-center mt-2">
                <p class="h1">SURVEY</p>
                <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
            </div>
                    <form class="needs-validation" onsubmit="preventDefault()" action="survey" method="post" novalidate>
                        <div class="form-group">
                            <label class="form-label h4">First name</label>
                            <input type="text" name = "firstName" class="form-control" placeholder="First name" value="" required>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please enter first name.
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label h4">Last name</label>
                            <input type="text" name="lastName" class="form-control" placeholder="Last name" value="" required>
                            <div class="valid-tooltip">
                                Looks good!
                            </div>
                            <div class="invalid-tooltip">
                                Please enter last name.
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label h4">Email address</label>
                            <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label class="form-label h4">How did you hear about us?</label><br>
                            <div class="form-check ">
                                <input type="checkbox" class="form-check-input" id="customCheck1">
                                <label class="form-check-label" for="customCheck1">Search Engine</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="customCheck2">
                                <label class="form-check-label" for="customCheck2">Word Of Mouth</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="customCheck3">
                                <label class="form-check-label" for="customCheck3">Other</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label h4">Would you like to receive announcements about new CDs and special offers?</label><br>
                            <div class="form-check form-check-inline">
                                <input type="radio" name="customRadio1" class="form-check-input" checked>
                                <label class="form-check-label" >Yes</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="radio" name="customRadio1" class="form-check-input">
                                <label class="form-check-label" >No</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label h4">Please contact me by:</label>
                            <select  id="inputState" class="form-select  form-control">
                                <option>Choose</option>
                                <option>Email or postal mail</option>
                                <option>Email only</option>
                                <option>Postal mail only</option>
                            </select>
                        </div>
                        <div class="text-center form-group">
                            <button class="btn btn-primary px-3" type="submit">Submit</button>
                        </div>
                    </form>

        </div>
    </div>
</div>

</body>
</html>