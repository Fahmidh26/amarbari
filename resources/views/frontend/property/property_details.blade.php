@extends('frontend.frontend_dashboard')
@section('main')

@section('title')
  {{ $property->property_name }} | AmarBari 
@endsection

<script src="https://kit.fontawesome.com/7e6003b995.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">



   <!--Page Title-->
        <section class="page-title-two bg-color-1 centred">
            <div class="pattern-layer">
                <div class="pattern-1" style="background-image: url({{ asset('frontend/assets/images/shape/shape-9.png') }});"></div>
                <div class="pattern-2" style="background-image: url({{ asset('frontend/assets/images/shape/shape-10.png') }});"></div>
            </div>
            <div class="auto-container">
                <div class="content-box clearfix">
                    <h1>{{ $property->address }}</h1>
                    <ul class="bread-crumb clearfix">
                        <li><a href="index.html">Home</a></li>
                        <li>{{ $property->address }}</li>
                    </ul>
                </div>
            </div>
        </section>
        <!--End Page Title-->


        <!-- property-details -->
        <section class="property-details property-details-one">
            <div class="auto-container">
                <div class="top-details clearfix">
                    <div class="left-column pull-left clearfix">
                        <div class="row">
                            <div class="col-11"><h3>{{ $property->address }}</h3></div>
                            <div class="col-1">
                                @if ($property->smart_home && $property->doorbell && $property->s_lock && $property->automated == 1)
                                <a target="_blank" href="https://stataglobal.com/"><img src="{{ url('upload/smart_home.png')}}" style="width:55px; height:50px" alt=""></a>
                                @else
                                <a target="_blank" href="https://stataglobal.com/"><img src="{{ url('upload/spi.png')}}" style="width:55px; height:50px" alt=""></a>
                                @endif
                              
                                {{-- <a href="https://stataglobal.com/" data-toggle="tooltip" data-placement="top" title="This Home is smart"><i class="fa fa-check text-success" aria-hidden="true"></i></a> --}}
                            </div>
                        </div>
                       
                        {{-- <h5>{{$property->address}}</h5> --}}
                        <div class="author-info clearfix">
                            <div class="author-box pull-left">
                  @if($property->agent_id == Null)
  <figure class="author-thumb"><img src="{{ url('upload/admin_default.png') }}" alt=""></figure>
                      <h6>Admin</h6>
                  @else

                    <figure class="author-thumb"><img src="{{ (!empty($property->user->photo)) ? url('upload/agent_images/'.$property->user->photo) : url('upload/no_image.jpg') }}" alt=""></figure>
                                <h6>{{ $property->user->name }}</h6>

                  @endif         



                            </div>
                            <ul class="rating clearfix pull-left">
                                <li><i class="icon-39"></i></li>
                                <li><i class="icon-39"></i></li>
                                <li><i class="icon-39"></i></li>
                                <li><i class="icon-39"></i></li>
                                <li><i class="icon-40"></i></li>
                            </ul>
                        </div>
                    </div>
                    <div class="right-column pull-right clearfix">
                        <div class="price-inner clearfix">
                            <ul class="category clearfix pull-left">
     <li><a href="property-details.html">{{ $property->type->type_name }}</a></li>
                                <li><a href="property-details.html">For {{ $property->property_status }}</a></li>
                            </ul>
                            <div class="price-box pull-right">
                               
                                    <h4>TK {{ $property->max_price }}</h4>
                               
                            </div>
                        </div>
                        <ul class="other-option pull-right clearfix">
                            <li><a href="property-details.html"><i class="icon-37"></i></a></li>
                            <li><a href="property-details.html"><i class="icon-38"></i></a></li>
                            <li><a href="property-details.html"><i class="icon-12"></i></a></li>
                            <li><a href="property-details.html"><i class="icon-13"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                        <div class="property-details-content">
    <div class="carousel-inner">
        <div class="single-item-carousel owl-carousel owl-theme owl-dots-none">
        	@foreach($multiImage as $img)
            <figure class="image-box"><img src="{{ asset($img->photo_name) }}" alt=""></figure>
            @endforeach
        </div>
    </div>

                            {{-- <div class="discription-box content-widget">
                                <div class="title-box">
                                    <h4>{{$property->address}}</h4>
                                </div>
                              
                            </div> --}}

                            <div class="amenities-box content-widget">
                                <gmp-map center="{{ $property->latitude }},{{ $property->longitude }}" zoom="14" map-id="DEMO_MAP_ID" style="width: 720px; height:300px">
                                    <gmp-advanced-marker position="{{ $property->latitude }},{{ $property->longitude }}" title="My location">
                                    </gmp-advanced-marker>
                                  </gmp-map>      
                            </div>

                            <div class="details-box content-widget">
                                <div class="title-box">
                                    <h4>Property Details</h4>
                                </div>
                                <ul class="list clearfix">
                                    <li>Property ID: <span>{{ $property->property_code }}</span></li>
                                    <li>Rooms: <span>{{ $property->bedrooms }}</span></li>
                                    <li>Garage Size: <span>{{ $property->garage_size }} Sq Ft</span></li>  
                            
                                    <li>Property Type: <span>{{ $property->type->type_name }}</span></li>
                                    <li>Bathrooms: <span>{{ $property->bathrooms }}</span></li>
                                    <li>Property Status: <span>For {{ $property->property_status }}</span></li>
                                    <li>Property Size: <span>{{ $property->property_size }} Sq Ft</span></li>
                                    <li>Garage: <span>{{ $property->garage }}</span></li>
                                    @php
                                        
                                    @endphp
                                    <li>Price/Sq ft:
                                        @if ($property->lowest_price == NULL)
                                        <span>TK {{ number_format($property->max_price / $property->property_size, 2) }}</span>
                                    @else
                                        <span>TK {{ number_format($property->lowest_price / $property->property_size, 2) }}</span>
                                    @endif
                                  </li>
                                </ul>

                                {{-- SEND MESSAGE --}}
                            <div id="app">
                                <span>Down Here</span>
                                <send-message></send-message>
                            
                            </div>
                            </div>
                            <div class="amenities-box content-widget">
                                <div class="title-box">
                                    <h4>Amenities</h4>
                                </div>
                                <ul class="list clearfix">
                                    @foreach($property_amen as $amen)
                                    <li>{{ $amen }}</li>
                                    @endforeach
                                </ul>
                            </div>
                       
                            <div class="discription-box content-widget">
                                <div class="title-box">
                                    <h4>Property Description</h4>
                                </div>
                                <div class="text">
                                    <p>{!! $property->long_descp !!}</p>
                                </div>
                            </div>

                            @if(Auth::check())
                            <div class="location-box content-widget">
                                <div class="title-box">
                                    <h4>Legal Information</h4>
                                </div>
                                <ul class="info clearfix">
                                    <li><span>Division:</span> {{ $property->division }}</li> 
                                    <li><span>District:</span> {{ $property->district }}</li>
                                    <li><span>Upazila:</span> {{ $property->upazila }}</li>
                                    <li><span>Khatiyan Type:</span> {{ $property->khatiyan_type }}</li>
                                    <li><span>Mouja:</span> {{ $property->mouja }}</li>
                                    <li><span>Khatiyan No:</span> {{ $property->khatiyan_no }}</li>
                                    <li><span>Owner:</span> {{ $property->owner_name }}</li>
                                    <li><span>Dag Number:</span> {{ $property->dag_number }}</li>
                                </ul>
                                <div class="title-box">
                                    <a target="_blank" href="https://eporcha.gov.bd/">Verify</a>
                                </div>
                            </div>
                            @endif
                            {{-- <div class="location-box content-widget">
                                <div class="title-box">
                                    <h4>Location</h4>
                                </div>
                                <ul class="info clearfix">
                                    <ul class="info clearfix">
                                        <li><span>Address:</span> {{ $property->address }}</li> 
                                        <li><span>State/county:</span> {{ $property->state }}</li>
                                        <li><span>Neighborhood:</span> {{ $property->neighborhood }}</li>
                                        <li><span>Zip/Postal Code:</span> {{ $property->postal_code }}</li>
                                        <li><span>City:</span> {{ $property->city }}</li>
                                    </ul>
                                </ul>
                                <div >
                                    
                                                              
                                </div> 
                        
                            </div> --}}
                            <div class="nearby-box content-widget">
                                <div class="title-box">
                                    <h4>What’s Nearby?</h4>
                                </div>
                                <div class="inner-box">


                                    <div class="single-item">
                                        <div class="icon-box"><i class="fas fa-book-reader"></i></div>
                                        <div class="inner">
                                            <h5>Places:</h5>
                                
                                            @foreach($facility as $item)
                                            <div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6>{{ $item->facility_name }} <span>({{ $item->distance }} km)</span></h6>
                                                </div>
                                                <ul class="rating pull-right clearfix">
                                                    <li><i class="icon-39"></i></li>
                                                    <li><i class="icon-39"></i></li>
                                                    <li><i class="icon-39"></i></li>
                                                    <li><i class="icon-39"></i></li>
                                                    <li><i class="icon-40"></i></li>
                                                </ul>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="statistics-box content-widget">
                                <div class="title-box">
                                    <h4>Property Video</h4>
                                </div>
                                <figure class="image-box">
                                    <iframe width="700" height="415" src="{{ $property->property_video }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                 </figure>
                            </div>
                            <div class="schedule-box content-widget">
                                <div class="title-box">
                                    <h4>Send Message</h4>
                                </div>

                                <div class="form-inner">
                                    @auth
                                    
                                    @php
                                        $id = Auth::user()->id;
                                        $userData = App\Models\User::find($id);
                                    @endphp
                                    
                                     <form action="{{ route('property.message') }}" method="post" class="default-form">
                                        @csrf 
                                    
                                        <input type="hidden" name="property_id" value="{{ $property->id }}">
                                    
                                        @if($property->agent_id == Null)
                                        <input type="hidden" name="agent_id" value="">
                                    
                                        @else
                                        <input type="hidden" name="agent_id" value="{{ $property->agent_id }}">
                                        @endif
                                    
                                                <div class="form-group">
                                                    <input type="text" name="msg_name" placeholder="Your name" value="{{ $userData->name }}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="msg_email" placeholder="Your Email" value="{{ $userData->email }}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="msg_phone" placeholder="Phone" value="{{ $userData->phone }}">
                                                </div>
                                                <div class="form-group">
                                                    <textarea name="message" placeholder="Message"></textarea>
                                                </div>
                                                <div class="form-group message-btn">
                                                    <button type="submit" class="theme-btn btn-one">Send Message</button>
                                                </div>
                                            </form>
                                    
                                    @else
                                    
                                    <form action="{{ route('property.message') }}" method="post" class="default-form">
                                        @csrf 
                                    
                                        <input type="hidden" name="property_id" value="{{ $property->id }}">
                                    
                                        @if($property->agent_id == Null)
                                        <input type="hidden" name="agent_id" value="">
                                    
                                        @else
                                        <input type="hidden" name="agent_id" value="{{ $property->agent_id }}">
                                        @endif
                                    
                                                <div class="form-group">
                                                    <input type="text" name="msg_name" placeholder="Your name" required="">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="msg_email" placeholder="Your Email" required="">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="msg_phone" placeholder="Phone" required="">
                                                </div>
                                                <div class="form-group">
                                                    <textarea name="message" placeholder="Message"></textarea>
                                                </div>
                                                <div class="form-group message-btn">
                                                    <button type="submit" class="theme-btn btn-one">Send Message</button>
                                                </div>
                                            </form>
                                    
                                    @endauth
                                    
                                    
                                    
                                        </div>






{{----------------------------------- FOR SCHEDULE --------------------------}}

                                {{-- <div class="form-inner">
                                    <form action="{{ route('store.schedule') }}" method="post">
                                        @csrf 
                        
                        
                                        <div class="row clearfix">
                        
                          <input type="hidden" name="property_id" value="{{ $property->id }}">  
                        
                          @if($property->agent_id == Null)
                          <input type="hidden" name="agent_id" value="">
                          @else
                        <input type="hidden" name="agent_id" value="{{ $property->agent_id }}">
                          @endif       
                        
                                            <div class="col-lg-6 col-md-12 col-sm-12 column">
                                                <div class="form-group">
                                                    <i class="far fa-calendar-alt"></i>
                                                    <input type="text" name="tour_date" placeholder="Tour Date" id="datepicker" required>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12 col-sm-12 column">
                                                <div class="form-group">
                                                    <i class="far fa-clock"></i>
                                                    <input type="text" name="tour_time" placeholder="Any Time" required>
                                                </div>
                                            </div>
                        
                                            <div class="col-lg-12 col-md-12 col-sm-12 column">
                                                <div class="form-group">
                                                    <textarea name="message" placeholder="Your message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 column">
                                                <div class="form-group message-btn">
                                                    <button type="submit" class="theme-btn btn-one">Submit Now</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side">
                        <div class="property-sidebar default-sidebar">

                            {{-- STATA CALCULATOR --}}
                            <div class="author-widget sidebar-widget">
                                <div class="widget-title">
                                    <h4>Smart Home Estimate</h4>
                                    <span style="font-size: 10px">Powered By STATA</span>
                                </div>
                            
                                  @php
                                      $pOfL = 43000;
                                      $pBedroom = 15100;

                                  @endphp
                                        <p>Upgrade Cost</p>
                                    <span>{{($property->bedrooms * $pBedroom) + $pOfL}}</span>

                                   
                                 <br>
                                
                                 <p>New Upgraded Value</p>
                                 <span><a href="#" style="font-size:20px"> TK {{$property->lowest_price * 1.10}} </a></span>
                                 <hr>
                                 <p style="font-size: 10px">One Click Away from making your home SMART</p>
                                 <a style="font-size: 14px" rel=”dofollow” target="_blank" href="https://stataglobal.com/">stataglobal.com</a>
                                   
                               
                            </div>

                            {{-- STATA CALCULATOR END--}}

                             {{-- Land Calculator --}}
                            <div class="calculator-widget sidebar-widget">
                                <div class="calculate-inner">
                                    <div class="widget-title">
                                        <h4>Land Conversion</h4>
                                    </div>
                                    <form id="calculator-form" class="default-form">
                                        @csrf
                                        
                                           <input type="text" name="num1" id="num1" placeholder="0"><br>
                                           <select name="operator" id="operator" style="width: 20px;">
                                                <option value="add">+</option>
                                                <option value="subtract">-</option>
                                                <option value="multiply">*</option>
                                                <option value="divide">/</option>
                                            </select>
                                            <br><br><br>
                                            <input type="text" name="num2" id="num2" placeholder="0">
                                            {{-- <button type="button" id="calculate-btn">Calculate</button> --}}
                                        <br>
                                           <div class="form-group message-btn">
                                            <button type="button" id="calculate-btn" class="theme-btn btn-one">Calculate Now</button>
                                        </div>
                                     
                                    </form>
                                    <hr>
                                    <h5>Result: <span id="result"></span></h5>
                                    <br>
                                {{-- TEST --}}

                              
                               
                                {{-- TEST END --}}

                                </div>
                                <table class="table">
                                    <tr>
                                        <td>100 Ojutangsho</td>
                                        <td>1 Shotok</td>
                                        <td>435.6 Sq Feet</td>
                                    </tr>
                                    <tr>
                                        <td>1 Katha</td>
                                        <td>1.65 Shotok</td>
                                        <td>720 Sq Feet</td>
                                      </tr>
                                    <tr>
                                      <td>33 Shotok</td>
                                      <td>20 Kattah</td>
                                      <td>1 Bigha</td>
                                    </tr>
                                    <tr>
                                      <td>100 Shotok</td>
                                      <td>3 Bigha</td>
                                      <td>1 Acre</td>
                                    </tr>
                                  </table>
                                  *Decimal = Shotok = Shotangsho
                                  <br> <a href="https://minland.gov.bd/site/page/4e44d7ef-2c36-4483-aa4e-77b294de729c">**Get more information here</a>
                            </div>
                            {{-- Land Calculator END --}}

                        {{--    <div class="author-widget sidebar-widget">
                                <div class="author-box">
                    
                                 @if($property->agent_id == Null)
                    
                                  <figure class="author-thumb"><img src="{{ url('upload/admin_default.png') }}" alt=""></figure>
                                    <div class="inner">
                                        <h4>Admin </h4>
                                        <ul class="info clearfix">
                                            <li><i class="fas fa-map-marker-alt"></i>84 St. John Wood High Street, 
                                            St Johns Wood</li>
                                            <li><i class="fas fa-phone"></i><a href="tel:03030571965">030 3057 1965</a></li>
                                        </ul>
                                        <div class="btn-box"><a href="agents-details.html">View Listing</a></div>
                                    </div>
                    
                                 @else
                    
                                  <figure class="author-thumb"><img src="{{ (!empty($property->user->photo)) ? url('upload/agent_images/'.$property->user->photo) : url('upload/no_image.jpg') }}" alt=""></figure>
                                    <div class="inner">
                                        <h4>{{ $property->user->name }}</h4>
                                        <ul class="info clearfix">
                                            <li><i class="fas fa-map-marker-alt"></i>{{ $property->user->address }}</li>
                                            <li><i class="fas fa-phone"></i><a href="tel:03030571965">{{ $property->user->phone }}</a></li>
                                        </ul>
                                        <div class="btn-box"><a href="agents-details.html">View Listing</a></div>
                                    </div>
                    
                                 @endif 
                    
                                </div>
                              
                                 <div class="form-inner">
                                    @auth
                                    
                                    @php
                                        $id = Auth::user()->id;
                                        $userData = App\Models\User::find($id);
                                    @endphp
                                    
                                     <form action="{{ route('property.message') }}" method="post" class="default-form">
                                        @csrf 
                                    
                                        <input type="hidden" name="property_id" value="{{ $property->id }}">
                                    
                                        @if($property->agent_id == Null)
                                        <input type="hidden" name="agent_id" value="">
                                    
                                        @else
                                        <input type="hidden" name="agent_id" value="{{ $property->agent_id }}">
                                        @endif
                                    
                                                <div class="form-group">
                                                    <input type="text" name="msg_name" placeholder="Your name" value="{{ $userData->name }}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="msg_email" placeholder="Your Email" value="{{ $userData->email }}">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="msg_phone" placeholder="Phone" value="{{ $userData->phone }}">
                                                </div>
                                                <div class="form-group">
                                                    <textarea name="message" placeholder="Message"></textarea>
                                                </div>
                                                <div class="form-group message-btn">
                                                    <button type="submit" class="theme-btn btn-one">Send Message</button>
                                                </div>
                                            </form>
                                    
                                    @else
                                    
                                    <form action="{{ route('property.message') }}" method="post" class="default-form">
                                        @csrf 
                                    
                                        <input type="hidden" name="property_id" value="{{ $property->id }}">
                                    
                                        @if($property->agent_id == Null)
                                        <input type="hidden" name="agent_id" value="">
                                    
                                        @else
                                        <input type="hidden" name="agent_id" value="{{ $property->agent_id }}">
                                        @endif
                                    
                                                <div class="form-group">
                                                    <input type="text" name="msg_name" placeholder="Your name" required="">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="msg_email" placeholder="Your Email" required="">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="msg_phone" placeholder="Phone" required="">
                                                </div>
                                                <div class="form-group">
                                                    <textarea name="message" placeholder="Message"></textarea>
                                                </div>
                                                <div class="form-group message-btn">
                                                    <button type="submit" class="theme-btn btn-one">Send MessageeE</button>
                                                </div>
                                            </form>
                                    
                                    @endauth
                                    
                                    
                                    
                                        </div>
                                    
                                    
                                    
                                    </div> --}}
                                    
                                      
                                
                            
                            <div class="calculator-widget sidebar-widget">
                                <div class="calculate-inner">
                                    <div class="widget-title">
                                        <h4>Mortgage Calculator</h4>
                                    </div>
                                    <form id="mortgage-calculator" class="default-form">
                                        <div class="form-group">
                                            <i><strong> &#2547;</strong></i>
                                            <input type="number" id="total_amount" placeholder="Total Amount">
                                        </div>
                                        <div class="form-group">
                                            <i><strong> &#2547;</strong></i>
                                            <input type="number" id="down_payment" placeholder="Down Payment">
                                        </div>
                                        <div class="form-group">
                                            <i class="fas fa-percent"></i>
                                            <input type="number" id="interest_rate" placeholder="Interest Rate">
                                        </div>
                                        <div class="form-group">
                                            <i class="far fa-calendar-alt"></i>
                                            <input type="number" id="loan_term" placeholder="Loan Terms (Years)">
                                        </div>
                                        <div class="form-group">
                                            <div class="select-box">
                                                <select id="payment_frequency" class="wide">
                                                    <option value="12">Monthly</option>
                                                    <option value="1">Yearly</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group message-btn">
                                            <button type="button" id="calculate_btn" class="theme-btn btn-one">Calculate Now</button>
                                        </div>
                                         <div id="resultm"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="similar-content">
                    <div class="title">
                        <h4>Similar Properties</h4>
                    </div>
                    <div class="row clearfix">
                        @foreach($relatedProperty as $item)
                        <div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                            <div class="feature-block-one wow fadeInUp animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                                <div class="inner-box">
                                    <div class="image-box">
                                       <a href="{{ url('property/details/'.$item->id.'/'.$item->property_slug) }}"><figure class="image"><img src="{{ asset($item->property_thambnail  ) }}" alt=""></figure></a>
                                        <div class="batch"><i class="icon-11"></i></div>
                                        <span class="category">{{ $item->type->type_name }}</span>
                                    </div>
                                    <div class="lower-content">
                                        <div class="author-info clearfix">
                                            <div class="author pull-left">
                                              @if($item->agent_id == Null)
                        
                             <figure class="author-thumb"><img src="{{ url('upload/ariyan.jpg') }}" alt=""></figure>
                                        <h6>Admin </h6>
                        
                                   @else
                        
                                   <figure class="author-thumb"><img src="{{ (!empty($item->user->photo)) ? url('upload/agent_images/'.$item->user->photo) : url('upload/no_image.jpg') }}" alt=""></figure>
                                         <h6>{{ $item->user->name }}</h6>
                                   @endif    
                                            </div>
                                            @if($item->property_status == 'buy')
                                        <div class="buy-btn pull-right"><a href="{{ route('buy.property') }}">For {{ $item->property_status }}</a></div>
                                        @else
                                        <div class="buy-btn pull-right"><a href="{{ route('rent.property') }}">For {{ $item->property_status }}</a></div>
                                        @endif
                                        </div>
                                        <div class="title-text"><h4><a href="{{ url('property/details/'.$item->id.'/'.$item->property_slug) }}">{{ $item->address }}</a></h4></div>
                                        <div class="price-box clearfix">
                                            <div class="price-info pull-left">
                                                <h6>Start From</h6>
                                                <h4>TK {{ $item->max_price }}</h4>
                                            </div>
                                            <ul class="other-option pull-right clearfix">
                                                <li><a href="property-details.html"><i class="icon-12"></i></a></li>
                                                <li><a href="property-details.html"><i class="icon-13"></i></a></li>
                                            </ul>
                                        </div>
                                         <p>{{ $item->short_descp }}</p>
                                                <ul class="more-details clearfix">
                                                    <li><i class="icon-14"></i>{{ $item->bedrooms }} Beds</li>
                                                    <li><i class="icon-15"></i>{{ $item->bathrooms }} Baths</li>
                                                    <li><i class="icon-16"></i>{{ $item->property_size }} Sq Ft</li>
                                                </ul>
                                        <div class="btn-box"><a href="{{ url('property/details/'.$item->id.'/'.$item->property_slug) }}" class="theme-btn btn-two">See Details</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <!-- property-details end -->


        <!-- subscribe-section -->
        <section class="subscribe-section bg-color-3">
            <div class="pattern-layer" style="background-image: url({{ asset('frontend/assets/images/shape/shape-2.png') }});"></div>
            <div class="auto-container">
                <div class="row clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12 text-column">
                        <div class="text">
                            <span>Subscribe</span>
                            <h2>Sign Up To Our Newsletter To Get The Latest News And Offers.</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 form-column">
                        <div class="form-inner">
                            <form action="contact.html" method="post" class="subscribe-form">
                                <div class="form-group">
                                    <input type="email" name="email" placeholder="Enter your email" required="">
                                    <button type="submit">Subscribe Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe-section end -->

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
        $(document).ready(function() {
            $("#calculate_btn").click(function() {
                const totalAmount = parseFloat($("#total_amount").val());
                const downPayment = parseFloat($("#down_payment").val());
                const interestRate = parseFloat($("#interest_rate").val()) / 100;
                const loanTermYears = parseFloat($("#loan_term").val());
                const paymentFrequency = parseFloat($("#payment_frequency").val());
        
                const loanAmount = totalAmount - downPayment;
                const numberOfPayments = loanTermYears * paymentFrequency;
                const monthlyInterestRate = interestRate / paymentFrequency;
                
                const mortgagePayment = (loanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -numberOfPayments));
                
                $("#resultm").html("Your monthly mortgage payment: TK " + mortgagePayment.toFixed(2));
            });
        });
        </script>


{{-- CONVERSION SCRIPT --}}

<script>
    $(document).ready(function () {
        $('#calculate-btn').click(function () {
            var num1 = parseFloat($('#num1').val());
            var num2 = parseFloat($('#num2').val());
            var operator = $('#operator').val();

            if (!isNaN(num1) && !isNaN(num2)) {
                switch (operator) {
                    case 'add':
                        var result = num1 + num2;
                        break;
                    case 'subtract':
                        var result = num1 - num2;
                        break;
                    case 'multiply':
                        var result = num1 * num2;
                        break;
                    case 'divide':
                        if (num2 !== 0) {
                            var result = num1 / num2;
                        } else {
                            var result = 'Division by zero error';
                        }
                        break;
                    default:
                        var result = 'Invalid operator';
                        break;
                }
            } else {
                var result = 'Please enter valid numbers';
            }

            $('#result').text(result);
        });
    });
</script>
{{-- CONVERSION SCRIPT END--}}
        

@endsection