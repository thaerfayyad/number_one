@extends('layout.adminLayout')
@section('title') {{__('cp.debt')}}
@endsection
@section('css')
@endsection
@section('content')
    <div class="portlet light bordered">
        <div class="portlet-body">
            <div class="table-toolbar">
                <div class="table-toolbar">

                <div class="row">

                    <div class="col-sm-9">

                        <div class="btn-group">

                            <button class="btn sbold blue btn--filter">{{__('cp.filter')}}

                                <i class="fa fa-search"></i>

                            </button>
                            

                        </div>

                    </div>



                </div>

                <div class="box-filter-collapse">

                    <form class="form-horizontal" method="get" action="{{url(getLocal().'/admin/debt')}}">

                        <div class="row">

                            <div class="col-md-5">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.status')}}</label>
                                    <div class="col-md-9">
                                        <select id="multiple2" class="form-control"
                                                name="statusUser">
                                            <option value="">{{__('cp.all')}}</option>
                                            <option value="-1">{{__('cp.new')}}</option>
                                            <option value="0">{{__('cp.preparing')}}</option>
                                            <option value="1">{{__('cp.onDelivery')}}</option>
                                            <option value="2">{{__('cp.complete')}}</option>
                                            <option value="3">{{__('cp.rejected')}}</option>
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

                                        <a href="{{url(app()->getLocale().'/admin/debt')}}" type="submit"

                                           class="btn sbold btn-default ">{{__('cp.reset')}}

                                            <i class="fa fa-refresh"></i>

                                        </a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-5">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.customer_name')}}</label>

                                    <div class="col-md-9">

                                        <input type="text" class="form-control" name="userName"

                                               placeholder="{{__('cp.customer_name')}}">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>

                </div>

            </div>

                <table class="table table-striped table-bordered table-hover table-checkable order-column" id="toolsTable">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th> {{ucwords(__('cp.executive'))}}</th>
                        <th> {{ucwords(__('cp.amount'))}}</th>

                    </tr>
                    </thead>
                    <tbody>
                    @forelse($items as $item)
                        <tr class="odd gradeX" id="tr-{{$item->id}}">
                            <td>
                                 {{$loop->iteration}}
                            </td>
                            <td> {{@$item->employee->name}}</td>
                            <td>{{$item->total_amount}}</td>
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

                    var url = '{{url(getLocal()."/admin/debt")}}/' + id;
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
                
                function change_ordrSts(id, sts, e) {
                    e.preventDefault();

                    var url = '{{url(getLocal()."/admin/change_orderSts")}}/' + id;
                    var csrf_token = '{{csrf_token()}}';
                    $.ajax({
                        type: 'post',
                        headers: {'X-CSRF-TOKEN': csrf_token},
                        url: url,
                        data: {sts:sts, _token: csrf_token},
                        success: function (response) {
                            if (response === 'success') {
                                
                                $('#label-' + id).removeClass();
                                $("#actionId-" + id).html('');
                        
                                if(sts == 0) {
                                $('#label-' + id).html("{{__('cp.preparing')}}");
                                $('#label-' + id).addClass('label label-sm label-info');
                                $("#actionId-" + id).append('<a href="#" onclick="change_ordrSts('+id+',\'1\',event)" class="btn btn-xs blue tooltips" data-container="body" data-placement="top" data-original-title="{{__('cp.onDelivery')}}"><i class="fa fa-motorcycle"></i></a>');
                                } else if(sts == 1) {
                                $('#label-' + id).html("{{__('cp.onDelivery')}}");
                                $('#label-' + id).addClass('label label-sm label-warning');
                                $("#actionId-" + id).append('<a href="#" onclick="change_ordrSts('+id+',\'2\',event)" class="btn btn-xs blue tooltips" data-container="body" data-placement="top" data-original-title="{{__('cp.complete')}}"><i class="fa fa-lock"></i></a>');
                                }
                                else if(sts == 2) {
                                $('#label-' + id).html("{{__('cp.complete')}}");
                                $('#label-' + id).addClass('label label-sm label-success');
                                }
                                else if(sts == 3) {
                                $('#label-' + id).html("{{__('cp.rejected')}}");
                                $('#label-' + id).addClass('label label-sm label-default');
                                }

                            } else {
                                swal('Error', {icon: "error"});
                            }
                        },
                        error: function (e) {

                        }
                    });

                }
                
                function openWindow($url)
        {
            window.open($url, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=200,width=800,height=700");
        }
                
                
                
                
                $(document).ready(function () {
                 setTimeout(function() {
                     window.location.reload();
                  }, 60000);
                });


            </script>
@endsection
