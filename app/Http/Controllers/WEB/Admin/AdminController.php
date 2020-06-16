<?php

namespace App\Http\Controllers\WEB\Admin;


use App\Admin;
use App\Models\City;
use App\Models\Permission;
use App\Models\Setting;
use App\Models\UserPermission;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Notifications\NewPostNotification;

use Illuminate\Validation\Rule;
use Mockery\Exception;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Image;

class AdminController extends Controller
{

    public function image_extensions(){

        return array('jpg','png','jpeg','gif','bmp','pdf');

    }


    public function __construct()
    {
        $this->settings = Setting::query()->first();
        view()->share([
            'settings' => $this->settings,
        ]);
    }

    public function index(Request $request)
    {


        //   dd(auth()->guard('admin')->user()->permission);


        // permission
        $items = Admin::query();
        if ($request->has('email')) {
            if ($request->get('email') != null)
                $items->where('email', 'like', '%' . $request->get('email') . '%');
        }

        if ($request->has('mobile')) {
            if ($request->get('mobile') != null)
                $items->where('mobile', 'like', '%' . $request->get('mobile') . '%');
        }



        $items = $items->where('id','>',1)->orderBy('id', 'desc');
        //  dd($items->get());
        return view('admin.admin.home', [
            'items' => $items->get(),
        ]);

    }

    public function destroy($id)
    {
        $item = Admin::query()->findOrFail($id);
        if ($item && $item->type != 1) {
            Admin::query()->where('id', $id)->delete();
            return "success";
        }
        return "fail";
    }


    public function create()
    {
        $users = Admin::all();
        $role=Permission::where('id','>',0)->get();
        return view('admin.admin.create',compact('users','role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'=>'required|string',
            'email'=>'required|email|unique:admins',
            'password'=>'required|min:6',
            'confirm_password'=>'required|same:password|min:6',
            'mobile'=>'required|digits_between:8,12',

        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $newAdmin = new Admin();
        $newAdmin->name=$request->name;
        $newAdmin->email=$request->email;
        $newAdmin->password=bcrypt($request->password);
        $newAdmin->mobile=$request->mobile;
        $newAdmin->status='active';

        $newAdmin->save();
        
        $roles = '';
        if ($request->permissions) {
            $arr = [];
            foreach ($request->permissions as $permission) {
                $roles .= $permission . ',';
            }
            UserPermission::create([
                'user_id' => $newAdmin->id,
                'permission' => substr($roles, 0, -1)
            ]);
        }

        return redirect()->route('admin.admins.all')->with('status', __('cp.create'));

    }



    public function edit($id)
    {
        //dd($id);
        $item = Admin::findOrFail($id);
        $role=Permission::where('id','>',0)->get();
        $userRole=UserPermission::where('user_id',$item->id)->first();




        $userRoleItem=[];
        if($userRole)
        {
            $userRoleItem=explode(',',$userRole->permission);
        }


        //   dd($userRoleItem);
        //  dd($userRoleItem);
        
        return view('admin.admin.edit',compact('item','role','userRoleItem'));
        
        
    }


    public function update(Request $request, $id)
    {
        $newAdmin= Admin::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'name'=>'required|string',
            'mobile'=>'required|digits_between:8,12|unique:admins,mobile,'.$newAdmin->id,

        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $check = Admin::where('email',$request->email)->where('id','<>',$id)->first();
        if($check){
            $validator=[__('api.whoops')];
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $newAdmin->name=$request->name;
        $newAdmin->mobile=$request->mobile;

        $newAdmin->save();
        
        
        
        $roles = '';
        if ($request->permissions) {
            $arr = [];
            foreach ($request->permissions as $permission) {
                $roles .= $permission . ',';
            }


            $userPermission = UserPermission::where('user_id', $id)->first();

            if ($userPermission)
                $userPermission->delete();

            UserPermission::create([
                'user_id' => $id,
                'permission' => substr($roles, 0, -1)
            ]);

        }
        
        if($id==1) {
        return redirect()->route('admin.admins.all')->with('status', __('cp.update'));
        }
        else
        {
            return redirect('/admin/home');
        }

    }



    public function edit_password(Request $request, $id)
    {
        //dd($id);
        $item = Admin::findOrFail($id);
        return view('admin.admin.edit_password',['item'=>$item]);
    }


    public function update_password (Request $request, $id)
    {
        //dd($request->all());
        $users_rules=array(
            'password'=>'required|min:6',
            'confirm_password'=>'required|same:password|min:6',
        );
        $users_validation=Validator::make($request->all(), $users_rules);

        if($users_validation->fails())
        {
            return redirect()->back()->withErrors($users_validation)->withInput();
        }
        $user = Admin::findOrFail($id);
        $user->password = bcrypt($request->password);
        $user->save();



        return redirect()->route('admin.admins.all')->with('status', __('cp.update'));
    }


//    public function changeStatus(Request $request)
//    {
//
//
//
//        if ($request->event == 'delete') {
//            Admin::query()->whereIn('id', $request->IDsArray)->delete();
//        }
//        else {
//
//
//
//
//            if($request->event) {
//
//                $user = Admin::query()->whereIn('id', $request->IDsArray)->update(['status' => $request->event]);
//
//            }
//        }
//        return $request->event;
//    }

}
