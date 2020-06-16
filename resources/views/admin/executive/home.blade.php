@extends('layout.adminLayout')
@section('title') {{ucwords(__('cp.executive'))}}
@endsection
@section('css')
<style>
    .close {
    display: inline-block;
    margin-top: 0;
    margin-left: 0;
    width: 9px;
    height: 9px;
    background-repeat: no-repeat!important;
    text-indent: 1px;
    outline: 0;
    background-image: url(../img/remove-icon-small.png)!important;
}
.modal-title {
    margin: 0;
    line-height: 1.42857;
    font-weight: bold;
}
.form-control {
    display: block;
    width: 100%;
    height: 49px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #eeeeee;
    border-radius: 0;
    height: 50px;
    box-shadow: none;
}
.btnSend {
    color: white;
    background: #657425;
    margin-left: 20px;
    width: 100%;
    text-align: center;
    margin: auto;
    display: block;
    height: 50px;
    line-height: 50px;
}
.btnSend a{
    color: white;
    background: #657425;
    width: 100%;
}
    
</style>
@endsection
@section('content')
    <div class="portlet light bordered">
        <div class="portlet-body">
            <div class="table-toolbar">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="btn-group">
                            <a href="{{url(app()->getLocale().'/admin/executive/create')}}" style="margin-right: 5px"
                               class="btn sbold green">{{__('cp.add')}}
                                <i class="fa fa-plus"></i>
                            </a>
                            <button class="btn sbold blue btn--filter">{{__('cp.filter')}}
                                <i class="fa fa-search"></i>
                            </button>

                            <button class="btn sbold green event"  data-action="active" href="#activation" role="button"  data-toggle="modal">{{__('cp.active')}}
                                <i class="fa fa-check"></i>
                            </button>
                            <button class="btn sbold default event"href="#cancel_activation" role="button"  data-toggle="modal" data-action="not_active">{{__('cp.not_active')}}
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="box-filter-collapse">
                    <form class="form-horizontal" method="get" action="{{url(getLocal().'/admin/executive')}}">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.email')}}</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email"
                                               placeholder="{{__('cp.email')}}">
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
                                        <a href="{{url('admin/employee')}}" type="submit"
                                           class="btn sbold btn-default ">{{__('cp.reset')}}
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group row">
                                    <label class="col-md-3 control-label">{{__('cp.mobile')}}</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="mobile"
                                               placeholder="{{__('cp.mobile')}}">
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
                    <th>

                    </th>
                    <th> {{ucwords(__('cp.profile_image'))}}</th>
                    <th> {{ucwords(__('cp.name'))}}</th>
                    <th> {{ucwords(__('cp.email'))}}</th>
                    <th> {{ucwords(__('cp.mobile'))}}</th>
                    <th> {{ucwords(__('cp.status'))}}</th>
                    <th> {{ucwords(__('cp.created'))}}</th>
                    <th> {{ucwords(__('cp.action'))}}</th>
                </tr>
                </thead>
                <tbody>
                @forelse($items as $item)
                    <tr class="odd gradeX" id="tr-{{$item->id}}">
                        <td>
                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                <input type="checkbox" class="checkboxes chkBox" value="{{$item->id}}" name="chkBox"/>
                                <span></span>
                            </label>
                        </td>
                        <td> <img src="{{@$item->image_profile}}"style="width: 50px;"> </td>
                        <td> {{@$item->name}}</td>
                        <td><a href="mailto:{{$item->email}}">{{@$item->email}}</a></td>
                        <td> {{@$item->mobile}}</td>



                        <td> <span class="label label-sm {{ ($item->status == "active")
                                ? "label-info" : "label-danger"}} " id="label-{{$item->id}}">

                                {{__('cp.'.$item->status)}}
                            </span></td>
                        <td class="center">{{$item->created_at}}</td>
                        <td>
                            <div class="btn-group btn-action">
                                <a href="{{url(getLocal().'/admin/executive/'.$item->id.'/edit')}}"
                                   class="btn btn-xs blue tooltips" data-container="body" data-placement="top"
                                   data-original-title="{{__('cp.edit')}}"><i class="fa fa-edit"></i></a>

                                <a href="{{url(getLocal().'/admin/executive/'.$item->id.'/edit_password')}}"
                                   class="btn btn-xs blue tooltips" data-container="body" data-placement="top"
                                   data-original-title="{{__('cp.edit_password')}}"><i class="fa fa-expeditedssl"></i></a>
                                 
                                <a href="#" id="openEmailModal"  data-email_id="{{$item->email}}"
                                   class="btn btn-xs blue tooltips" data-container="body" data-placement="top"
                                   data-original-title="{{__('cp.send_email')}}"><i class="fa fa-envelope-o"></i></a>

                            </div>
                        </td>
                    </tr>

                @empty
                    {{__('cp.no')}}
                @endforelse
                
                
                
                <div class="modal fade" id="modalEmailReview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-person" role="document">
                <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">{{__('cp.send_email')}}</h4>
                    </div>
                    <div class="modal-body">
                        <div class="modal-details">
                             <div class="infoRate">
                                 <div class="form-group">
                                     <label>{{__('cp.email')}}</label>
                                     <input id="email_email" type="text" class="form-control" aria-required="true">
                                 </div>
                                 
                                 <div class="form-group">
                                     <label>{{__('cp.subject')}}</label>
                                     <input id="email_title" type="text" class="form-control" aria-required="true">
                                 </div>
                                 
                                 <div class="form-group">
                                     <label>{{__('cp.message')}}</label>
                                     <textarea id="email_body" class="form-control" aria-required="true"></textarea>
                                 </div>
                                 
                                 
                                 <div class="btnSend">
                                    <a href="#" id="sendEmail">{{__('cp.send')}}</a>
                                 </div>
                                 
                                 <div class="form-group">
                                     <div class="alert alert-danger alertRate" role="alert" style="display:none">
                                          {{__('website.error')}}
                                    </div>
                                 </div>
                                 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
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
            console.log(id);
            console.log(iss_id);
            var url = '{{url(getLocal()."/admin/executive")}}/' + id;
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
                        // swal('Error', {icon: "error"});
                    }
                },
                error: function (e) {
                    // swal('exception', {icon: "error"});
                }
            });

        }
        
        
        $(document).on('click','#openEmailModal',function(){
        var email_id = $(this).data("email_id");
        $('#modalEmailReview').modal('show');
        $('#modalEmailReview #email_email').val(email_id);
    });
        
        
        $(document).on('click','#sendEmail', function(e){
            e.preventDefault();
        
        $('#sendEmail').val("{{__('cp.send')}}"+" ....");
        
        var email_email = $('#email_email').val();
        var email_title = $('#email_title').val();
        var email_body = $('#email_body').val();
        var url = '{{url(getLocal()."/admin/emailCustomer")}}' ;
        var csrf_token = '{{csrf_token()}}';
        if(email_email == ""){
             $('#email_email').css("border", "red solid 1px"); 
        }
        if(email_title == ""){
             $('#email_title').css("border", "red solid 1px"); 
        }
        if(email_body == ""){
             $('#email_body').css("border", "red solid 1px"); 
        }
        
        if(email_email == "" || email_title == "" || email_body == "")
        {
            return false;
        }
        $.ajax({
            type: 'post',
            headers: {'X-CSRF-TOKEN': csrf_token},
            url: url,
            data: {email_email: email_email, email_title: email_title, email_body: email_body, _token: csrf_token},
            success: function (response) {
                if (response === 'done') {
                    $('#email_title').val("");
                    $('#email_body').val("");
                    $('#email_email').val("");
                    $('#modalEmailReview').modal('hide');
                }
                else{
                }
            },
            error: function (e) {
                // swal('exception', {icon: "error"});
            }
            
        });
    });


    </script>
@endsection
