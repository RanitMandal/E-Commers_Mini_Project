<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Admin</title>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
       <a class="navbar-brand" href="#"><img src="images/shopinglogo.gif" width="100" height="50"> 
       <!-- <div class="container">  -->
      <div class="navbar-brand text-warning font-weight-bold">E-commerce</div>
           
           
                <ul class="navbar-nav m-lg-auto m-sm-1">
                <li class="navbar-item">
                
                        <h4 style="color: white;">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp Admin Dashboard</h4>
                    </li>
                    <li class="navbar-item">
                    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <a href="login.html"><button type="submit" name="logout" class="btn text-white btn-danger">Log-out</button></a>
                    </li>
                </ul>
               

           
    </nav>
    <hr>
    <section class="container text-dark font-weight-bold" id="services">

        <div class="row">

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="add_product.jsp" style="text-decoration: none;">
                    <div class="imgsetting">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">Add Products</h5>
                            </div>
                        </div>
                    </div>
                </a>	
            </div>

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View Product</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View User</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
</div>
<div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View Order</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>


            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View FeedBack</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>


           <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/02.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View Contacts</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </section>
    
</body>
</html>