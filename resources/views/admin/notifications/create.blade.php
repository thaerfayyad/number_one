@extends('layout.adminLayout')
@section('title') {{ucwords(__('cp.notifications'))}}
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
                              style="color: #e02222 !important;">{{__('cp.send_message')}}</span>
                    </div>
                </div>
                <div class="portlet-body form">
                    <form method="post" id="form" action="{{url(app()->getLocale().'/admin/notifications')}}"
                          enctype="multipart/form-data" class="form-horizontal" role="form">
                        {{ csrf_field() }}
                        <div class="form-body">

                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="order">
                                        {{__('cp.subject')}}
                                    </label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="title" name="title" value="{{ old('title') }}" required >                                    </div>
                                </div>
                            </fieldset>
                            
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="order">
                                        {{__('cp.user')}}
                                    </label>
                                    <div class="col-md-6">
                                        <select id="user_id" class="form-control select2"
                                                name="user_id">
                                            <option value="">{{__('cp.select')}}</option>
                                            @foreach($usersList as $one)
                                                <option value="{{$one->id}}" {{ old('user_id') == $one->id ? 'selected' : '' }}>
                                                    {{$one->name}}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="order">
                                        {{__('cp.message')}}
                                    </label>
                                    <div class="col-md-6">
                                        <textarea class="form-control" name="message" rows="6" required >{{ old('message') }}</textarea>
                                    </div>
                                </div>
                            </fieldset>



                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn green">{{__('cp.submit')}}</button>
                                        <a href="{{url(getLocal().'/admin/notifications')}}" class="btn default">{{__('cp.cancel')}}</a>
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
    
@endsection
