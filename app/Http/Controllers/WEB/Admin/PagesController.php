<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Models\Language;
use App\Models\Page;
use App\Models\Setting;
use Illuminate\Support\Facades\Input;
use Cocur\Slugify\Slugify;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PagesController extends Controller
{
    public function __construct()
    {
        view()->share([
            'locales' => Language::all(),
            'setting' => Setting::query()->first(),
        ]);
    }


    public function image_extensions(){

        return array('jpg','png','jpeg','gif','bmp');

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pages = Page::all();
        return view('admin.pages.home', ['pages' => $pages]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return 0;
        $locales = Language::all()->pluck('lang');
        $roles = [];
        foreach ($locales as $locale) {
            $roles['title_' . $locale] = 'required';
            $roles['description_' . $locale] = 'required';
            $roles['key_words_' . $locale] = 'required';
        }
        $request->validate($roles);

        $page = New Page();
        foreach ($locales as $locale) {
            $page->translateOrNew($locale)->title = ucwords($request->get('title_' . $locale));
            //$slugify = new Slugify();
            //$slug = $slugify->slugify($request->get('title_' . $locale));
            // $page->translateOrNew($locale)->slug = str_slug($request->get('title_' . $locale), '-');
            $page->translateOrNew($locale)->description = $request->get('description_' . $locale);
            $page->translateOrNew($locale)->key_words = $request->get('key_words_' . $locale);

            if(Input::file("image")&&Input::file("image")!=NULL)
            {
                if (Input::file("image")->isValid())
                {
                    $destinationPath=public_path('uploads/pages');

                    $extension=strtolower(Input::file("image")->getClientOriginalExtension());
                    //dd($extension);
                    $array= $this->image_extensions();
                    if(in_array($extension,$array))
                    {
                        $fileName=uniqid().'.'.$extension;
                        Input::file("image")->move($destinationPath, $fileName);
                    }
                }
            }

            if(isset($fileName)){$page->image='uploads/pages/'.$fileName;}

        }
        if ($page->save()) {
            return redirect()->back()->with('status',  __('common.create'));
        }
        return redirect()->back()->withErrors('errors', ['Page not created']);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Page::query()->findOrFail($id);
        return view('admin.pages.edit', ['item' => $item]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //return 0;
        $page = Page::query()->findOrFail($id);
        $locales = Language::all()->pluck('lang');


        foreach ($locales as $locale) {
            $page->translate($locale)->title = ucwords($request->get('title_' . $locale));
//            $slugify = new Slugify();
//            $slug = $slugify->slugify($request->get('title_' . $locale));
//            $page->translate($locale)->slug = $slug;
            // $page->translateOrNew($locale)->slug = trim(strtolower($request->get('title_' . $locale)));

            $page->translate($locale)->description = $request->get('description_' . $locale);
            $page->translate($locale)->key_words = $request->get('key_words_' . $locale);

            if(Input::file("image")&&Input::file("image")!=NULL)
            {
                if (Input::file("image")->isValid())
                {
                    $destinationPath=public_path('uploads/pages');

                    $extension=strtolower(Input::file("image")->getClientOriginalExtension());
                    //dd($extension);
                    $array= $this->image_extensions();
                    if(in_array($extension,$array))
                    {
                        $fileName=uniqid().'.'.$extension;
                        Input::file("image")->move($destinationPath, $fileName);
                    }
                }
            }

            if(isset($fileName)){$page->image='uploads/pages/'.$fileName;}


        }
        if ($page->save()) {
            return redirect()->back()->with('status',  __('common.update'));
        }
        return redirect()->back()->withErrors('errors', ['Page not updated']);
    }

    public function destroy($id)
    {
        $page = Page::query()->findOrFail($id);
        if ($page->delete()) {
            return 'success';
        }
        return 'fail';
    }



    public function changeStatus(Request $request)
    {
        //return $request->all();
        if ($request->event == 'delete') {
            Page::query()->whereIn('id', $request->IDsArray)->delete();
        } else {
            Page::query()->whereIn('id', $request->IDsArray)->update(['status' => $request->event]);
        }
        return $request->event;
    }
}
