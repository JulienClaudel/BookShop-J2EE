<%-- 
    Document   : showCustomer
    Created on : 3 oct. 2020, 13:02:16
    Author     : agrev
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" >
        <link rel="stylesheet" href="ressources/css/styles.css" >
        <link rel="stylesheet" href="ressources/css/signIn.css" >
        <script type="text/javascript" src="ressources/js/jquery-3.5.1.js"></script>
        <script type="text/javascript" src="ressources/js/popper.min.js"></script>
        <script type="text/javascript" src="ressources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%-- Header --%>
        <jsp:include page="/header.jsp" flush="false" />

        <%-- Navbar --%>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="controller">Home</a></li>
                <li class="breadcrumb-item"><a href="logincustomer?section=dashboard">Account</a></li>
                <li class="breadcrumb-item active" aria-current="page">Consult my comments</li>
            </ol>
        </nav>
        <%-- /Navbar --%>

        <%-- Slide --%>
        <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="ressources/pics/register_slide4.jpg" alt="register picture">
                </div>
            </div>
        </div>
        <%-- /Slide --%>

        <%-- Space --%>
        <div class="mt-5"></div>
        <%-- /Space --%>

        <%-- Main --%>
        <div class="album py-4">
            <div class="container-fluid paddingBis">
                <div class="row">

                    <%-- Space --%>
                    <div class="col-md-1"></div>
                    <%-- /Space --%>

                    <%-- Sidebar --%>
                    <div class="col-md-2 d-none d-md-block bg-light sidebar">


                        <h4>My account</h4>
                        <hr>

                        <div>    
                            <a class="outdoors text-dark text-decoration-none myDashboard" href="logincustomer?section=dashboard">My dashboard</a>
                        </div>
                        <div>    
                            <a class="outdoors text-dark text-decoration-none myInformations" href="logincustomer?section=editInformations">My informations</a>
                        </div>
                        <div >    
                            <a class="outdoors text-dark text-decoration-none myAddressBook" href="logincustomer?section=showAddressBook">My address book</a>
                        </div>
                        <div>  
                            <a class="outdoors text-dark text-decoration-none myOrders" href="logincustomer?section=showOrder">My orders</a>
                        </div>
                        <div>    
                            <a class="outdoors text-dark text-decoration-none myComments" href="">My comments</a>
                        </div>
                        <div>    
                            <a class="outdoors text-dark text-decoration-none disconnect" href="logincustomer?section=disconnection">Disconnect</a>
                        </div>


                    </div>
                    <div class="col-md-1"></div>
                    <%-- /Sidebar --%>

                    <%-- Main container --%>
                    <div class="col-md-6">
                        

                        <%-- COMMENTS SECTION --%>
                        <h4 class="subcategory">MY COMMENTS</h4>
                        <hr>
                        <section>
                            <div class="row">
                                <div class="col">
                                    <table>
                                        <thead class="titleAccount">
                                            <tr>
                                                <th scope="col">Date</th>
                                                <th scope="col">Book title</th>
                                                <th scope="col">Comment</th>
                                                <th scope="col">Note</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${ listComments }">
                                            <tr>
                                                <td>${ item.orderDate }</td>
                                                <td>${ item.title }</td>
                                                <c:if test="${ item.commentText == NULL }">
                                                    <td>Any comment yet</td>
                                                </c:if>
                                                <c:if test="${ item.commentText != NULL }">
                                                    <td>${ item.commentText }</td>
                                                </c:if>

                                                <td><c:set var="score" value="${ item.commentNote }"/>
                                                    <c:if test="${score == NULL || score == 0}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${score == 1}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> X ratings
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${score == 2}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> X ratings
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${score == 3}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> X ratings
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${score == 4}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> X ratings
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${score == 5}">
                                                        <div>
                                                            <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> X ratings
                                                        </div>
                                                    </c:if>
                                                </td>
                                                <td><a href="#">Details</a></td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </section>
                        <%-- /COMMENTS SECTION --%>
                    </div>
                    <div class="col-md-3"></div>
                    <%-- /Main container --%>


                </div>
            </div>
        </div>
        <%-- /Main --%>

        <%-- Space --%>
        <div class="mb-5"></div>
        <%-- /Space --%>


        <%-- Footer --%>
        <jsp:include page="/footer.jsp" flush="false" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script>
        <script src="ressources/js/jquery.paginate.js"></script>
    </body>
</html>
