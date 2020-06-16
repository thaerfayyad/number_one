<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="utf-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    
    <title>Number One For Car Service Admin Panel</title>
    
   
    <link href="{{url('login/css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{url('login/css/bootstrap-rtl.min.css')}}" rel="stylesheet">
   <!-- <link href="{{url('login/css/themify-icons.css')}}" rel="stylesheet"> -->
    <link href="{{url('login/css/style.css')}}" rel="stylesheet">
   <!-- <link href="{{url('login/css/rtl.css')}}" rel="stylesheet"> -->
    <link href="{{url('login/css/responsive.css')}}" rel="stylesheet">
    
    
    <!--<script src="{{url('login/js/jquery-1.12.2.min.js')}}"></script>-->
    <script src="{{admin_assets('/global/plugins/jquery.min.js')}}" type="text/javascript"></script>
    <script src="{{admin_assets('/global/plugins/bootstrap/js/bootstrap.min.js')}}" type="text/javascript"></script>
    <link rel="icon" href="{{url('/favicon.png')}}">
    
    @if(app()->getLocale() == 'ar')
    <style>
        label {text-align:right; display: block; }
    </style>
    @else
    <style>
        label {text-align:left; display: block; }
    </style>
    @endif
</head>
<body>


    <div class="main-wrapper">
    
        <!--Start sign in-->
        
            <section id="signIn">
                <div class="container">
                    <div class="row">
                        <div class="signinSite">
                        <div class="imgSign">
                            <div class="signIn">
                                <div class="detailsSign">
                                    <div class="titleSign">
                                    <h1>{{__('website.Sign_In_To_Admin')}}</h1>
                                    
                                       @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>{{'Error'}}!</strong>{{' Wrong data entry'}}<br>
                <ul class="list-unstyled">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif


            </div>
                                    <form id="form_st1" action="{{url(app()->getLocale().'/admin/login')}}" method="post">
                                        {{csrf_field()}}

                                        <div class="form-group">
                                            <label>{{__('website.email')}}</label>
                                            <input name="email" type="email" class="form-control" required>
                                            @if ($errors->has('email'))
                                                <span class="help-block">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label>{{__('website.password')}}</label>
                                            <div class="input_pass">
                                                <input required="" name="password" type="password" class="form-control" id="password_login" aria-required="true">
                                            </div>
                                            @if ($errors->has('password'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('password') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                        <button type="submit" class="btn btn_submit_blue">{{__('website.signin')}}</button>   
                                </form>
                                </div>
                            </div>
                            <div class="signImage">
                                <img src="{{url('login/images/background.png')}}">
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </section>
        
        <!--end sign in-->
    
    </div>
  </body>
</html> 
  