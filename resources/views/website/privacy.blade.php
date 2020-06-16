<!doctype html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Sala Express سلة اكسبرس</title>



  <!--Css Files -->

  <link rel="stylesheet" href="{{url('web-privacy/css/bootstrap.min.css')}}" >

  <link rel="stylesheet" href="{{url('web-privacy/css/font-awesome.min.css')}}" >

  <link rel="stylesheet" href="{{url('web-privacy/css/material-design-iconic-font.min.css')}}" >

  <link rel="stylesheet" href="{{url('web-privacy/css/animate.css')}}" />

  <link rel="stylesheet" href="{{url('web-privacy/css/custom-bootstrap-margin-padding.css')}}" />

  <link rel="stylesheet" href="{{url('web-privacy/css/style.css')}}" >



  <!--FavIcone -->

  <link rel="icon" href="{{url('/favicon.png')}}">
    <style type="text/css">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

  <!--[if lt IE 9]>

  <script src="{{url('web-privacy/js/html5shiv.min.js')}}"></script>

      <script src="{{url('web-privacy/js/respond.min.js')}}"></script>

  <![endif]-->

  <style type="text/css">

    .colordech {

      color: #ffffff !important;

      padding: 20px;

      border-radius: 10px;

      font-family: m-b;

      background: #2d2d2d8c;

    }

  </style>

</head>

<body>



<!-- Start Page Section -->



  <section class="page-section1 text-center" style="margin-top:50px;margin-bottom:50px;" >

    <div class="overlay">

    <div class="container">

      <div class="box-content">

        <div class="icon">

          <img src="{{url('/Logo02.png')}}" alt="" height="150px">

        </div>

        

        <div class="discreption">

          <h5 class="mt-50 mb-20 colordech">{!!$item->description!!}</h5>

        </div>
        
        <div class="discreption">

          <h5 class="mt-50 mb-20 colordech">آخر تحديث: 
          {{$item->updated_at->toDateString()}} - {{$item->updated_at->toTimeString()}}</h5>

        </div>
        



    </div>

  </div>
</div>

</section>

<!-- End Page Section -->



<!--JavaScript Files -->

<script src="{{url('web-privacy/js/jquery-3.2.1.js')}}"></script>

<script src="{{url('web-privacy/js/popper.min.js')}}"></script>

<script src="{{url('web-privacy/js/bootstrap.min.js')}}"></script>

<script src="{{url('web-privacy/js/wow.min.js')}}"></script>

<script> new WOW().init(); </script>

<script src="{{url('web-privacy/js/myjs.js')}}"></script>



</body>

</html>

