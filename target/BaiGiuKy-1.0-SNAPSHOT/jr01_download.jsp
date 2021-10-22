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
                <p class="h1">DOWNLOAD</p>
                <p>Joe Rut - Genuine Wood Grained Finish</p>
            </div>
            <form onsubmit="preventDefault()">

                        <div class="table-responsive form-group  border border-light" style="margin-top: 20px; border-radius: 3px">
                            <table class="table">
                                <thead class="thead-light">
                                <tr>
                                    <th class="text-center " scope="col">STT</th>
                                    <th class="text-center " scope="col">Song title</th>
                                    <th class="text-center " scope="col">Player</th>
                                    <th class="text-center " scope="col">Audio Format</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>You Are a Star</td>
                                    <td>
                                        <audio controls autoplay name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                                            <source src="<c:url value='/musicStore/bai2.mp3'/>" type="audio/mp3">
                                        </audio>
                                    </td>
                                    <td>
                                        <a href="<c:url value='/musicStore/bai2.mp3'/>" target="_blank"
                                           download="DuskTillDawn-ZaynSia">MP3</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Don't Make No Difference</td>
                                    <td>
                                        <audio controls autostart="0" name="media" controlsList="nodownload">  <%--controlsList="nodownload" không cho tải trong trình phát--%>
                                            <source src="<c:url value='/musicStore/bai1.mp3'/>" type="audio/mp3">
                                    </td>
                                    <td>
                                        <a href="<c:url value='/musicStore/bai1.mp3'/>" target="_blank"
                                           download="Don't Make No Difference">MP3</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                </div>
                <div class="form-group">
                    <p><a href="?action=viewAlbums">View list of albums</a></p>
                    <p><a href="?action=viewCookies">View all cookies</a></p>
                </div>
            </form>
        </div>
    </div>
</div>







</body>
</html>