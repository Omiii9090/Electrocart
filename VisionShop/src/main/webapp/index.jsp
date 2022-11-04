<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Electrocart shoping </title>

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script
      src="https://kit.fontawesome.com/ffcb14d630.js"
      crossorigin="anonymous"
    ></script>
    <title>My Ecommerce Site</title>
    <!--External CSS-->
<link rel="stylesheet" type="text/css" href="components/Home.css"/> 
        <%@include file="components/common_css_js.jsp" %>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" rel="stylesheet">

</head>
<body>
<header class="header">

      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3">
            <div class="header_logo">
              <a href="Home.html"><span>Vision</span>Shop</a>

            </div>

          </div>

          <div class="col-lg-6">
            <nav class="header_menu">
              <ul>
                <li class="active"><a href="Home.jsp" >Home</a></li>
                <li><a href="Home.jsp?category=1">Laptop</a></li>
                <li><a href="Home.jsp?category=2">Healthcare</a></li>
                <li><a href="Home.jsp?category=3">Mobile</a></li>
                <li><a href="Home.jsp?category=4">Cosmetics</a></li>
                <li><a href="FAQ.jsp">FAQ</a></li>
                <li><a href="Contact.jsp">Contact</a></li>


              </ul>

            </nav>

          </div>

          <div class="col-lg-3">
            <div class="header_right">
              <div class="header_right_auth">
                  <a href="./login.jsp">Login</a>
                  <a href="./register.jsp">Register</a>
              </div>
            </div>

          </div>

        </div>

      </div>

    </header>

    <section class="categories">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-6 p-0">
                <div class="categories_item categories_large_item">
                  <img src="Images/category-1.jpg" alt="" class="img-fluid">

                  <div class="categories_text">
                      <h1>Women's Fashion</h1>
                      <p>Lymio Women's Georgette Short plain Dress</p>
                      <a href="/Women's_fashion/WomensClothing.html"> Buy Now</a>
                  </div>
                </div>
            </div>

            <div class="col-lg-6">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-12 p-0">
                  <div class="categories_item">
                    <img src="Images/category-2.jpg" alt="" class="img-fluid">
                    <div class="categories_text">
                      <h4>Men's Fashion</h4>
                      <p>400 items</p>
                      <a href="#"> Buy Now</a>
                    </div>
                  </div>
                </div>

                <div class="col-lg-6 col-md-6 col-12 p-0">
                  <div class="categories_item">
                    <img src="Images/category-3.jpg" alt="" class="img-fluid">
                    <div class="categories_text">
                      <h4>Kid's Fashion</h4>
                      <p>600 items</p>
                      <a href="/Kid's_fashion/KidsClothing.html"> Buy Now</a>
                    </div>
                  </div>
                </div>

                <div class="col-lg-6 col-md-6 col-12 p-0">
                  <div class="categories_item">
                    <img src="Images/category-4.jpg" alt="" class="img-fluid">
                    <div class="categories_text">
                      <h4>Cosmetics</h4>
                      <p>670 items</p>
                      <a href="/Cosmetics/Cosmetics.html"> Buy Now</a>
                    </div>
                  </div>
                </div>

                <div class="col-lg-6 col-md-6 col-12 p-0">
                  <div class="categories_item">
                    <img src="Images/category-5.jpg" alt="" class="img-fluid">
                    <div class="categories_text">
                      <h4>Accesories</h4>
                      <p>780 items</p>
                      <a href="/Cosmetics/Cosmetics.html"> Buy Now</a>
                    </div>
                  </div>
                </div>
              </div>
          </div>
          </div>
        </div>
    </section>

    <section>
      <div class="notification-toast" data-toast>

        <button class="toast-close-btn" data-toast-close>
          <ion-icon name="close-outline"></ion-icon>
        </button>
    
        <div class="toast-banner">
          <img src="Images/banner7.jpg" alt="Fashion Bag" width="80" height="70">
        </div>
    
        <div class="toast-detail">
    
          <p class="toast-message">
            Someone in new just bought
          </p>
    
          <p class="toast-title">
            Fashion Bag
          </p>
    
          <p class="toast-meta">
            <time datetime="PT2M">2 Minutes</time> ago
          </p>
    
        </div>
    
      </div>

      
      <script>
        // notification toast variables
        const notificationToast = document.querySelector('[data-toast]');
const toastCloseBtn = document.querySelector('[data-toast-close]');

// notification toast eventListener
toastCloseBtn.addEventListener('click', function () {
  notificationToast.classList.add('closed');
});
      </script>


    </section>

    

    <!--Product Section-->

    <section id="product1" class="section-p1">
      <h2>Featured Products</h2>
      <p>Festive Collection New Modern Design</p>
      <div class="pro-container">
          <div class="pro">
             <img src="Images/p1.jpg" alt="">
             <div class="des">
                  <span>D Kumar</span>
                  <h5>D Kumar Men's Cotton Regular Fit Solid Plain Full Sleeves Formal/Casual Shirt</h5>
                  <div class="star">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                  </div>
                  <h4>₹4549</h4>
             </div>
             <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
          </div>
          <div class="pro">
              <img src="Images/p5.jpg" alt="">
              <div class="des">
                   <span>FIBREZA</span>
                   <h5>FIBREZA Women's Georgette Traditional Ethnic Long Gown Western Dress with Collar Neck Flare Sleeve Pattern </h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹1034</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p7.jpg" alt="">
              <div class="des">
                   <span>Kaugalian</span>
                   <h5>Kaugalian store Women's Georgette Traditional Ethnic Long Gown Western Dress with V-Neck Flare Sleeve Pattern Full Length Gown</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹999</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p2.jpg" alt="">
              <div class="des">
                   <span>ADRO</span>
                   <h5>ADRO Be Yourself Printed Hoodie/Sweatshirt for Men</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹834</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p3.jpg" alt="">
              <div class="des">
                   <span>MONTREZ</span>
                   <h5>MONTREZ Men's Solid Denim Jacket</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹700</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p4.jpeg" alt="">
              <div class="des">
                   <span>STYLETHIC</span>
                   <h5>STYLETHIC Men's Slim Fit Shirt</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹555</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p6.jpg" alt="">
              <div class="des">
                   <span>COTLAND</span>
                   <h5>COTLAND Fashions Jaipuri Cotton Straight Kurti for Women</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹1499</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
           <div class="pro">
              <img src="Images/p8.jpg" alt="">
              <div class="des">
                   <span>Fashion</span>
                   <h5>Aahwan Women's & Girls' Solid Fit and Flare Tank Dress</h5>
                   <div class="star">
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                       <i class="fas fa-star"></i>
                   </div>
                   <h4>₹601</h4>
              </div>
              <a href="#"><i class="fal fa-shopping-cart cart"></i></a>
           </div>
      </div>
  </section>


    
         <!--Slideshow-->   
    
    <section>
      <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="Images/ban1.jpg" alt="banner1" width="1100" height="300">
            <div class="carousel-caption">
              <h3 id="bantext">Fashion Handbags</h3>
              <p id="banpara">Lavie Women's Ushawu Satchel Bag | Ladies Purse Handbag</p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="Images/banner3.jpg" alt="banner2" width="1100" height="300">
            <div class="carousel-caption">
              <h3 id="bantext">Fashion Handbags</h3>
              <p id="banpara"> Fargo Handbag For Women And Girls COMBO SET OF 5 (Light5pc)
              </p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="Images/banner1.jpg" alt="banner3" width="1100" height="500">
            <div class="carousel-caption">
              <h3 id="bantext">Fashion Handbags</h3>
              <p id="banpara">AYSIS Hobo Bags for Women Faux Leather Purses and Handbags Large Hobo Purse with Tassel</p>
            </div>   
          </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
    </section>

    <h2 id="f1">Our Collections:</h2>
    <section>
      <table>
        <tr>
          <th>
            <div class="flip-box">
              <div class="flip-box-inner">
                <div class="flip-box-front">
                  <img src="Images/b1.jpg" height="200px" width="300px">
                  <p>Women's Fashion</p>
                  <!--<h4>Clothes Retail KPIs 2022 Guide for Clothes Executives.</h4>-->
                </div>
                <div class="flip-box-back">
                  <img src="Images/b2.jpg" height="200px" width="300px">
                  
                </div>
              </div>
            </div>
            
          </th>
          <th>
            <div class="flip-box">
              <div class="flip-box-inner">
                <div class="flip-box-front">
                  <img src="Images/b8.jpg" height="200px" width="300px">
                  <p>Men's Fashion</p>
                  <!--<h4>Curbside fashion Trends: How to Win the Pickup Battle.</h4>-->
                </div>
                <div class="flip-box-back">
                  <img src="Images/b9.png" height="200px" width="300px">
                </div>
              </div>
            </div>
            
          </th>
          <th>
            <div class="flip-box">
              <div class="flip-box-inner">
                <div class="flip-box-front">
                  <img src="Images/b7.jpg" height="200px" width="300px">
                  <p>Shoes</p>
                  <!--<h4>Super Stylish Fashion Shoes| All In one.|Lightweight and fashionable.</h4>-->
                  
                </div>
                <div class="flip-box-back">
                  <img src="Images/b10.jpg" height="200px" width="300px">
                </div>
              </div>
            </div>
            
          </th>
          <th>
            <div class="flip-box">
              <div class="flip-box-inner">
                <div class="flip-box-front">
                  <img src="Images/b6.jpg" height="200px" width="300px">
                  <p>Electronics</p>
                  <!--<h4>A new destination for electronics Product</h4>-->
                </div>
                <div class="flip-box-back">
                  <img src="Images/b11.jpg" height="200px" width="300px">
                </div>
              </div>
            </div>
            
          </th>
        </tr>
      </table>
      
    </section>
    <br>
    <br>
    <br>



    <!--Subscribe section-->

    <h2 id="f1">Stay updated with us:</h2>

    <section id="bgimg">
      <div id="container">
        <h2>Subscribe</h2>
        <p>Stay updated with our Notifications</p>
        <form>
          <input type="email" placeholder="Type your Email" required>
            <br>
          <button>Subscribe</button>
        </form>
      </div>
    </section>


    <!--Review Cards-->
    <h2 id="f1">Best feedback from our customers:</h2>

    <ul class="cards">
      <li>
        <a href="" class="card">
          <img src="Images/cardbg.jpg" class="card__image" alt="" />
          <div class="card__overlay">
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
              <img class="card__thumb" src="Images/re7.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Nilkanth Dhole</h3>    
                <span class="card__tagline">Regular Customer</span>          
                <span class="card__status">1 hour ago</span>
              </div>
            </div>
            <p class="card__description">The support and service I received was thorough and timely and my issue was addressed with a single Interaction. Awesome!</p>
          </div>
        </a>      
      </li>
      <li>
        <a href="" class="card">
          <img src="Images/cardbg1.jpg" class="card__image" alt="" />
          <div class="card__overlay">        
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
              <img class="card__thumb" src="Images/re8.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Nidhi Kulkarni</h3>
                <span class="card__tagline">New Customer</span>  
                <span class="card__status">3 hours ago</span>
              </div>
            </div>
            <p class="card__description">Really great bracelate. Absolutely beautiful, I wear it everyday.It's such a great Accesories.</p>
          </div>
        </a>
      </li>
      <li>
        <a href="" class="card">
          <img src="Images/cardbg2.jpg" class="card__image" alt="" />
          <div class="card__overlay">
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
              <img class="card__thumb" src="Images/re5.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Omkar Parab</h3>
                <span class="card__tagline">Regular Customer</span>            
                <span class="card__status">6 hour ago</span>
              </div>
            </div>
            <p class="card__description"> Got my order today. It meets all my needs. got the fast service and excellent interaction. Thank You!</p>
          </div>
        </a>
      </li>
      <li>
        <a href="" class="card">
          <img src="Images/cardbg4.jpg" class="card__image" alt="" />
          <div class="card__overlay">
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
              <img class="card__thumb" src="Images/re3.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Nikita Kulkarni</h3>
                <span class="card__tagline">Regular Customer</span>
                <span class="card__status"> 45 minutes ago</span>
              </div>          
            </div>
            <p class="card__description">No matter how chapped or dry your lips are, all you need to know are these few simple lip exfoliator recipes.</p>
          </div>
        </a>
      </li>   
      <li>
        <a href="" class="card">
          <img src="Images/cardbg2.jpg" class="card__image" alt="" />
          <div class="card__overlay">
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
              <img class="card__thumb" src="Images/re10.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Suchita Sutar</h3>
                <span class="card__tagline">New Customer</span>            
                <span class="card__status">3 hour ago</span>
              </div>
            </div>
            <p class="card__description">The MASABA range of products by Nykaa are pretty popular too. The collaboration between Nykaa and MASABA went really well.</p>
          </div>
        </a>
      </li>
      <li>
        <a href="" class="card">
          <img src="Images/cardbg2.jpg" class="card__image" alt="" />
          <div class="card__overlay">
            <div class="card__header">
              <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
              <img class="card__thumb" src="Images/re6.jpg" alt="" />
              <div class="card__header-text">
                <h3 class="card__title">Darshan Pande</h3>
                <span class="card__tagline">New Customer</span>            
                <span class="card__status">1 hour ago</span>
              </div>
            </div>
            <p class="card__description">Bought a suit for my son’s debs today in Best Jervis Centre, absolutely amazing staff, they were so helpful and friendly. The suit is fab. Highly recommend them</p>
          </div>
        </a>
      </li>

    </ul>



    <!--Contact section-->
    
    <section class="contact-page-sec">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="contact-info">
              <div class="contact-info-item">
                <div class="contact-info-icon">
                  <i class="fa-solid fa-map-location-dot"></i>
                </div>
                <div class="contact-info-text">
                  <h2>address</h2>
                  <span>Vision Shop, western heights,400004 </span> 
                  <span>Mumbai , INDIA</span> 
                </div>
              </div>            
            </div>          
          </div>          
          <div class="col-md-4">
            <div class="contact-info">
              <div class="contact-info-item">
                <div class="contact-info-icon">
                  <i class="fas fa-envelope"></i>
                </div>
                <div class="contact-info-text">
                  <h2>E-mail</h2>
                  <span>info@vision.com</span> 
                  <span>inquiry@gmail.com</span>
                </div>
              </div>            
            </div>                
          </div>                
          <div class="col-md-4">
            <div class="contact-info">
              <div class="contact-info-item">
                <div class="contact-info-icon">
                  <i class="fas fa-clock"></i>
                </div>
                <div class="contact-info-text">
                  <h2>office time</h2>
                  <span>Mon - Thu  9:00 am - 4.00 pm</span>
                  <span>Thu - Mon  10.00 pm - 5.00 pm</span>
                </div>
              </div>            
            </div>          
          </div>          
        </div>
        <div class="row">
          <div class="col-md-8">
            <div class="contact-page-form" method="post">
              <h2>Get in Touch</h2> 
              <form action="contact-mail.php" method="post">
                <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="single-input-field">
                    <input type="text" placeholder="Your Name" name="name"/>
                  </div>
                </div>  
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="single-input-field">
                    <input type="email" placeholder="E-mail" name="email" required/>
                  </div>
                </div>                              
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="single-input-field">
                    <input type="text" placeholder="Phone Number" name="phone"/>
                  </div>
                </div>  
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="single-input-field">
                    <input type="text" placeholder="Subject" name="subject"/>
                  </div>
                </div>                
                <div class="col-md-12 message-input">
                  <div class="single-input-field">
                    <textarea  placeholder="Write Your Message" name="message"></textarea>
                  </div>
                </div>                                                
                <div class="single-input-fieldsbtn">
                  <input type="submit" value="Send Now"/>
                </div>                          
              </div>
              </form>   
            </div>      
          </div>
          <div class="col-md-4">        
            <div class="contact-page-map">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d482632.8035788808!2d72.60097961428164!3d19.0826880956584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1662998534740!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>          
          </div>        
        </div>
      </div>
    </section>


    <!--Footer-->

    <section>

    <footer class="footer">
      <div class="container">
       <div class="row">
         <div class="footer-col">
           <h4>company</h4>
           <ul>
             <li><a href="/About_contact/About_us.html">about us</a></li>
             <li><a href="/About_contact/Contact_us.html">our services</a></li>
             <li><a href="#">privacy policy</a></li>
             <li><a href="#">affiliate program</a></li>
           </ul>
         </div>
         <div class="footer-col">
           <h4>get help</h4>
           <ul>
             <li><a href="/About_contact/FAQ.html">FAQ</a></li>
             <li><a href="#">shipping</a></li>
             <li><a href="#">returns</a></li>
             <li><a href="#">order status</a></li>
             <li><a href="#">payment options</a></li>
           </ul>
         </div>
         <div class="footer-col">
           <h4>online shop</h4>
           <ul>
             <li><a href="#">Electronics</a></li>
             <li><a href="/Cosmetics/Cosmetics.html">Cosmetics</a></li>
             <li><a href="/Women's_fashion/WomensClothing.html">Clothing</a></li>
             <li><a href="#">Appliances</a></li>
           </ul>
         </div>
         <div class="footer-col">
           <h4>follow us</h4>
           <div class="social-links">
             <a href="#"><i class="fab fa-facebook-f"></i></a>
             <a href="#"><i class="fab fa-twitter"></i></a>
             <a href="#"><i class="fab fa-instagram"></i></a>
             <a href="#"><i class="fab fa-linkedin-in"></i></a>
           </div>
         </div>
       </div>
      </div>
   </footer>
    </section>

    























  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

  



<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!--External js-->
<script type="text/JavaScript"src="Home.js"></script>
</body>
</html>