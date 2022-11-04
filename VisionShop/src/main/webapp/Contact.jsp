<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="components/common_css_js.jsp"%>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,300;1,500&display=swap');
@import url('https://fonts.googleapis.com/css?family=Abel|Aguafina+Script|Artifika|Athiti|Condiment|Dosis|Droid+Serif|Farsan|Gurajada|Josefin+Sans|Lato|Lora|Merriweather|Noto+Serif|Open+Sans+Condensed:300|Playfair+Display|Rasa|Sahitya|Share+Tech|Text+Me+One|Titillium+Web');
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap");
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

#i1{
    text-align: center;
    text-shadow: 2px 2px 5px lightsalmon;
}

.contact-info {
    display: inline-block;
    width: 100%;
    text-align: center;
        margin-bottom: 10px;
  }
  .contact-info-icon {
  margin-bottom: 15px;
  }
  .contact-info-item {
    background: #071c34;
    padding: 30px 0px;
  }
  .contact-page-sec .contact-page-form h2 {
    color: #071c34;
    text-transform: capitalize;
    font-size: 22px;
    font-weight: 700;
  }
  .contact-page-form .col-md-6.col-sm-6.col-xs-12 {
    padding-left: 0;
  }  
  .contact-page-form.contact-form input {
    margin-bottom: 5px;
  }  
  .contact-page-form.contact-form textarea {
    height: 110px;
  }
  .contact-page-form.contact-form input[type="submit"] {
    background: #071c34;
    width: 150px;
    border-color: #071c34;
  }
  .contact-info-icon i {
    font-size: 48px;
    color: #fda40b;
  }
  .contact-info-text p{margin-bottom:0px;}
  .contact-info-text h2 {
    color: #fff;
    font-size: 22px;
    text-transform: capitalize;
    font-weight: 600;
    margin-bottom: 10px;
  }
  .contact-info-text span {
    color: #999999;
    font-size: 16px;
    font-weight: ;
    display: inline-block;
    width: 100%;
  }
  
  .contact-page-form input {
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #f9f9f9;
    margin-bottom: 20px;
    padding: 12px 16px;
    width: 100%;
    border-radius: 4px;
  }
  
  .contact-page-form .message-input {
  display: inline-block;
  width: 100%;
  padding-left: 0;
  }
  .single-input-field textarea {
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #f9f9f9;
    width: 100%;
    height: 120px;
    padding: 12px 16px;
    border-radius: 4px;
  }
  .single-input-fieldsbtn input[type="submit"] {
    background: #fda40b none repeat scroll 0 0;
    color: #fff;
    display: inline-block;
    font-weight: 600;
    padding: 10px 0;
    text-transform: capitalize;
    width: 150px;
    margin-top: 20px;
    font-size: 16px;
  }
  .single-input-fieldsbtn input[type="reset"] {
    background: #fda40b none repeat scroll 0 0;
    color: #fff;
    display: inline-block;
    font-weight: 600;
    padding: 10px 0;
    text-transform: capitalize;
    width: 150px;
    margin-top: 20px;
    font-size: 16px;
  }
  .single-input-fieldsbtn input[type="submit"]:hover{background:#071c34;transition: all 0.4s ease-in-out 0s;border-color:#071c34}
  .single-input-field  h4 {
    color: #464646;
    text-transform: capitalize;
    font-size: 14px;
  }
  .contact-page-form {
    display: inline-block;
    width: 100%;
    margin-top: 30px;
  }
  
  .contact-page-map {
    margin-top: 36px;
  }
  .contact-page-form form {
      padding: 20px 15px 0;
  }
</style>
</head>
<body>
<%@include file="components/navbar.jsp" %>
	<h2 id="i1">Contact Us:</h2>
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
                    <form name="submit-to-google-sheet" action="contact-mail.php" method="post">
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
                        <input type="reset" value="Reset"/>
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
          <script>
  const scriptURL = 'https://script.google.com/macros/s/AKfycbwrp9a_HeRlnyaT_Z9TXY8ML7VdImTYciEgPEBTWOqbOqjGtEINUSeqao2Yd1B8ShrDoA/exec'
  const form = document.forms['submit-to-google-sheet']

  form.addEventListener('submit', e => {
    e.preventDefault()
    fetch(scriptURL, { method: 'POST', body: new FormData(form)})
      .then(response => console.log('Success!', response))
      .catch(error => console.error('Error!', error.message))
  })
</script>

</body>
</html>