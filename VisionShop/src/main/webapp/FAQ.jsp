<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQ</title>
<%@include file="components/common_css_js.jsp"%>
<style>
	
.faq-section {
    background: #fdfdfd;
    min-height: 100vh;
    padding: 10vh 0 0;
}
.faq-title h2 {
  position: relative;
  margin-bottom: 45px;
  display: inline-block;
  font-weight: 600;
  line-height: 1;
}
.faq-title h2::before {
    content: "";
    position: absolute;
    left: 50%;
    width: 60px;
    height: 2px;
    background: #E91E63;
    bottom: -25px;
    margin-left: -30px;
}
.faq-title p {
  padding: 0 190px;
  margin-bottom: 10px;
}

.faq {
  background: #FFFFFF;
  box-shadow: 0 2px 48px 0 rgba(0, 0, 0, 0.06);
  border-radius: 4px;
}

.faq .card {
  border: none;
  background: none;
  border-bottom: 1px dashed #CEE1F8;
}

.faq .card .card-header {
  padding: 0px;
  border: none;
  background: none;
  -webkit-transition: all 0.3s ease 0s;
  -moz-transition: all 0.3s ease 0s;
  -o-transition: all 0.3s ease 0s;
  transition: all 0.3s ease 0s;
}

.faq .card .card-header:hover {
    background: rgba(233, 30, 99, 0.1);
    padding-left: 10px;
}
.faq .card .card-header .faq-title {
  width: 100%;
  text-align: left;
  padding: 0px;
  padding-left: 30px;
  padding-right: 30px;
  font-weight: 400;
  font-size: 15px;
  letter-spacing: 1px;
  color: #3B566E;
  text-decoration: none !important;
  -webkit-transition: all 0.3s ease 0s;
  -moz-transition: all 0.3s ease 0s;
  -o-transition: all 0.3s ease 0s;
  transition: all 0.3s ease 0s;
  cursor: pointer;
  padding-top: 20px;
  padding-bottom: 20px;
}

.faq .card .card-header .faq-title .badge {
  display: inline-block;
  width: 20px;
  height: 20px;
  line-height: 14px;
  float: left;
  -webkit-border-radius: 100px;
  -moz-border-radius: 100px;
  border-radius: 100px;
  text-align: center;
  background: #E91E63;
  color: #fff;
  font-size: 12px;
  margin-right: 20px;
}

.faq .card .card-body {
  padding: 30px;
  padding-left: 35px;
  padding-bottom: 16px;
  font-weight: 400;
  font-size: 16px;
  color: #6F8BA4;
  line-height: 28px;
  letter-spacing: 1px;
  border-top: 1px solid #F3F8FF;
}

.faq .card .card-body p {
  margin-bottom: 14px;
}

@media (max-width: 991px) {
  .faq {
    margin-bottom: 30px;
  }
  .faq .card .card-header .faq-title {
    line-height: 26px;
    margin-top: 10px;
  }
}
</style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
	 <section class="faq-section">
            <div class="container">
              <div class="row">
                                <!-- ***** FAQ Start ***** -->
                                <div class="col-md-6 offset-md-3">
            
                                    <div class="faq-title text-center pb-3">
                                        <h2>FAQ</h2>
                                    </div>
                                </div>
                                <div class="col-md-6 offset-md-3">
                                    <div class="faq" id="accordion">
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-1">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-1" data-aria-expanded="true" data-aria-controls="faqCollapse-1">
                                                        <span class="badge">1</span>Why do I see different prices for the same product?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-1" class="collapse" aria-labelledby="faqHeading-1" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>You could see different prices for the same product, as it could be listed by many Sellers. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-2">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-2" data-aria-expanded="false" data-aria-controls="faqCollapse-2">
                                                        <span class="badge">2</span> Is it necessary to have an account to shop on site?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-2" class="collapse" aria-labelledby="faqHeading-2" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Yes, it's necessary to log into your Flipkart account to shop. Shopping as a logged-in user is fast & convenient and also provides extra security.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-3">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-3" data-aria-expanded="false" data-aria-controls="faqCollapse-3">
                                                        <span class="badge">3</span>Can I club my orders from different sellers to be delivered together?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-3" class="collapse" aria-labelledby="faqHeading-3" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Currently, there is no option to club orders from different sellers to be delivered together as sellers could be located in different locations and the delivery timelines would vary based on their partnered courier service providers. To ensure your items reach you at the earliest, each seller ships their products as per their individual timelines.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-4">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-4" data-aria-expanded="false" data-aria-controls="faqCollapse-4">
                                                        <span class="badge">4</span> How do I manage my orders on site?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-4" class="collapse" aria-labelledby="faqHeading-4" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Yes you can view your orders in Orders page and can manage, edit, delete your products over their.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-5">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-5" data-aria-expanded="false" data-aria-controls="faqCollapse-5">
                                                        <span class="badge">5</span> Do you offer Secured payment systems?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-5" class="collapse" aria-labelledby="faqHeading-5" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Yes our site offers secured payment systems to our customers.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-6">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-6" data-aria-expanded="false" data-aria-controls="faqCollapse-6">
                                                        <span class="badge">6</span> What do I need to register as a customer on site?
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-6" class="collapse" aria-labelledby="faqHeading-6" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>You will need the following information to register:
                                                        <ul>
                                                            <li>Name</li>
                                                            <li>email</li>
                                                            <li>password</li>
                                                        </ul>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="faqHeading-7">
                                                <div class="mb-0">
                                                    <h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-7" data-aria-expanded="false" data-aria-controls="faqCollapse-7">
                                                        <span class="badge">7</span> Do you provide genuine pricing for each product? 
                                                    </h5>
                                                </div>
                                            </div>
                                            <div id="faqCollapse-7" class="collapse" aria-labelledby="faqHeading-7" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Yes we provide genuinepricing for each product which is verified by vendors.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                            </section>

</body>
</html>