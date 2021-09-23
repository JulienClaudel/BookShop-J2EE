<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bookshop.beans.Products"%>
<%@page import="com.bookshop.beans.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to the Book shop</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="ressources/css/bootstrap.min.css" >
        <link rel="stylesheet" href="ressources/css/styles.css" >
        <link rel="stylesheet" href="ressources/css/product.css" >
        <script type="text/javascript" src="ressources/js/jquery-3.5.1.js"></script>
        <script type="text/javascript" src="ressources/js/popper.min.js"></script>
        <script type="text/javascript" src="ressources/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Adds library for slider -->
        <script src="ressources/js/slider.js"></script>


    </head>
    <body>
        <jsp:include page="/header.jsp" flush="false" />
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="controller">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Products</li>
            </ol>
        </nav>

        <!-- Display by -->
        <div class="album py-4 bg-light">
            <div class="row row2" >
                <div class="col-md-1"></div>
                <div class="col-md-2 selectBis2">
                    <form id="formP" name="product">
                        <select name="limit" id="input-limit" class="form-control selectBis" onchange="this.form.submit();" >
                            <option value="${All}" id="allPr">Show All Number</option>
                            <option value="${oneThird}">Show : ${oneThird}</option>
                            <option value="${half}">Show : ${half}</option>
                        </select>
                    </form>
                </div>
                <div class="col-md-2 selectBis2">
                    <form id="formQ" name="product">
                        <select name="order" id="input-sort" class="form-control " onchange="this.form.submit();">
                            <option value="default" id="disorder">Sort By : Default</option>
                            <option value="ordered">Sort By : Name (A - Z)</option>
                            <option value="reversed">Sort By : Name (Z - A)</option>
                            <option value="increase">Sort By : Price (Low &gt; High)</option>
                            <option value="decrease">Sort By : Price (High &gt; Low)</option>
                        </select>
                    </form>
                </div>
                <div class="col-md-7"></div>
            </div>
        </div>
        <!-- /Display by -->

        <div class="container-fluid paddingBis">
            <div class="row">

                <!-- Space -->
                <div class="col-md-1"></div>
                <!-- /Space -->

                <!-- Sidebar -->
                <div class="col-md-2 d-none d-md-block bg-light sidebar">
                    <section>

                        <%--- Categories ---%>
                        <h3>Category</h3>
                        <div class="col">
                            <div class="accordion" id="accordionExample">
                                <dt><a href="#cat1" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Clothing</a></dt>
                                <dd id="cat1" class="collapse">    
                                    <a class="clothing text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Clothing">All Clothing</a>
                                </dd> 
                                <c:forEach var="clothing" items="${CLOTHINGS}">
                                    <dd id="cat1" class="collapse">    
                                        <a class="clothing text-dark text-decoration-none" href="ProductController?section=categorie&sub=${clothing}">${clothing}</a>
                                    </dd> 
                                </c:forEach>

                                <dt><a href="#cat2" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Pharmacy</a></dt>
                                <dd id="cat2" class="collapse">    
                                    <a class="pharmacy text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Pharmacy">All Pharmacy</a>
                                </dd> 
                                <c:forEach var="pharmacy" items="${PHARMACIES}">
                                    <dd id="cat2" class="collapse">    
                                        <a class="pharmacy text-dark text-decoration-none" href="ProductController?section=categorie&sub=${pharmacy}">${pharmacy}</a>
                                    </dd> 
                                </c:forEach>

                                <dt><a href="#cat3" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Beauty</a></dt>
                                <dd id="cat3" class="collapse">    
                                    <a class="beauty text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Beauty">All Greg</a>
                                </dd> 
                                <c:forEach var="beauty" items="${BEAUTIES}">
                                    <dd id="cat3" class="collapse">    
                                        <a class="beauty text-dark text-decoration-none" href="ProductController?section=categorie&sub=${beauty}">${beauty}</a>
                                    </dd> 
                                </c:forEach>

                                <dt><a href="#cat4" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Gift</a></dt>
                                <dd id="cat4" class="collapse">    
                                    <a class="gift text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Gifts">All Gifts</a>
                                </dd> 
                                <c:forEach var="gift" items="${GIFTS}">
                                    <dd id="cat4" class="collapse">    
                                        <a class="gift text-dark text-decoration-none" href="ProductController?section=categorie&sub=${gift}">${gift}</a>
                                    </dd> 
                                </c:forEach>

                                <dt><a href="#cat5" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Tool</a></dt>
                                <dd id="cat5" class="collapse">    
                                    <a class="tool text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Tools">All Tools</a>
                                </dd> 
                                <c:forEach var="tool" items="${TOOLS}">
                                    <dd id="cat5" class="collapse">    
                                        <a class="tool text-dark text-decoration-none" href="ProductController?section=categorie&sub=${tool}">${tool}</a>
                                    </dd> 
                                </c:forEach>

                                <dt><a href="#cat6" data-toggle="collapse" class="btn-dark-link text-dark dropdown-toggle text-decoration-none">Outdoor</a></dt>
                                <dd id="cat6" class="collapse">    
                                    <a class="outdoors text-dark text-decoration-none font-weight-bold" href="ProductController?section=categorie&cat=Outdoors">All Outdoors</a>
                                </dd> 
                                <c:forEach var="outdoors" items="${OUTDOORS}">
                                    <dd id="cat6" class="collapse">    
                                        <a class="outdoors text-dark text-decoration-none" href="ProductController?section=categorie&sub=${outdoors}">${outdoors}</a>
                                    </dd> 
                                </c:forEach>
                            </div>
                        </div>
                        <%--- /Categories ---%>

                        <%--- Authors ---%>
                        <hr>
                        <h3>Author</h3>
                        <c:forEach var="author" end="9" items="${AUTHORS}">
                            <div class="col-md-3">    
                                <a class="author outdoors text-dark text-decoration-none" href="">${author.fullName}</a>
                            </div>
                        </c:forEach>
                        <span id="dots"></span>
                        <span id="more"><c:forEach var="author" begin="10" end="49" items="${AUTHORS}">
                                <div class="col-md-3">    
                                    <a class="author outdoors text-dark text-decoration-none" href="">${author.fullName}</a>
                                </div>
                            </c:forEach></span>
                        <p onclick="myFunction()" class="btn-dark-link text-dark dropdown-toggle text-decoration-none" id="myBtn">Show more</p>
                        <%--- /Authors ---%>

                        <hr>

                        <%--- Price ---%>
                        <h5>Price</h5>
                        <div class="aria-widget-slider">
                            <div class="rail-label min">
                                0
                            </div>
                            <div class="rail" style="width: 100px;">
                                <img id="minPrice"
                                     src="ressources/pics/right-arrow.png"
                                     role="slider"
                                     tabindex="0"
                                     class="min thumb"
                                     aria-valuemin="${min}"
                                     aria-valuenow="${min}"
                                     aria-valuetext="€${min}"
                                     aria-valuemax="${max}">
                                <img id="maxPrice"
                                     src="ressources/pics/left-arrow.png"
                                     role="slider"
                                     tabindex="0"
                                     class="max thumb"
                                     aria-valuemin="${min}"
                                     aria-valuenow="${max}"
                                     aria-valuetext="€${max}"
                                     aria-valuemax="${max}">
                            </div>
                            <div class="rail-label max">
                                0
                            </div>
                        </div>
                        <%--- /Price ---%>

                        <hr>

                        <%--- Review ---%>
                        <h5>Avg. Customer Review</h5>
                        <div>
                            <span class="break"><a class="undecorated" href="">
                                    5-Star Rating: &nbsp<span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span> 
                                </a></span>

                            <span class="break"><a class="undecorated" href="">
                                    4-Star Rating: &nbsp<span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>                            
                                </a></span>

                            <span class="break"><a class="undecorated" href="">
                                    3-Star Rating: &nbsp<span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </a></span>

                            <span class="break"><a class="undecorated" href="">
                                    2-Star Rating: &nbsp<span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </a></span>

                            <span><a class="undecorated" href="">
                                    1-Star Rating: &nbsp<span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </a>
                            </span>
                        </div>
                        <%--- /Review ---%>

                    </section>
                </div>
                <!-- /Sidebar -->

                <!-- Main -->
                <div class="col-md-8">

                    <ul class="row" id="listitems" >
                        <c:if test="${empty sessionScope.researchBook}" >
                            <c:if test="${empty sessionScope.subCat && empty sessionScope.theme && empty sessionScope.vide}" >
                                <c:forEach var="product" items="${PRODUCTS}">
                                    <div class="col-md-3">
                                        <div class="card mb-3 shadow-sm">
                                            <a href="ProductController?section=viewProduct&view=${product.isbn}"><img class="card-img-top" src="${product.cover}" alt="Card image cap"></a>
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <p class="card-text">${product.title}</p>
                                                    <p >${product.price} €</p>
                                                </div>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <a href="ProductController?section=viewProduct&view=${product.isbn}"><button type="button"  class="btn btn-sm btn-outline-secondary">View </button></a>
                                                        <a href="CartController?section=manageCart&add=${product.id}"><button type="button"  class="btn btn-sm btn-outline-secondary">Add </button></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach> 
                            </c:if>
                            <c:if test="${!empty sessionScope.subCat}" >
                                <c:forEach var="category" items="${sessionScope.subCat}">
                                    <div class="col-md-3">
                                        <div class="card mb-3 shadow-sm">
                                            <a href="ProductController?section=viewProduct&view=${category.isbn}"><img class="card-img-top" src="${category.cover}" alt="Card image cap"></a>
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <p class="card-text">${category.title}</p>
                                                    <p >${category.price} €</p>
                                                </div>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <a href="ProductController?section=viewProduct&view=${category.isbn}"><button type="button"  class="btn btn-sm btn-outline-secondary">View </button></a>
                                                        <a href="CartController?section=manageCart&add=${category.id}"><button type="button"  class="btn btn-sm btn-outline-secondary">Add </button></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach> 
                            </c:if>
                            <c:if test="${!empty sessionScope.theme}" >
                                <c:forEach var="sub" items="${sessionScope.theme}">
                                    <div class="col-md-3">
                                        <div class="card mb-3 shadow-sm">
                                            <a href="ProductController?section=viewProduct&view=${sub.isbn}"><img class="card-img-top" src="${sub.cover}" alt="Card image cap"></a>
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <p class="card-text">${sub.title}</p>
                                                    <p >${sub.price} €</p>
                                                </div>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        <a href="ProductController?section=viewProduct&view=${sub.isbn}"><button type="button"  class="btn btn-sm btn-outline-secondary">View </button></a>
                                                        <a href="CartController?section=manageCart&add=${sub.id}"><button type="button"  class="btn btn-sm btn-outline-secondary">Add </button></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach> 
                            </c:if>
                            <c:if test="${!empty sessionScope.vide}" >
                                Pas de livre dans cette sous catégorie !!!
                            </c:if>
                        </c:if>
                        <c:if test="${!empty sessionScope.researchBook}" >  
                            <c:forEach var="rs" items="${sessionScope.researchBook}">
                                <div class="col-md-3">
                                    <div class="card mb-3 shadow-sm">
                                        <a href="ProductController?section=viewProduct&view=${rs.isbn}"><img class="card-img-top" src="${rs.cover}" alt="Card image cap"></a>
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <p class="card-text">${rs.title}</p>
                                                <p >${rs.price} €</p>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group">
                                                    <a href="ProductController?section=viewProduct&view=${rs.isbn}"><button type="button"  class="btn btn-sm btn-outline-secondary">View </button></a>
                                                    <a href="CartController?section=manageCart&add=${rs.id}"><button type="button"  class="btn btn-sm btn-outline-secondary">Add </button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </ul>
                </div>
                <!-- /Main -->

                <!-- Space -->
                <div class="col-md-1"></div>
                <!-- /Space -->

                </main>
            </div>

            <!-- Navbar -->
            <nav>
                <ul id="listitems-pagination" class="pagination justify-content-center">
                    <li class="page-item">
                        <a id="listitems-previous" class="page-link" onclick="$('html,body').animate({scrollTop: 0}, 'slow');
                                    return false;" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item">
                        <a id="listitems-next" class="page-link" onclick="$('html,body').animate({scrollTop: 0}, 'slow');
                                    return false;" href="#">Next</a>
                    </li>
                </ul>
            </nav>
            <!-- /Navbar -->
        </div>
    </div>

    <%-- Footer --%>
    <jsp:include page="/footer.jsp" flush="false" />
    <%-- <script src="ressources/js/bootstrap.bundle.min.js"></script>
    --%>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script>
    <script src="ressources/js/jquery.paginate.js"></script>
    <script type="text/javascript">
                            // Controls book display
                            $(document).ready(function () {
                                $('#listitems').paginate({itemsPerPage: 8});
                                $.getJSON('data.json', function (data) {
                                    var items = [];
                                    $.each(data.items, function (i, product) {
                                        items.push('<li>' + product + '</li>');
                                    });
                                });
                            });

                            // Displays list of authors
                            function myFunction() {
                                var dots = document.getElementById("dots");
                                var moreText = document.getElementById("more");
                                var btnText = document.getElementById("myBtn");

                                if (dots.style.display === "none") {
                                    dots.style.display = "inline";
                                    btnText.innerHTML = "Show more";
                                    moreText.style.display = "none";
                                } else {
                                    dots.style.display = "none";
                                    btnText.innerHTML = "Show less";
                                    moreText.style.display = "inline";
                                }
                            }

                            // Controls dropdown menu showing available quantity by page
                            var url_string = window.location.href;
                            var url = new URL(url_string);
                            var c = url.searchParams.get("limit");
                            var allProduct = url.searchParams.get("section");

                            if (allProduct == "allProduct") {
                                document.getElementById("#options option:selected").text();
                            }
                            document.getElementById('input-limit').value = c;

                            // Controls dropdown menu sorting book page
                            var url_string1 = window.location.href;
                            var url1 = new URL(url_string1);
                            var d = url1.searchParams.get("order");
                            var allProduct = url1.searchParams.get("section");

                            if (allProduct == "allProduct") {
                                document.getElementById("#options option:selected").text();
                            }
                            document.getElementById('input-sort').value = d;

                            // Bolds a link when cliked on and unbolds it when another link is clicked on
                            $("a").click(function () {
                                $(this).siblings().removeClass('active').end().addClass('active');
                            });
    </script>
</body>
</html>