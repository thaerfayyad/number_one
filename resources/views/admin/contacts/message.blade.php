@extends('layout.adminLayout')
@section('title') {{ucwords(__('cp.contact'))}}
@endsection
@section('css')
@endsection
@section('content')
<div class="portlet light bordered">
<form class="form-horizontal" method="post" action=""  enctype="multipart/form-data" id="driver_create">

    <div class="box-body">

            <div class="form-group">
                <label  class="col-sm-2 control-label">{{ucwords(__('cp.full_name'))}} </label>
                <div class="col-sm-6">
                    <input type="text"  value="{{$item->name}}" class="form-control" disabled>
                </div>
            </div>

        <div class="form-group">
            <label class="col-sm-2 control-label"> {{ucwords(__('cp.email'))}} </label>
            <div class="col-sm-6">
                <input type="text"  value="{{$item->email}}" class="form-control" disabled>
            </div>
        </div>

        <div class="form-group">
            <?php $type = '';
            if($item->type == 0) $type = 'suggestion';
            elseif ($item->type == 1) $type = 'problem';
            else $type = 'other';
            ?>

            <label class="col-sm-2 control-label">  {{ucwords(__('cp.type_msg'))}} </label>
            <div class="col-sm-6">
                <input type="text"  value="{{__('cp.'.$type)}}" class="form-control" disabled>
            </div>
        </div>


        <div class="form-group">
            <label class="col-sm-2 control-label"> {{ucwords(__('cp.msg'))}} </label>
            <div class="col-sm-6">
                <div style="border: 1px solid #d2d6de;padding: 10px;">
                    <p>{!! $item->message !!}</p>
                </div>
            </div>
        </div>
        
        
        <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <a href="{{url(getLocal().'/admin/contact')}}" class="btn default">{{__('cp.cancel')}}</a>
                                    </div>
                                </div>
                            </div>
    </div>
</form>
</div>
@endsection

@section('js')
@endsection
@section('script')

@endsection
