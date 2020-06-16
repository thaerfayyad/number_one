@extends('layout.adminLayout')
@section('title') {{__('cp.order-details')}}
@endsection
@section('css')

@if(app()->getLocale() == 'ar')
@php
$align='right';
$pxl='885px';
@endphp
@else
@php
$align='left';
$pxl='920px';
@endphp
@endif
<style>
    .stamp
{
	position:absolute; top: 180px; {{$align}}:900px; background:url({{url('uploads/images/products/draft.png')}}) no-repeat;
	width:200px;
	height:180px;
}

.completed
{
	position:absolute; top: 190px; {{$align}}:{{$pxl}}; background:url({{url('uploads/images/products/completed.png')}}) no-repeat;
	width:200px;
	height:180px;
}

</style>
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption">
                      <i class="icon-settings font-dark"></i>
                      <span class="caption-subject font-dark sbold uppercase" style="color: #e02222 !important;">{{__('cp.order-details')}} ({{__('cp.order_date').": ".$order->created_at->toDateString()." ".__('cp.order_time').": ".$order->created_at->toTimeString()}})</span>
                    </div>
                </div>
                <div class="portlet-body form">
                    <form method="post" action="{{url(app()->getLocale().'/admin/orders/'.$order->id)}}"
                          enctype="multipart/form-data" class="form-horizontal" role="form" id="form_company">
                        {{ csrf_field() }}
                        {{ method_field('PATCH')}}

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="">
                                    <b>{{ucwords(__('cp.cname'))}}: </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{$order->user->name}}</label>
                                </div>
                                
                                 <label class="col-sm-2 control-label" for="">
                                   <b>{{__('cp.category')}}: </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{$order->category->name}}</label>
                                </div>

                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                               
                                <label class="col-sm-2 control-label" for="">
                                  <b> {{__('cp.amount')}}: </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{$order->amount}}</label>
                                </div>
                                
                        </fieldset>

                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="">
                                   <b>{{ucwords(__('cp.description'))}} </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{@$order->description}}</label>
                                </div>
                            </div>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="">
                                   <b>{{ucwords(__('cp.employee'))}} </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{@$order->employee->name}}</label>
                                </div>
                            </div>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="">
                                   <b>{{ucwords(__('cp.month'))}} </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{@$order->month}}</label>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="">
                                   <b>{{ucwords(__('cp.yaer'))}} </b>
                                </label>
                                <div class="col-md-2">
                                    <label class="control-label" for="">{{@$order->yaer}}</label>
                                </div>
                            </div>
                        </fieldset>




                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-offset-3 col-md-9">
                                    <a href="{{url(getLocal().'/admin/electricity')}}" class="btn default">{{__('cp.cancel')}}</a>
                                </div>
                            </div>
                        </div>

                        </form>



                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
@section('js')
@endsection
@section('script')
    <script>
    $(document).ready(function () {
        
    $("#invoice_discount").on("input", function(evt) {
   var self = $(this);
   self.val(self.val().replace(/[^0-9\.]/g, ''));
   if ((evt.which != 46 || self.val().indexOf('.') != -1) && (evt.which < 48 || evt.which > 57)) 
   {
     evt.preventDefault();
   }
 });
    });
       
    </script>
@endsection
