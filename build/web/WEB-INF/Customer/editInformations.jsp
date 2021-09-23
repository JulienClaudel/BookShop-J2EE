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
                <li class="breadcrumb-item active" aria-current="page">Edit my informations</li>
            </ol>
        </nav>
        <%-- /Navbar --%>


        <%-- Slide --%>
        <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="ressources/pics/register_slide7.jpg" alt="register picture">
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
                            <a class="outdoors text-dark text-decoration-none myInformations" href="">My informations</a>
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
                                <form method="post" class="needs-validation" action="registercustomer">
                                    <div class="col">

                                        <%-- SOCIAL TITLE --%>
                                        <div class="mb-2">
                                            <label for="editSocial" class="col-form-label titleAccount">Social title: </label>
                                        </div>
                                        <div class="mb-4">
                                            <select type="text" class="form-control" name="editSocial" id="editSocial">
                                                <c:if test="${ empty customer.socialTitleLabel }">
                                                    <option value="">Choose...</option>
                                                    <option value="1">Madam</option>
                                                    <option value="2">Mister</option>
                                                </c:if>
                                                <c:set var="item" value="${ customer.socialTitleLabel }"/>
                                                <c:if test="${ customer.socialTitleId == 1 }">
                                                    <option selected="" value="1">Madam</option>
                                                    <option value="2">Mister</option>
                                                </c:if>
                                                <c:if test="${ customer.socialTitleId == 2 }">
                                                    <option selected="" value="2">Mister</option>
                                                    <option value="1">Madam</option>
                                                </c:if>
                                            </select>
                                        </div>
                                        <%-- /SOCIAL TITLE --%>

                                        <%-- FIRST NAME --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editFirstname">First name:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" name="editFirstname" id="editFirstname" value="${ customer.firstname }">
                                        </div>
                                        <%-- /FIRST NAME --%> 

                                        <%-- LAST NAME --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editLastname">Last name:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" name="editLastname" id="editLastname" value="${ customer.lastname }">
                                        </div>
                                        <%-- /LAST NAME --%> 

                                        <%-- PASSWORD --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editPassword">Password:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="password" class="form-control" name="editPassword" id="editPassword" value="${ customer.password }">
                                        </div>
                                        <%-- /PASSWORD --%> 
                                    </div>

                                    <div class="col">

                                        <%-- EMAIL ADDRESS --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editMail">Email address:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" name="editMail" id="editMail" value="${ customer.mail }">
                                        </div>
                                        <%-- /EMAIL ADDRESS --%> 

                                        <%-- BIRTHDATE --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editBirthdate">Birthdate:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" name="editBirthdate" id="editBirthdate" value="${ customer.birthdate }">
                                        </div>
                                        <%-- /BIRTHDATE --%>

                                        <%-- PHONE NUMBER --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editPhone">Phone number:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" name="editPhone" id="editPhone" value="${ customer.phone }">
                                        </div>
                                        <%-- /PHONE NUMBER --%> 

                                        <%-- CONFIRM PASSWORD --%>
                                        <div class="mb-2">
                                            <label class="titleAccount" for="editPassword">Confirm password:</label>
                                        </div>
                                        <div class="mb-4">
                                            <input type="password" class="form-control" name="editPassword" id="editPassword" value="${ customer.password }">
                                        </div>
                                        <%-- /CONFIRM PASSWORD --%>
                                    </div>

                                    <input type="hidden" name="section" value="editInformations"/>
                                    <button type="submit" class="btn btn-secondary">Save modifications</button>
                                </form>

                            </div>
                        </section>
                        <%-- /ACCOUNT INFORMATIONS SECTION --%>


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
