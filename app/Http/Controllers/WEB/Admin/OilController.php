<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Models\Caliber;
use App\Models\Category;
use App\Models\Company;
use App\Models\Language;
use App\Models\Oil;
use App\Models\Setting;
use App\Models\Size;
use App\User;
use DemeterChain\C;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use  Image ;

class OilController extends Controller
{

    public function __construct()
    {
        $this->locales = Language::all();
        $this->settings = Setting::query()->first();
        view()->share([
            'locales' => $this->locales,
            'settings' => $this->settings,

        ]);
    }
    public function index(Request $request)
    {
        $oil = Oil::all();
        $company = Company::all();
        $caliber = Caliber::all();
        $size = Size::all();

        $price = Oil::query()->where('type','1')->sum('price');
        $quantity = Oil::query()->where('type','1')->sum('quantity');
        $diff = abs( $price - $quantity) ;


        $items = Oil::query();
        if ($request->has('price')) {
            if ($request->get('price') != null)
                $items->where('price' , $request->get('price') );
        }
        if ($request->has('quantity')) {
            if ($request->get('quantity') != null)
                $items->where('quantity', $request->get('quantity') );
        }

        if ($request->has('company')) {
            if ($request->get('company') != null)
                $items->where('company_id', 'like', '%' . $request->get('company') . '%');
        }

        if ($request->has('caliber')) {
            if ($request->get('caliber') != null)
                $items->where('caliber_id', 'like', '%' . $request->get('caliber') . '%');
        }
        if ($request->has('size')) {
            if ($request->get('size') != null)
                $items->where('size_id', 'like', '%' . $request->get('size') . '%');
        }
        if ($request->has('type')) {
            if ($request->get('type') != null)
                $items->where('type',  $request->get('type'));
        }

        if ($request->has('statusUser')) {
            if ($request->get('statusUser') != null)
                $items->where('status',  $request->get('statusUser'));
        }
        $items = $items->orderBy('id', 'desc')->get();



        return view('admin.oils.home', [
            'items' => $oil,
            'price' => $price,
            'quantity' => $quantity,
            'diff' =>$diff,
            'companies' => $company,
            'caliber' => $caliber,
            'size' => $size,
            'query' =>$items,

        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $item = Company::where('status','active')->get();
        $size = Size::where('status','active')->get();
        $caliber = Caliber::where('status','active')->get();
        return view('admin.oils.create',[
            'item' =>$item,
            'size' =>$size,
            'caliber' =>$caliber,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $roles = [
//            'image' => 'required|image|mimes:jpeg,jpg,png',
            // 'name'     => 'required',
            'quantity' =>'required',
            'price' =>'required',

        ];
        $locales = Language::all()->pluck('lang');
        foreach ($locales as $locale) {
//            $roles['name_' . $locale] = 'required';
        }
        $this->validate($request, $roles);


        $item = new Oil();



        $item->quantity = $request->get('quantity');
        $item->price = $request->get( 'price');
        $item->company_id = $request->get( 'company_id');
        $item->caliber_id = $request->get( 'caliber_id');
        $item->size_id = $request->get( 'size_id');

        $item->save();
        return redirect()->back()->with('status', __('cp.create'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $item = Oil::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $item = Oil::findOrFail($id);
        $companies = Company::all();
        $size = Size::all();
        $caliber = Caliber::all();

        return view('admin.oils.edit', [
            'item' =>$item,
            'companies' => $companies,
              'size' => $size,
            'calibers' =>$caliber,

        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $roles = [
            'image' => 'image|mimes:jpeg,jpg,png',
            'quantity' =>'required',
            'price' =>'required',
            'company_id' =>'required',

        ];
        $locales = Language::all()->pluck('lang');
        foreach ($locales as $locale) {

        }
        $this->validate($request, $roles);


        $item = Oil::query()->findOrFail($id);


        $item->quantity = $request->get('quantity');
        $item->price = $request->get( 'price');
        $item->company_id = $request->get( 'company_id');
        $item->caliber_id = $request->get( 'caliber_id');
        $item->size_id = $request->get( 'size_id');

        $item->save();

        return redirect()->back()->with('status', __('cp.update'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $item = Oil::query()->findOrFail($id);
        if ($item) {
            Oil::query()->where('id', $id)->delete();

            return "success";
        }
        return "fail";
    }
}
