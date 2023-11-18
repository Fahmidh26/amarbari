@extends('frontend.frontend_dashboard')
@section('main')

<!--Page Title-->
<section
class="page-title centred"
style="background-image: url({{ asset('frontend/assets/images/background/page-title-3.jpg') }});"
>
<div class="auto-container">
  <div class="content-box clearfix">
    <h1>About Us</h1>
    <ul class="bread-crumb clearfix">
      <li><a href="index.html">Home</a></li>
      <li>About Us</li>
    </ul>
  </div>
</div>
</section>
<!--End Page Title-->

<!-- about-section -->
<section class="about-section about-page pb-0">
<div class="auto-container">
  <div class="inner-container">
    <div class="row align-items-center clearfix">
      <div class="col-lg-6 col-md-12 col-sm-12 image-column">
        <div class="image_block_2">
          <div class="image-box">
            <figure class="image">
              <img src="{{ asset('frontend/assets/images/resource/about-1.jpg') }}" alt="" />
            </figure>
            <!-- <div class="text wow fadeInLeft animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                                <h2>20</h2>
                                <h4>Years of <br />Experience</h4>
                            </div> -->
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-12 col-sm-12 content-column">
        <div class="content_block_3">
          <div class="content-box">
            <div class="sec-title">
              <h5>About</h5>
              <!-- <h2>Hi, I’m Jessica Blake</h2> -->
            </div>
            <div class="text">
              <p>
                Welcome to Amarbari - Where Your Dream Home Finds Its
                Address
              </p>
              <p>
                At Amarbari, we understand that a house is not just a
                place to live; it's a place where dreams come to life,
                memories are created, and families find solace. We are
                dedicated to making the journey of finding your dream
                home as seamless as possible, offering you a trusted
                companion in your real estate endeavors.
              </p>
            </div>
            <ul class="list clearfix">
              <li>
                <b>Our Vision: </b>Our vision at Amarbari is to be the
                guiding light for individuals and families on their path
                to homeownership. We strive to create a platform that
                offers not just properties but a canvas for your dreams.
                With every listing, we aim to provide a myriad of
                options, each with its unique charm and character.
              </li>
              <li>
                <b>Who We Are: </b>Amarbari is more than just a real
                estate website; we are a team of dedicated professionals
                with a passion for real estate. Our expertise spans
                across a wide range of property types, from cozy
                apartments to spacious family homes and everything in
                between. We bring you a curated selection of properties,
                ensuring that you find the perfect fit for your
                lifestyle and needs.
              </li>
            </ul>
            <div class="btn-box">
              <a href="{{ route('contact.us') }}" class="theme-btn btn-one"
                >Contact Us</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>
<!-- about-section end -->

<!-- feature-style-three -->
<section class="feature-style-three centred pb-110">
<div class="auto-container">
  <div class="sec-title">
    <h5>Our Services</h5>
    <h2>Property Services</h2>
  </div>
  <div
    class="three-item-carousel owl-carousel owl-theme owl-nav-none dots-style-one"
  >
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-1"></i></div>
        <h4>Interior Design Solutions</h4>
        <p>
          Transform your living spaces into personalized havens with AmarBari's Interior Design Solutions, where creativity meets functionality to redefine the aesthetics of your home.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-26"></i></div>
        <h4>Home Inspections</h4>
        <p>
          Ensuring peace of mind through comprehensive property inspections, AmarBari Home Inspections provides detailed assessments to help you make informed real estate decisions.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-21"></i></div>
        <h4>Property Management</h4>
        <p>
          Effortlessly elevate your property investment with AmarBari Property Management, offering professional services to maximize rental returns and streamline property maintenance.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-1"></i></div>
        <h4>Realty Consultancy</h4>
        <p>
          Navigating the complexities of real estate transactions, AmarBari Realty Consultancy provides expert advice and personalized solutions to guide you through buying, selling, or investing in properties.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-26"></i></div>
        <h4> Real Estate Finance Advisory</h4>
        <p>
          Empowering your financial decisions, AmarBari Real Estate Finance Advisory offers strategic guidance on mortgage options, ensuring optimal financing solutions tailored to your property goals.
        </p>
      </div>
    </div>
    {{-- <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-21"></i></div>
        <h4>Personalized Service</h4>
        <p>
          Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt
          dolore magna.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-1"></i></div>
        <h4>Excellent Reputation</h4>
        <p>
          Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt
          dolore magna.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-26"></i></div>
        <h4>Best Local Agents</h4>
        <p>
          Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt
          dolore magna.
        </p>
      </div>
    </div>
    <div class="feature-block-two">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-21"></i></div>
        <h4>Personalized Service</h4>
        <p>
          Lorem ipsum dolor sit consectetur sed eiusm tempor incididunt
          dolore magna.
        </p>
      </div>
    </div> --}}
  </div>
</div>
</section>
<!-- feature-style-three end -->

<!-- cta-section -->
<section
class="cta-section alternate-2 pb-240 centred"
style="background-image: url(assets/images/background/cta-1.jpg)"
>
<div class="auto-container">
  <div class="inner-box clearfix">
    <div class="text">
      <h2>
        Looking to Buy a New Property or <br />Sell an Existing One?
      </h2>
    </div>
    <div class="btn-box">
      <a href="{{ route('rent.property') }}" class="theme-btn btn-three"
        >Rent Properties</a
      >
      <a href="{{ route('buy.property') }}" class="theme-btn btn-one">Buy Properties</a>
    </div>
  </div>
</div>
</section>
<!-- cta-section end -->

<!-- funfact-section -->
<section class="funfact-section centred">
<div class="auto-container">
  <div
    class="inner-container wow slideInLeft animated"
    data-wow-delay="00ms"
    data-wow-duration="1500ms"
  >
    <div class="row clearfix">
      <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
        <div class="funfact-block-one">
          <div class="inner-box">
            <div class="count-outer count-box">
              <span
                class="count-text"
                data-speed="1500"
                data-stop="1270"
                >0</span
              >
            </div>
            <p>Total Professionals</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
        <div class="funfact-block-one">
          <div class="inner-box">
            <div class="count-outer count-box">
              <span
                class="count-text"
                data-speed="1500"
                data-stop="2350"
                >0</span
              >
            </div>
            <p>Total Property Sell</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
        <div class="funfact-block-one">
          <div class="inner-box">
            <div class="count-outer count-box">
              <span
                class="count-text"
                data-speed="1500"
                data-stop="2540"
                >0</span
              >
            </div>
            <p>Total Property Rent</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
        <div class="funfact-block-one">
          <div class="inner-box">
            <div class="count-outer count-box">
              <span
                class="count-text"
                data-speed="1500"
                data-stop="8270"
                >0</span
              >
            </div>
            <p>Total Customers</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>
<!-- funfact-section end -->

<!-- testimonial-style-four -->
<section class="testimonial-style-four sec-pad centred">
<div class="auto-container">
  <div class="sec-title">
    <h5>Testimonials</h5>
    <h2>What They Say About Us</h2>
    <p>
      Discover the essence of AmarBari through the voices of satisfied clients and industry accolades, echoing testimonials that speak to our commitment to excellence in real estate services.
    </p>
  </div>
  <div
    class="three-item-carousel owl-carousel owl-theme owl-nav-none dots-style-one"
  >
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          "AmarBari made the home-buying process seamless. Their attention to detail and commitment to client satisfaction exceeded my expectations. I'm now happily settled in my dream home, thanks to AmarBari!"
        </h4>
        <h5>John D.</h5>
        <span class="designation">Happy Homeowner</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          "AmarBari's Property Management services have been a game-changer for my investment portfolio. Their proactive approach and efficient handling of tenant relations have significantly increased my rental returns."
        </h4>
        <h5>Sarah M.</h5>
        <span class="designation">Property Investor</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          "Working with AmarBari on my home's interior design was a delightful experience. Their team understood my vision and brought it to life, creating a space that reflects my style and personality. I couldn't be happier!"
        </h4>
        <h5>David R.</h5>
        <span class="designation">Interior Design Client</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          "AmarBari's Real Estate Finance Advisory provided invaluable insights into mortgage options. Their expertise not only saved me money but also ensured a smooth financing process. I highly recommend their services for anyone navigating the real estate market."






        </h4>
        <h5>Emma W.</h5>
        <span class="designation">Real Estate Finance Client</span>
      </div>
    </div>
    {{-- <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          “Our goal each day is to ensure that our residents’ needs are
          not only met but exceeded.”
        </h4>
        <h5>Marc Kenneth</h5>
        <span class="designation">Founder CEO</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          “Our goal each day is to ensure that our residents’ needs are
          not only met but exceeded.”
        </h4>
        <h5>Owen Lester</h5>
        <span class="designation">Manager</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          “Our goal each day is to ensure that our residents’ needs are
          not only met but exceeded.”
        </h4>
        <h5>Rebeka Dawson</h5>
        <span class="designation">Instructor</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          “Our goal each day is to ensure that our residents’ needs are
          not only met but exceeded.”
        </h4>
        <h5>Marc Kenneth</h5>
        <span class="designation">Founder CEO</span>
      </div>
    </div>
    <div class="testimonial-block-three">
      <div class="inner-box">
        <div class="icon-box"><i class="icon-18"></i></div>
        <h4>
          “Our goal each day is to ensure that our residents’ needs are
          not only met but exceeded.”
        </h4>
        <h5>Owen Lester</h5>
        <span class="designation">Manager</span>
      </div>
    </div> --}}
  </div>
</div>
</section>
<!-- testimonial-style-four end -->

<!-- clients-section -->
<section class="clients-section bg-color-1">
<div
  class="pattern-layer"
  style="background-image: url(assets/images/shape/shape-1.png)"
></div>
<div class="auto-container">
  <div class="row clearfix">
    <div class="col-lg-4 col-md-12 col-sm-12 title-column">
      <div class="sec-title">
        <h5>Our Pertners</h5>
        <h2>We’re going to Became Partners for the Long Run.</h2>
      </div>
    </div>
    <div class="col-lg-8 col-md-12 col-sm-12 inner-column">
      <div class="clients-logo">
        <ul class="logo-list clearfix">
          <li>
            <figure class="logo">
              <a href="index-2.html"
                ><img src="assets/images/clients/clients-1.png" alt=""
              /></a>
            </figure>
          </li>
          <li>
            <figure class="logo">
              <a href="index-2.html"
                ><img src="assets/images/clients/clients-2.png" alt=""
              /></a>
            </figure>
          </li>
          <li>
            <figure class="logo">
              <a href="index-2.html"
                ><img src="assets/images/clients/clients-3.png" alt=""
              /></a>
            </figure>
          </li>
          <li>
            <figure class="logo">
              <a href="index-2.html"
                ><img src="assets/images/clients/clients-4.png" alt=""
              /></a>
            </figure>
          </li>
          <li>
            <figure class="logo">
              <a href="index-2.html"
                ><img src="assets/images/clients/clients-5.png" alt=""
              /></a>
            </figure>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
</section>
<!-- clients-section end -->

<!-- team-section -->
<!-- <section class="team-section sec-pad centred">
<div class="auto-container">
  <div class="sec-title">
    <h5>Our Agents</h5>
    <h2>Meet Our Excellent Agents</h2>
  </div>
  <div class="row clearfix">
    <div class="col-lg-4 col-md-6 col-sm-12 team-block">
      <div
        class="team-block-one wow fadeInUp animated"
        data-wow-delay="00ms"
        data-wow-duration="1500ms"
      >
        <div class="inner-box">
          <figure class="image-box">
            <img src="assets/images/team/team-6.jpg" alt="" />
          </figure>
          <div class="lower-content">
            <div class="inner">
              <h4>
                <a href="agents-details.html">Jennifer Lawrence</a>
              </h4>
              <span class="designation">Senior Agent</span>
              <ul class="social-links clearfix">
                <li>
                  <a href="index.html"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-twitter"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-google-plus-g"></i
                  ></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12 team-block">
      <div
        class="team-block-one wow fadeInUp animated"
        data-wow-delay="300ms"
        data-wow-duration="1500ms"
      >
        <div class="inner-box">
          <figure class="image-box">
            <img src="assets/images/team/team-7.jpg" alt="" />
          </figure>
          <div class="lower-content">
            <div class="inner">
              <h4>
                <a href="agents-details.html">Benedict Cumberbatch</a>
              </h4>
              <span class="designation">Senior Agent</span>
              <ul class="social-links clearfix">
                <li>
                  <a href="index.html"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-twitter"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-google-plus-g"></i
                  ></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12 team-block">
      <div
        class="team-block-one wow fadeInUp animated"
        data-wow-delay="600ms"
        data-wow-duration="1500ms"
      >
        <div class="inner-box">
          <figure class="image-box">
            <img src="assets/images/team/team-8.jpg" alt="" />
          </figure>
          <div class="lower-content">
            <div class="inner">
              <h4>
                <a href="agents-details.html">Elizabeth Winstead</a>
              </h4>
              <span class="designation">Senior Agent</span>
              <ul class="social-links clearfix">
                <li>
                  <a href="index.html"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-twitter"></i
                  ></a>
                </li>
                <li>
                  <a href="index.html"
                    ><i class="fab fa-google-plus-g"></i
                  ></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section> -->
<!-- team-section end -->

<!-- download-section -->
<!-- <section class="download-section bg-color-3">
<div
  class="pattern-layer"
  style="background-image: url(assets/images/shape/shape-3.png)"
></div>
<div class="auto-container">
  <div class="row clearfix">
    <div class="col-lg-6 col-md-6 col-sm-12 image-column">
      <div class="image-box">
        <figure
          class="image image-1 wow fadeInUp animated"
          data-wow-delay="00ms"
          data-wow-duration="1500ms"
        >
          <img src="assets/images/resource/download-1.png" alt="" />
        </figure>
        <figure
          class="image image-2 wow fadeInUp animated"
          data-wow-delay="300ms"
          data-wow-duration="1500ms"
        >
          <img src="assets/images/resource/download-2.png" alt="" />
        </figure>
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 content-column">
      <div class="content_block_1">
        <div class="content-box">
          <span>Download</span>
          <h2>Download Our Android and IOS App for Experience</h2>
          <div class="download-btn">
            <a href="index.html" class="app-store">
              <i class="fab fa-apple"></i>
              <p>Download on</p>
              <h4>App Store</h4>
            </a>
            <a href="index.html" class="google-play">
              <i class="fab fa-google-play"></i>
              <p>Get It On</p>
              <h4>Google Play</h4>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section> -->
<!-- download-section end -->

@endsection