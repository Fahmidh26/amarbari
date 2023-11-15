@extends('frontend.frontend_dashboard')
@section('main')

 <!--Page Title-->
 <section
 class="page-title centred"
 style="background-image: url({{ asset('frontend/assets/images/background/page1.jpg') }});"
>
 <div class="auto-container">
   <div class="content-box clearfix">
     <h1>Contact Us</h1>
     <ul class="bread-crumb clearfix">
       <li><a href="index.html">Home</a></li>
       <li>Contact Us</li>
     </ul>
   </div>
 </div>
</section>
<!--End Page Title-->

<!-- contact-info-section -->
<section class="contact-info-section sec-pad centred">
 <div class="auto-container">
   <div class="sec-title">
     <h5>Contact us</h5>
     <h2>Get In Touch</h2>
   </div>
   <div class="row clearfix">
     <div class="col-lg-4 col-md-6 col-sm-12 info-block">
       <div class="info-block-one">
         <div class="inner-box">
           <div class="icon-box"><i class="icon-32"></i></div>
           <h4>Email Address</h4>
           <br /><br /><br />
           <p>
             <a href="mailto:info@amarbaribd.com">info@amarbaribd.com</a>
           </p>
         </div>
       </div>
     </div>
     <div class="col-lg-4 col-md-6 col-sm-12 info-block">
       <div class="info-block-one">
         <div class="inner-box">
           <div class="icon-box"><i class="icon-33"></i></div>
           <h4>Phone Number</h4>
           <br /><br /><br />
           <p>
             <a href="tel:+8801720514565">+8801720514565</a>
           </p>
         </div>
       </div>
     </div>
     <div class="col-lg-4 col-md-6 col-sm-12 info-block">
       <div class="info-block-one">
         <div class="inner-box">
           <div class="icon-box"><i class="icon-34"></i></div>
           <h4>Office Address</h4>
           <p>
             West Wind Point, Cha-89/4-5, Progati Sharani, North Badda,
             Bir Uttam Rafiqul Islam Avenue, <br />
             Dhaka-1212
           </p>
         </div>
       </div>
     </div>
   </div>
 </div>
</section>
<!-- contact-info-section end -->

<!-- contact-section -->
<section class="contact-section bg-color-1">
 <div class="auto-container">
   <div class="row align-items-center clearfix">
     <div class="col-lg-6 col-md-12 col-sm-12 content-column">
       <div class="content-box">
         <div class="sec-title">
           <h5>Contact</h5>
           <h2>Contact Us</h2>
         </div>
         <div class="form-inner">
           <form method="post" action="sendemail.php" id="contact-form">
             <div class="row clearfix">
               <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                 <input
                   type="text"
                   name="username"
                   placeholder="Your Name"
                   required=""
                 />
               </div>
               <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                 <input
                   type="email"
                   name="email"
                   placeholder="Email address"
                   required=""
                 />
               </div>
               <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                 <input
                   type="text"
                   name="phone"
                   placeholder="Phone"
                   required=""
                 />
               </div>
               <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                 <input
                   type="text"
                   name="subject"
                   placeholder="Subject"
                   required=""
                 />
               </div>
               <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                 <textarea
                   name="message"
                   placeholder="Message"
                 ></textarea>
               </div>
               <div
                 class="col-lg-12 col-md-12 col-sm-12 form-group message-btn"
               >
                 <button
                   class="theme-btn btn-one"
                   type="submit"
                   name="submit-form"
                 >
                   Send Message
                 </button>
               </div>
             </div>
           </form>
         </div>
       </div>
     </div>
     <div class="col-lg-6 col-md-12 col-sm-12 map-column">
       <div class="google-map-area">
         <iframe
           src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d745.6459184817378!2d90.42551600632794!3d23.788636880235806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c7db6c941153%3A0xff8d39bc125b6ea5!2sSTATA%20IT%20LIMITED!5e0!3m2!1sen!2sbd!4v1698689035376!5m2!1sen!2sbd"
           width="600"
           height="450"
           style="border: 0"
           allowfullscreen=""
           loading="lazy"
           referrerpolicy="no-referrer-when-downgrade"
         ></iframe>
       </div>
     </div>
   </div>
 </div>
</section>
<!-- contact-section end -->

<!-- subscribe-section -->
{{-- <section class="subscribe-section bg-color-3">
 <div
   class="pattern-layer"
   style="background-image: url(assets/images/shape/shape-2.png)"
 ></div>
 <div class="auto-container">
   <div class="row clearfix">
     <div class="col-lg-6 col-md-6 col-sm-12 text-column">
       <div class="text">
         <span>Subscribe</span>
         <h2>
           Sign Up To Our Newsletter To Get The Latest News And Offers.
         </h2>
       </div>
     </div>
     <div class="col-lg-6 col-md-6 col-sm-12 form-column">
       <div class="form-inner">
         <form
           action="contact.html"
           method="post"
           class="subscribe-form"
         >
           <div class="form-group">
             <input
               type="email"
               name="email"
               placeholder="Enter your email"
               required=""
             />
             <button type="submit">Subscribe Now</button>
           </div>
         </form>
       </div>
     </div>
   </div>
 </div>
</section> --}}
<!-- subscribe-section end -->

@endsection