@extends('layout.adminLayout')
@section('title') {{__('cp.oil')}}
@endsection
@section('css')
@endsection

@section('content')
    <div class="col-md-3">
        <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered" >
            <h4 class="widget-thumb-heading">{{__('cp.total_of_0')}}</h4>
            <div class="widget-thumb-wrap">
                <i class="widget-thumb-icon bg-blue fa fa-user"></i>
                <div class="widget-thumb-body">
                    <span class="widget-thumb-subtitle"></span>
                    <span class="widget-thumb-body-stat" data-counter="counterup"
                          data-value="{{$price}}">{{$price}}</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered" >
            <h4 class="widget-thumb-heading">{{__('cp.total_of_1')}}</h4>
            <div class="widget-thumb-wrap">
                <i class="widget-thumb-icon bg-blue fa fa-user"></i>
                <div class="widget-thumb-body">
                    <span class="widget-thumb-subtitle"></span>
                    <span class="widget-thumb-body-stat" data-counter="counterup"
                          data-value="{{$quantity}}">{{$quantity}}</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="widget-thumb widget-bg-color-white text-uppercase margin-bottom-20 bordered" >
            <h4 class="widget-thumb-heading">{{__('cp.deff_quantity_price')}}</h4>
            <div class="widget-thumb-wrap">
                <i class="widget-thumb-icon bg-blue fa fa-user"></i>
                <div class="widget-thumb-body">
                    <span class="widget-thumb-subtitle"></span>
                    <span class="widget-thumb-body-stat" data-counter="counterup"
                          data-value="{{$diff}}">{{$diff}}</span>
                </div>
            </div>
        </div>
    </div>

    <div class="portlet light bordered">
        <div class="portlet-body">
            <div class="table-toolbar">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="btn-group">
                            <a href="{{url(getLocal().'/admin/oils/create')}}" style="margin-right: 5px"
                               class="btn sbold green">{{__('cp.add')}}
                                <i class="fa fa-plus"></i>
                            </a>
                            <button class="btn sbold blue btn--filter">{{__('cp.filter')}}
                                <i class="fa fa-search"></i>
                            </button>


                            <button class="btn sbold green event"  href="#activation" role="button"  data-toggle="modal">{{__('cp.active')}}
                                <i class="fa fa-check"></i>
                            </button>
                            <button class="btn sbold default event"  href="#cancel_activation" role="button"  data-toggle="modal">{{__('cp.not_active')}}
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
            <div class="box-filter-collapse">
                <form class="form-horizontal" method="get" action="{{url(getLocal().'/admin/oils')}}">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label class="col-md-3 control-label">{{__('cp.quantity')}}</label>
                                <div class="col-md-9">
                                    <input type="number" class="form-control" name="quantity"
                                           placeholder="{{__('cp.quantity')}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.price')}}</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="price"
                                               placeholder="{{__('cp.price')}}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.status')}}</label>
                                    <div class="col-md-9">
                                        <select id="multiple2" class="form-control"
                                                name="statusUser">
                                            <option value="">{{__('cp.all')}}</option>
                                            <option value="active">
                                                {{__('cp.active')}}
                                            </option>
                                            <option value="not_active">
                                                {{__('cp.not_active')}}
                                            </option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn sbold blue">{{__('cp.search')}}
                                            <i class="fa fa-search"></i>
                                        </button>
                                        <a href="{{url('admin/oils')}}" type="submit"
                                           class="btn sbold btn-default ">{{__('cp.reset')}}
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>



                    </div>
                    <div class="row">

                        <div class="col-md-4">
                            <div class="form-group row">
                                <label class="col-md-3 control-label">{{__('cp.companyName')}}</label>
                                <div class="col-md-9">
                                    <select name="company" id="company_id" class="form-control">
                                        <option value="">{{__('cp.companyName')}}</option>
                                        @foreach($companies as $company)
                                            <option value="{{$company->id}}">{{$company->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label class="col-md-3 control-label">{{__('cp.calibers')}}</label>
                                <div class="col-md-9">
                                    <select name="caliber" id="company_id" class="form-control">
                                        <option value="">{{__('cp.calibers')}}</option>
                                        @foreach($caliber as $one)
                                            <option value="{{$one->id}}">{{$one->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label class="col-md-3 control-label">{{__('cp.size')}}</label>
                                <div class="col-md-9">
                                    <select name="size" id="size_id" class="form-control">
                                        <option value="">{{__('cp.size')}}</option>
                                        @foreach($size as $one)
                                            <option value="{{$one->id}}">{{$one->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        . <div class="col-md-4">
                            <div class="form-group row">
                                <label class="col-md-3 control-label">{{__('cp.type')}}</label>
                                <div class="col-md-9">
                                    <select name="type" id="type" class="form-control">
                                        <option value="">{{__('cp.type')}}</option>
                                        @foreach($items as $one)
                                            <option value="">
                                                @if($one->type == 1)
                                                    <label for="" class=" btn btn-info">  {{ucwords(__('cp.in'))}}</label>

                                                @else
                                                    <label for="" class="btn btn-danger">    {{ucwords(__('cp.out'))}}</label>

                                                @endif
                                            </option>

                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
            <br><br>


            <table class="table table-striped table-bordered table-hover table-checkable order-column" id="toolsTable">
                <thead>
                <tr>
                    <th>

                    </th>
{{--                    <th> {{ucwords(__('cp.image'))}}</th>--}}
                    <th> {{ucwords(__('cp.companyName'))}}</th>
                    <th> {{ucwords(__('cp.calibers'))}}</th>
                    <th> {{ucwords(__('cp.size'))}}</th>


                    <th> {{ucwords(__('cp.price'))}}</th>
                    <th> {{ucwords(__('cp.quantity'))}}</th>
                    <th> {{ucwords(__('cp.type'))}}</th>

                    <th> {{ucwords(__('cp.status'))}}</th>
                    <th> {{ucwords(__('cp.created'))}}</th>
                    <th> {{ucwords(__('cp.action'))}}</th>
                </tr>
                </thead>
                <tbody>
                @forelse($query as $one)
                    <tr class="odd gradeX" id="tr-{{$one->id}}">
                        <td>
                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                <input type="checkbox" class="checkboxes chkBox" value="{{$one->id}}" name="chkBox"/>
                                <span></span>
                            </label>
                        </td>

{{--                        <td><img src="{{$one->image}}" width="50px" height="50px"></td>--}}

                        <td>{{@$one->company->name}}</td>
                        <td>{{@$one->caliber->name}}</td>
                        <td>{{@$one->size->name}}</td>
                        <td>{{@$one->price}}</td>
                        <td>{{@$one->quantity}}</td>

                        <td>
                            @if($one->type == 0)
                                <label class="btn-group btn-info" for="">   {{ucwords(__('cp.in'))}}</label>

                            @else
                                <label class="btn-group btn-danger" for="">   {{ucwords(__('cp.out'))}}</label>
                            @endif
                        </td>

                        <td> <span class="label label-sm {{($one->status == "active")
                                ? "label-info" : "label-danger"}}" id="label-{{$one->id}}">

                                {{__('cp.'.$one->status)}}
                            </span>
                        </td>

                        <td class="center">{{$one->created_at}}</td>

                        <td>
                            <div class="btn-group btn-action">
                                <a href="{{url(getLocal().'/admin/oils/'.$one->id.'/edit')}}"
                                   class="btn btn-xs blue tooltips" data-container="body" data-placement="top"
                                   data-original-title="{{__('cp.edit')}}"><i class="fa fa-edit"></i></a>

                            </div>
                        </td>
                    </tr>
                @empty
                    {{__('cp.no')}}
                @endforelse
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('js')
@endsection
@section('script')
    <script>
        function delete_adv(id, iss_id, e) {
            //alert(id);
            e.preventDefault();

            var url = '{{url(getLocal()."/admin/oils")}}/' + id;
            var csrf_token = '{{csrf_token()}}';
            $.ajax({
                type: 'delete',
                headers: {'X-CSRF-TOKEN': csrf_token},
                url: url,
                data: {_method: 'delete'},
                success: function (response) {
                    console.log(response);
                    if (response === 'success') {
                        $('#tr-' + id).hide(500);
                        $('#myModal' + id).modal('toggle');

                    } else {
                         swal('Error', {icon: "error"});
                    }
                },
                error: function (e) {

                }
            });

        }


    </script>
@endsection
