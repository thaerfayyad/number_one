@extends('layout.adminLayout')
@section('title') {{__('cp.oil')}}
@endsection
@section('css')
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-settings font-dark"></i>
                        <span class="caption-subject font-dark sbold uppercase"
                              style="color: #e02222 !important;">{{__('cp.oilEdit')}}</span>
                    </div>
                </div>
                <div class="portlet-body form">
                    <form method="post" action="{{url(app()->getLocale().'/admin/oils/'.$item->id)}}"
                          enctype="multipart/form-data" class="form-horizontal" role="form">
                        {{ csrf_field() }}
                        {{ method_field('PATCH')}}
                        <div class="form-body">

                            <fieldset>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="quantity">
                                            {{__('cp.quantity')}}
                                            <span class="symbol">*</span>
                                        </label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="quantity"
                                                   placeholder=" {{__('cp.quantity')}} "
                                                   id="quantity"
                                                   value="{{ @$item->quantity}}"  required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="price">
                                            {{__('cp.price')}}
                                            <span class="symbol">*</span>
                                        </label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="price"
                                                   placeholder=" {{__('cp.price')}} "
                                                   id="price"
                                                   value="{{ @$item->price}}"  required>
                                        </div>
                                    </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="price">
                                        {{__('cp.companyName')}}
                                        <span class="symbol">*</span>
                                    </label>
                                    <div class="col-md-6">
                                        <select name="company_id" id="company_id" class="form-control">
                                            @foreach($companies as $company)
                                                <option value="{{$company->id }} "  {{$company->id == $item->company__id ? 'selected':''}} >{{$company->name}}</option>

                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="price">
                                        {{__('cp.calibers')}}
                                        <span class="symbol">*</span>
                                    </label>
                                    <div class="col-md-6">
                                        <select name="caliber_id" id="caliber_id" class="form-control">
                                            @foreach($calibers as $one)
                                                <option value="{{$one->id }} "  {{$one->id == $item->caliber_id ? 'selected':''}} >{{$one->name}}</option>

                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="price">
                                        {{__('cp.size')}}
                                        <span class="symbol">*</span>
                                    </label>
                                    <div class="col-md-6">
                                        <select name="size_id" id="size_id" class="form-control">

                                        @foreach($size as $one)
                                            <option value="{{$one->id }} "  {{$one->id == $item->size_id ? 'selected':''}} >{{$one->name}}</option>
                                        @endforeach
                                    </select>

                                    </div>
                                </div>


                            </fieldset>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn green">{{__('cp.edit')}}</button>
                                        <a href="{{url(getLocal().'/admin/categories')}}" class="btn default">{{__('cp.cancel')}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')

@endsection

@section('script')

    <script>

        $('#edit_image').on('change', function (e) {

            readURL(this, $('#editImage'));

        });

    </script>

@endsection

