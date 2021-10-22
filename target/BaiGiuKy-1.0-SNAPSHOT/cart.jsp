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

</head>
<body>
<jsp:include page="template/header.jsp"></jsp:include>

<div class="container">
  <div class="row" style="margin-top: 80px">
    <div class="col-lg-12" style="background-color: #cccccc; border-radius: 3px; margin: auto; box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;" >
      <div class="text-center mt-2">
        <p class="h1">Your cart</p>
      </div>
          <div class="table-responsive form-group  border border-light" style="margin-top: 20px; border-radius: 3px">
            <table class="table mb-0">
              <thead class="table table-striped table-hover">
              <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
                <th></th>
              </tr>
              </thead>
              <c:forEach var="item" items="${sessionScope.cart.items}">
                <tr>
                  <td>
                    <form action="" method="post">
                      <input type="hidden" name="productCode"
                             value="<c:out value='${item.product.code}'/>">
                      <input type=text name="quantity"
                             value="<c:out value='${item.quantity}'/>" id="quantity">
                      <input type="submit" value="Update" class="btn-success">
                    </form>
                  </td>
                  <td><c:out value='${item.product.description}'/></td>
                  <td>${item.product.priceCurrencyFormat}</td>
                  <td>${item.totalCurrencyFormat}</td>
                  <td>
                    <form action="" method="post">
                      <input type="hidden" name="productCode"
                             value="<c:out value='${item.product.code}'/>">
                      <input type="hidden" name="quantity"
                             value="0">
                      <input type="submit" value="Remove Item"  class="btn-danger" >
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </table>
          </div>
            <p class="mt-2"><b>To change the quantity</b>, enter the new quantity
              and click on the Update button.</p>

            <div class="d-flex justify-content-between mb-3">
              <form action="" method="post">
                <input type="hidden" name="action" value="shop">
                <input type="submit" value="Continue Shopping"  class="btn btn-secondary">
              </form>
              <br>
              <form action="" method="post">
                <input type="hidden" name="action" value="checkout">
                <input type="submit" value="Checkout"  class="btn btn-info">
              </form>
            </div>
  </div>
</div>
</div>




</body>
</html>