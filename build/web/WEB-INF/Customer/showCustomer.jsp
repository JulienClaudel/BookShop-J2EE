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
                <li class="breadcrumb-item active" aria-current="page">Account / My dashboard</li>
            </ol>
        </nav>
        <%-- /Navbar --%>

        <%-- Slide --%>
        <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="ressources/pics/register_slide2.jpg" alt="register picture">
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
                            <a class="outdoors text-dark text-decoration-none myDashboard" href="">My dashboard</a>
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
                            <a class="outdoors text-dark text-decoration-none myComments" href="logincustomer?section=showComments">My comments</a>
                        </div>
                        <div>    
                            <a class="outdoors text-dark text-decoration-none disconnect" href="logincustomer?section=disconnection">Disconnect</a>
                        </div>


                    </div>
                    <div class="col-md-1"></div>
                    <%-- /Sidebar --%>

                    <%-- Main container --%>
                    <div class="col-md-6">
                        <%-- ACCOUNT INFORMATIONS SECTION --%>
                        <h4>ACCOUNT INFORMATIONS</h4>
                        <hr>
                        <section>
                            <div class="row">

                                <div class="col">

                                    <%-- FULL NAME --%>
                                    <label class="titleAccount" for="custoName">Name:</label>
                                    <c:if test="${ customer.socialTitleLabel == null || customer.lastname == null || customer.firstname == null}">
                                        <p><a href="logincustomer?section=editInformations">Register my full name</a></p>
                                    </c:if>
                                    <c:if test="${ customer.lastname != null || customer.firstname != null}">
                                        <p>${ customer.socialTitleLabel } ${ customer.firstname } ${ customer.lastname }</p>                                  
                                    </c:if>
                                    <%-- /FULL NAME --%> 

                                    <%-- EMAIL ADDRESS --%>
                                    <label class="titleAccount" for="custoMail">Email address:</label>
                                    <p>${ customer.mail }</p>  
                                    <%-- /EMAIL ADDRESS --%>

                                    <%-- BIRTHDATE --%>
                                    <label class="titleAccount" for="custoBirthdate">Birthdate:</label>
                                    <c:if test="${ customer.birthdate == null }">
                                        <p><a href="logincustomer?section=editInformations">Register my birthdate</a></p>
                                    </c:if>
                                    <c:if test="${ customer.birthdate != null }">
                                        <p>${ customer.birthdate }</p>
                                    </c:if>
                                    <%-- /BIRTHDATE --%>

                                </div>

                                <div class="col">

                                    <%-- PHONE NUMBER --%>
                                    <label class="titleAccount" for="custoPhone">Phone number:</label>
                                    <c:if test="${ customer.phone == null }">
                                        <p><a href="logincustomer?section=editInformations">Register a phone number</a></p>
                                    </c:if>
                                    <c:if test="${ customer.phone != null }">
                                        <p>${ customer.phone }</p>
                                    </c:if>
                                    <%-- /PHONE NUMBER --%>

                                    <%-- DATE SIGNIN --%>
                                    <label class="titleAccount" for="custoDateSignin">Member since:</label>
                                    <p>${ customer.dateSignIn }</p>
                                    <%-- /DATE SIGNIN --%>

                                </div>
                            </div>
                        </section>
                        <%-- /ACCOUNT INFORMATIONS SECTION --%>

                        <%-- ADDRESS BOOK SECTION --%>
                        <h4 class="subcategory">ADDRESS BOOK</h4>
                        <hr>
                        <section>
                            <div class="row">
                                <%-- INVOICE ADDRESS --%>
                                <div class="col">
                                    <ul>
                                        <div class="btn-group show">
                                            <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Invoice Adresses:
                                            </button>
                                            <div class="dropdown-menu">
                                                <c:forEach var="item" items="${ invAddresses }">
                                                    <p class="dropdown-item">${ item.labelAddress }</p>
                                                </c:forEach>
                                            </div>
                                        </div>

                                        <c:forEach begin="0" end="0" var="item" items="${ invAddresses }">
                                            <li>${ customer.socialTitleLabel } ${ item.firstname } ${ item.lastname }</li>
                                            <li>${ item.labelAddress }</li>   
                                            <li>${ item.companyAddress }</li>     
                                            <li>${ item.street }</li>   
                                            <li>${ item.street2 }</li>   
                                            <li>${ item.zip }</li>   
                                            <li>${ item.city }</li>   
                                            <li>${ item.country }</li>   
                                            </c:forEach>
                                    </ul>
                                </div>
                                <%-- /INVOICE ADDRESS --%>

                                <%-- DELIVERY ADDRESS --%>
                                <div class="col">
                                    <ul>
                                        <div class="btn-group show">
                                            <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Delivery addresses:
                                            </button>
                                            <div class="dropdown-menu">
                                                <c:forEach var="item" items="${ delAddresses }">
                                                    <p class="dropdown-item">${ item.labelAddress }</p>
                                                </c:forEach>
                                            </div>
                                        </div>

                                        <c:forEach begin="0" end="0" var="item" items="${ delAddresses }">
                                            <li>${ customer.socialTitleLabel } ${ item.firstname } ${ item.lastname }</li>
                                            <li>${ item.labelAddress }</li>   
                                            <li>${ item.companyAddress }</li>     
                                            <li>${ item.street }</li>   
                                            <li>${ item.street2 }</li>   
                                            <li>${ item.zip }</li>   
                                            <li>${ item.city }</li>   
                                            <li>${ item.country }</li>   
                                            </c:forEach>
                                    </ul>
                                </div>
                                <%-- /DELIVERY ADDRESS --%>
                            </div>
                        </section>
                        <%-- /ADDRESS BOOK SECTION --%>

                        <%-- ORDERS SECTION --%>
                        <h4 class="subcategory">LAST ORDER</h4>
                        <hr>
                        <section>
                            <div class="row">
                                <div class="col">
                                    <table>
                                        <thead class="titleAccount">
                                            <tr>
                                                <th scope="col">Date</th>
                                                <th scope="col">Order number</th>
                                                <th scope="col">Total</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <c:if test="${ lastOrder.orderDate != null || !empty lastOrder.orderDate }">
                                                    <td>${ lastOrder.orderDate }</td>
                                                    <td>${ lastOrder.orderNumber }</td>
                                                    <c:if test="${ lastOrder.orderNumber != null }">
                                                        <td>${ lastOrder.orderTotal }€</td>
                                                    </c:if>
                                                    <c:if test="${ lastOrder.orderNumber == null }">
                                                        <td></td>
                                                    </c:if>
                                                    <td><a href="logincustomer?section=showOrder">Details</a></td>
                                                </c:if>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </section>
                        <%-- /ORDERS SECTION --%>

                        <%-- COMMENTS SECTION --%>
                        <h4 class="subcategory">LAST COMMENT</h4>
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
                                            <tr>
                                                <c:if test="${ lastComment.orderDate != null || !empty lastComment.orderDate }">
                                                    <td>${ lastComment.orderDate }</td>
                                                    <td>${ lastComment.title }</td>
                                                    <c:if test="${ lastComment.commentText == NULL }">
                                                        <td>Any comment yet</td>
                                                    </c:if>
                                                    <c:if test="${ lastComment.commentText != NULL }">
                                                        <td>${ lastComment.commentText }</td>
                                                    </c:if>

                                                    <td><c:set var="score" value="${ lastComment.commentNote }"/>
                                                        <c:if test="${score == NULL || score == 0}">
                                                            <div>
                                                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${score == 1}">
                                                            <div>
                                                                <span>★</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span> X ratings
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${score == 2}">
                                                            <div>
                                                                <span>★</span><span>★</span><span>☆</span><span>☆</span><span>☆</span> X ratings
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${score == 3}">
                                                            <div>
                                                                <span>★</span><span>★</span><span>★</span><span>☆</span><span>☆</span> X ratings
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${score == 4}">
                                                            <div>
                                                                <span>★</span><span>★</span><span>★</span><span>★</span><span>☆</span> X ratings
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${score == 5}">
                                                            <div>
                                                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span> X ratings
                                                            </div>
                                                        </c:if>
                                                    </td>
                                                    <td><a href="logincustomer?section=showComments">Details</a></td>
                                                </c:if>
                                            </tr>
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
