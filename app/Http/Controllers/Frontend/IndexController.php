<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Facility;
use App\Models\MultiImage;
use App\Models\Property;
use Illuminate\Http\Request;
use App\Models\PackagePlan;
use Illuminate\Support\Facades\Auth;
use App\Models\PropertyMessage;
use App\Models\PropertyType;
use App\Models\Schedule;
use App\Models\State;
use App\Models\User;
use Carbon\Carbon;

class IndexController extends Controller
{
    public function PropertyDetails($id){

        $property = Property::findOrFail($id);
        $amenities = $property->amenities_id;
        $property_amen = explode(',',$amenities);
        $multiImage = MultiImage::where('property_id',$id)->get();
        $facility = Facility::where('property_id',$id)->get();
        $type_id = $property->ptype_id;
        $relatedProperty = Property::where('ptype_id',$type_id)->where('id','!=',$id)->orderBy('id','DESC')->limit(3)->get();

        return view('frontend.property.property_details',compact('property','multiImage','property_amen','facility','relatedProperty'));

    }// End Method 

    public function PropertyMessage(Request $request){
        $pid = $request->property_id;
        $aid = $request->agent_id;

        if (Auth::check()) {

        PropertyMessage::insert([

            'user_id' => Auth::user()->id,
            'agent_id' => $aid,
            'property_id' => $pid,
            'msg_name' => $request->msg_name,
            'msg_email' => $request->msg_email,
            'msg_phone' => $request->msg_phone,
            'message' => $request->message,
            'created_at' => Carbon::now(), 

        ]);

        $notification = array(
            'message' => 'Send Message Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

        }else{

            $notification = array(
            'message' => 'Plz Login Your Account First',
            'alert-type' => 'error'
        );

        return redirect()->back()->with($notification);
        }
    }// End Method 


    public function AgentDetails($id){

        $agent = User::findOrFail($id);
        $property = Property::where('agent_id',$id)->get();
        $featured = Property::where('featured','1')->limit(3)->get();

        $rentproperty = Property::where('property_status','rent')->get();
        $buyproperty = Property::where('property_status','buy')->get();


        return view('frontend.agent.agent_details',compact('agent','property','featured','rentproperty','buyproperty'));

    }// End Method 

    public function RentProperty(){

        $property = Property::where('status','1')->where('property_status','rent')->paginate(3);

        return view('frontend.property.rent_property',compact('property'));

    }// End Method 

    public function BuyProperty(){

        $property = Property::where('status','1')->where('property_status','buy')->paginate(3);

        return view('frontend.property.buy_property',compact('property'));

    }// End Method 

    public function About(){

        return view('frontend.home.about');

    }// End Method 
    public function Contact(){

        return view('frontend.home.contact');

    }// End Method 

    public function Terms(){

        return view('frontend.home.terms');

    }// End Method 

    public function Privacy(){

        return view('frontend.home.privacy');

    }// End Method 


    public function AgentDetailsMessage(Request $request){

        $aid = $request->agent_id;

        if (Auth::check()) {

        PropertyMessage::insert([

            'user_id' => Auth::user()->id,
            'agent_id' => $aid, 
            'msg_name' => $request->msg_name,
            'msg_email' => $request->msg_email,
            'msg_phone' => $request->msg_phone,
            'message' => $request->message,
            'created_at' => Carbon::now(), 

        ]);

        $notification = array(
            'message' => 'Send Message Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);



        }else{

            $notification = array(
            'message' => 'Plz Login Your Account First',
            'alert-type' => 'error'
        );

        return redirect()->back()->with($notification);
        }

    }// End Method 

    
    public function PropertyType($id){

        $property = Property::where('status','1')->where('ptype_id',$id)->get();

        $pbread = PropertyType::where('id',$id)->first();

        return view('frontend.property.property_type',compact('property','pbread'));

    }// End Method 

    public function StateDetails($id){

        $property = Property::where('status','1')->where('city',$id)->get();
        
        // Initialize variables to calculate the center
    $centerLat = 0;
    $centerLng = 0;

    foreach ($property as $item) {
        // Add the latitude and longitude of each property to the center variables
        $centerLat += $item->latitude;
        $centerLng += $item->longitude;
    }

      // Calculate the center by taking the average
      $centerLat /= count($property);
      $centerLng /= count($property);


        
        $bstate = State::where('id',$id)->first();
         return view('frontend.property.state_property',compact('property','bstate','centerLat', 'centerLng'));
 
     }// End Method

     public function BuyPropertySeach(Request $request){
        $request->validate(['search' => 'required']);
        $item = $request->search;
        $sstate = $request->state;
        $stype = $request->ptype_id;

        // dd($request);

//    $property = Property::where('address', 'like' , '%' .$item. '%')->where('property_status','buy')->with('type','pstate')
//         ->whereHas('pstate', function($q) use ($sstate){
//             $q->where('state_name','like' , '%' .$sstate. '%');
//         })
//         ->whereHas('type', function($q) use ($stype){
//             $q->where('type_name','like' , '%' .$stype. '%');
//          })
//         ->get();


               // Execute a query on the Property model with the search term as a mandatory condition.
    $property = Property::where('property_status', 'buy')
    ->with('type', 'pstate');

// Add optional conditions based on provided values.
if ($item) {
    $property->where('address', 'like', '%' . $item . '%');
}

if ($sstate) {
    $property->whereHas('pstate', function($q) use ($sstate){
        $q->where('state_name', 'like', '%' . $sstate . '%');
    });
}

if ($stype) {
    $property->whereHas('type', function($q) use ($stype){
        $q->where('type_name', 'like', '%' . $stype . '%');
    });
}

// Retrieve the results of the query.
$property = $property->get();

        return view('frontend.property.property_search',compact('property'));
     }// End Method 


    //  SIDEBAR SEARCH

     public function SidebarPropertySeach(Request $request){
        // $request->validate(['search' => 'required']);
        // $item = $request->search;
        $sstate = $request->state;
        $ptype = $request->ptype_id;

        // dd($request);

//    $property = Property::where('address', 'like' , '%' .$item. '%')->where('property_status','buy')->with('type','pstate')
//         ->whereHas('pstate', function($q) use ($sstate){
//             $q->where('state_name','like' , '%' .$sstate. '%');
//         })
//         ->whereHas('type', function($q) use ($stype){
//             $q->where('type_name','like' , '%' .$stype. '%');
//          })
//         ->get();


               // Execute a query on the Property model with the search term as a mandatory condition.
    $property = Property::latest()->with('type', 'pstate');


if ($sstate) {
    $property->whereHas('pstate', function($q) use ($sstate){
        $q->where('state_name', 'like', '%' . $sstate . '%');
    });
}

if ($ptype) {
    $property->whereHas('type', function($q) use ($ptype){
        $q->where('type_name', 'like', '%' . $ptype . '%');
    });
}

// Retrieve the results of the query.
$property = $property->get();

        return view('frontend.property.property_search',compact('property'));
     }
     // End Sidebar Search Method 


     public function RentPropertySeach(Request $request){

        $request->validate(['search' => 'required']);
        $item = $request->search;
        $sstate = $request->state;
        $stype = $request->ptype_id;

        $property = Property::where('property_status', 'rent')
        ->with('type', 'pstate');
    
    // Add optional conditions based on provided values.
    if ($item) {
        $property->where('address', 'like', '%' . $item . '%');
    }
    
    if ($sstate) {
        $property->whereHas('pstate', function($q) use ($sstate){
            $q->where('state_name', 'like', '%' . $sstate . '%');
        });
    }
    
    if ($stype) {
        $property->whereHas('type', function($q) use ($stype){
            $q->where('type_name', 'like', '%' . $stype . '%');
        });
    }
    
    // Retrieve the results of the query.
    $property = $property->get();

        return view('frontend.property.property_search',compact('property'));

    }// End Method 

    public function AllPropertySeach(Request $request){

        $property_status = $request->property_status;
        $stype = $request->ptype_id; 
        $sstate = $request->state;
        $bedrooms = $request->bedrooms;
        $bathrooms = $request->bathrooms;

   $property = Property::where('status','1')->where('bedrooms',$bedrooms)->where('bathrooms', 'like' , '%' .$bathrooms. '%')->where('property_status',$property_status) 
        ->with('type','pstate')
        ->whereHas('pstate', function($q) use ($sstate){
            $q->where('state_name','like' , '%' .$sstate. '%');
        })
        ->whereHas('type', function($q) use ($stype){
            $q->where('type_name','like' , '%' .$stype. '%');
         })
        ->get();

        return view('frontend.property.property_search',compact('property'));

    }// End Method 


    public function StoreSchedule(Request $request){
        $aid = $request->agent_id;
        $pid = $request->property_id;

        if (Auth::check()) {

            Schedule::insert([

                'user_id' => Auth::user()->id,
                'property_id' => $pid,
                'agent_id' => $aid,
                'tour_date' => $request->tour_date,
                'tour_time' => $request->tour_time,
                'message' => $request->message,
                'created_at' => Carbon::now(), 
            ]);

             $notification = array(
            'message' => 'Send Request Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);


        }else{

           $notification = array(
            'message' => 'Plz Login Your Account First',
            'alert-type' => 'error'
        );

        return redirect()->back()->with($notification);

        }
    }// End Method 
} 

