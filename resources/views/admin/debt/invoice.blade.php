<html>
    <head>
        <meta charset="utf-8" />
        
        <title>Number1</title>
        
        <link href="https://fonts.googleapis.com/css?family=Cairo:300,400,600,700" rel="stylesheet" type="text/css"/>
        <style>
        
       body
       {
           font-family:'Cairo' !important;
           font-size:12px;
           font-weight:bold;
       }
        
            .container {
                width: 500px;
                margin: auto;
                direction:rtl;
             }
            .text-center {
                text-align: center !important
            }
            .logo {
                text-align: center;
                overflow: hidden
            }
            .secHead {
                text-align:center;
                
            }
            .clearfix {
                clear: both
            }
            .titleBody h4 {
                margin-bottom: 0;
            }
            .titleBody p {
                margin: 0;
            }
            .secBody .titleBody, .secBody .tableBody{
                padding: 5px 10px;
           
            }
            #customers {
                border-collapse: collapse;
                width: 100%;
                font-size:12px !important;
            }
            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
                font-weight: bold
            }
            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                color: #000;
            }
            .width50px {
                width: 60px
            }
            .text-right {
                text-align: right !important
            }
            .text-left {
                text-align: left !important;
                float: left
            }
            .rightF {
                float: right
            }
            .sectit {
                 padding: 0px 40px;
                text-align: center
            }
            .sectit p {
                text-align: justify
            }
        </style>
        
         
        </head>
        
        <body>
    
        <div class="header">
            <div class="container">
                <div class="logo">
                    <img src="{{url('/Logo.png')}}" width="70" height="70" />
                </div>
                <div class="secHead">
                    <p>فاتورة </p>
                </div>
            </div>
        </div>
        
        <div class="clearfix"></div>
        
        <div class="secBody">
           <div class="container">
            
            <div class="tableBody">
                <table id="customers">
                  <tr>
                     <th>تفاصيل العميل</th>
                     <th>التاريخ والوقت</th>
                  </tr>
                  <tr>
                    <td valign="top">
                       الاداري: <span>{{$order->user->name}}</span>
                        <br>
                        
                        رقم الطلب : <span>{{$order->id}}</span> 
                    </td>
                    <td valign="top">

                         التاريخ :    <span>{{$order->created_at->toDateString()}} </span>
                        <br>
                        
                         الوقت:    <span>{{$order->created_at->toTimeString()}} </span> </span>
                    
                    </td>
                  </tr>
              </table>
                <table id="orderdetails">
                  <tr>
                     <th>التفاصيل </th>
                  </tr>
                  <tr>
                    <td valign="top">
                       التصنيف: <span>{{$order->category->name}}</span> <br>
                       المبلغ: <span>{{$order->amount}}</span> <br>
                       العدد: <span>{{$order->quantity}}</span> <br>
                       سعر الوحدة: <span>{{$order->price_one}}</span> <br>
                        تفاصيل : <span>{{$order->description}}</span> 
                    </td>
                  </tr>
              </table>


            </div>
          </div>
        </div>
        <br>
        
    </body>
    </html>