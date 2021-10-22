<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/13/2021
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


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
    <link rel="stylesheet" href="<c:url value = "/assets/css/style.css"/>">
    <title>Murach's Java Servlets and JSP</title>

    <style>
        .center{
            text-align: center;
            border: solid 1px black;
        }
    </style>

</head>
<body>
<div class="row mt-3">
    <div class="col-md-3 "></div>
    <div class="col-md-6 block">
        <div class="card profile-box flex-fill">
            <div class="card-body">
                <h3 class="card-title">Exercise <a href="#" class="edit-icon" data-toggle="modal"
                                                   data-target="#experience_info"><i
                        class="fa fa-pencil"></i></a></h3>
                <div class="experience-box">
                    <ul class="experience-list">
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="<c:url value = "/registerMail.jsp"/>" class="name">Email</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="<c:url value = "/survey.jsp"/>" class="name">Survey</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle "></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="<c:url value = "/list.jsp"/>" class="name">Download</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle "></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="<c:url value = "/SQLGateway.jsp"/>" class="name">SQLGateway</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="<c:url value = "/loadProducts"/>"class="name">Cart</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="https://github.com/taiwd123/midterm-exercises" target="_blank" class="name">Source Code</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="card profile-box flex-fill">
            <div class="card-body">
                <h3 class="card-title">About Group1 <a href="#" class="edit-icon" data-toggle="modal"
                                                       data-target="#experience_info"><i
                        class="fa fa-pencil"></i></a></h3>
                <div class="experience-box">
                    <table style="width: 700px" class="table table-striped">
                        <tr style="height: 32px">
                            <th class = "center">STT</th>
                            <th class = "center">Full Name</th>
                            <th class = "center">MSSV</th>
                        </tr>
                        <tr style="height: 32px">
                            <td class = "center">1</td>
                            <td class = "center">Hoàng Hữu Đức</td>
                            <td class = "center">19110349</td>
                        </tr>
                        <tr style="height: 32px">
                            <td class = "center">2</td>
                            <td class = "center">Phan Thanh Tài</td>
                            <td class = "center">19110452</td>
                        </tr>
                        <tr style="height: 32px">
                            <td class = "center">3</td>
                            <td class = "center">Hoàng Minh Thắng</td>
                            <td class = "center">19110462</td>
                        </tr>
                        <tr style="height: 32px">
                            <td class = "center">4</td>
                            <td class = "center">Bùi Văn Tính</td>
                            <td class = "center">19110478</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
