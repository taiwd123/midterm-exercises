<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <%--    <link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
    <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="<c:url value="https://code.jquery.com/jquery-3.2.1.slim.min.js" /> " integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"/>" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"/> " integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="template/header.jsp"/>
<div class="container">
    <div class="row mb-3" style="margin-top: 80px">
        <div class="col-lg-8" style="background-color: #cccccc; border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
            <div class="form-group">
                <c:if test="${sqlStatement == null}">
                    <c:set var="sqlStatement" value="select * from Users" />
                </c:if>

                <h1 class="text-center mt-2">The SQL Gateway</h1>
                <p class="text-center">Enter an SQL statement and click the Execute button.</p>

                <p><b>SQL statement:</b></p>
                <form action="sqlGateway" method="post">
                    <div class="form-control">
                        <textarea class="form-control" name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
                    </div>

                    <input class="btn btn btn-success mt-2" type="submit" value="Execute">
                </form>

                <p><b>SQL result:</b></p>
                <div class="table" style="width: 100%">
                    ${sqlResult}
                </div>

            </div>
        </div>
    </div>

</div>

</body>
</html>