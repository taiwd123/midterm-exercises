<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<jsp:include page="template/header.jsp"></jsp:include>

<div class="container">
  <div class="row" style="margin-top: 80px">
    <div class="col-lg-8" style="background-color: #cccccc; border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
      <div class="text-center mt-2">
        <p class="h1">LIST CD</p>
      </div>
          <div class="table-responsive form-group  border border-light" style="margin-top: 20px; border-radius: 3px">
            <table class="table mb-0">
              <thead class="table table-striped table-hover">
              <tr>
                <th class="text-center " scope="col">Description</th>
                <th class="text-center " scope="col">Price</th>
                <th class="text-center " scope="col"></th>
              </tr>
              </thead>
              <c:forEach items="${sessionScope.list}" var="procduct">
                <tr>
                  <td>${procduct.description}</td>
                  <td class="right">${procduct.price}</td>
                  <td>
                    <form action="cart" method="post">
                      <input type="hidden" name="productCode" value="${procduct.code}">
                      <input type="submit" value="Add To Cart">
                    </form>
                  </td>
                </tr>
              </c:forEach>
              <%--<tr>
                <td>86 (the band) - True Life Songs and Pictures</td>
                <td class="right">$14.95</td>
                <td><form action="cart" method="post">
                  <input type="hidden" name="productCode" value="8601">
                  <input type="submit" value="Add To Cart">
                </form></td>
              </tr>--%>
              <%--<tr>
                <td>Paddlefoot - The first CD</td>
                <td class="right">$12.95</td>
                <td><form action="cart" method="post">
                  <input type="hidden" name="productCode" value="pf01">
                  <input type="submit" value="Add To Cart">
                </form></td>
              </tr>
              <tr>
                <td>Paddlefoot - The second CD</td>
                <td class="right">$14.95</td>
                <td><form action="cart" method="post">
                  <input type="hidden" name="productCode" value="pf02">
                  <input type="submit" value="Add To Cart">
                </form></td>
              </tr>
              <tr>
                <td>Joe Rut - Genuine Wood Grained Finish</td>
                <td class="right">$14.95</td>
                <td><form action="cart" method="post">
                  <input type="hidden" name="productCode" value="jr01">
                  <input type="submit" value="Add To Cart">
                </form></td>
              </tr>--%>
            </table>
          </div>

    </div>
  </div>
</div>


</body>
</html>
