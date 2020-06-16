<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use App\Models\Language;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;


class SettingController extends Controller
{
    private $locales = '';

    public function __construct()
    {
        $this->locales = Language::all();
        view()->share([
            'locales' => $this->locales,
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function image_extensions(){

        return array('jpg','png','jpeg','gif','bmp','pdf','txt','docx','doc','ppt','xls','zip','rar');

    }


    public function index()
    {

        $item = Setting::query()->first();
        //return $setting->translate('en')->title;
        return view('admin.settings.edit', ['item' => $item]);
    }

    public function update(Request $request)
    {

        $locales = Language::all()->pluck('lang');
        $roles = [
           // 'logo' => 'required',
            'info_email' => 'required|email',
            'app_store_url' => 'required|url',
            'play_store_url' => 'required|url',
            'mobile' => 'required|numeric',
            'phone' => 'numeric',
            'facebook' => 'required|url',
            'twitter' => 'required|url',
            'google_plus' => 'url',
            'linked_in' => 'required|url',
            'instagram' => 'url',

        ];

        foreach ($locales as $locale) {
            $roles['title_' . $locale] = 'required';
            $roles['address_' . $locale] = 'required';
            $roles['description_' . $locale] = 'required';
        }
        $this->validate($request, $roles);
        $setting = Setting::query()->findOrFail(1);
        // $setting->url = trim($request->get('url'));

        $setting->info_email = trim($request->get('info_email'));
        $setting->app_store_url = trim($request->get('app_store_url'));
        $setting->play_store_url = trim($request->get('play_store_url'));
        $setting->mobile = trim($request->get('mobile'));
        $setting->phone = trim($request->get('phone'));
        $setting->facebook = trim($request->get('facebook'));
        $setting->twitter = trim($request->get('twitter'));
        $setting->google_plus = trim($request->get('google_plus'));
        $setting->linked_in = trim($request->get('linked_in'));
        $setting->instagram = trim($request->get('instagram'));
        $setting->min_order = trim($request->get('min_order'));
        $setting->from_hour = trim($request->get('from_hour'));
        $setting->to_hour = trim($request->get('to_hour'));
        $setting->latitude = trim($request->get('latitude'));
        $setting->longitude = trim($request->get('longitude'));
        $setting->enforce_close = trim($request->get('enforce_close'));



        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $extention = $logo->getClientOriginalExtension();
            $file_name = str_random(15) . "" . rand(1000000, 9999999) . "" . time() . "_" . rand(1000000, 9999999) . "." . $extention;
            Image::make($logo)->resize(800, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save("uploads/images/settings/$file_name");
            $setting->logo = $file_name;
        }
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $extention = $image->getClientOriginalExtension();
            $file_name = str_random(15) . "" . rand(1000000, 9999999) . "" . time() . "_" . rand(1000000, 9999999) . "." . $extention;
            Image::make($image)->resize(800, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save("uploads/images/settings/$file_name");
            $setting->image = $file_name;
        }



        foreach ($locales as $locale) {
            $setting->translate($locale)->title = trim(ucwords($request->get('title_' . $locale)));
            $setting->translate($locale)->address = trim(ucwords($request->get('address_' . $locale)));
            $setting->translate($locale)->description = ucwords($request->get('description_' . $locale));
        }
        // return $request;
        $setting->save();

        return redirect()->back()->with('status', __('cp.update'));
    }
}
