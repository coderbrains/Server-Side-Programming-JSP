<%-- 
    Document   : signup
    Created on : May 11, 2021, 3:27:49 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
    </head>
    <body style="background: url(img/Sample.jpg); background-size: cover; background-attachment: fixed">
        <div class="container">
            
            <div class="row center-align">
                <div class="col m6 s12 offset-m3">
                    <div class="card">
                    <div class="card-content">
                        <h4 id="title">Register here !!</h4>
                        
                        
                        <div class="form" >
                            
                            <form action="Register" method="post" id="myForm">
                                <input type="text"   placeholder="Enter Your name" name="user_name"/>
                                <input type="password" placeholder="Enter your Password" name="password"/>
                                <input type="email" placeholder="Enter Your Mail Id" name="email"/>
                                
                                <div class="file-field input-field">
                                <div class="btn">
                                  <span>File</span>
                                  <input name ="image" type="file">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                </div>
                              </div>  
                                
                                <button class="btn" type="submit">Submit</button>
                                
                            </form>
                            
                            
                        </div>
                        
                        <div class="loader" style="margin: 10px; display: none">
                            
                            <div class="preloader-wrapper big active">
                            <div class="spinner-layer spinner-blue">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-red">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-yellow">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-green">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>
                          </div>
                            
                            <h5>Please wait....</h5>  
                        
                    </div>
                        
                        
                </div>
                    
                </div>
                
                
            </div>
            
            
        </div>
            
            
            <script
                src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                crossorigin="anonymous">
            </script>
            
            <script>
                $(document).ready(function (){
                   
                   $("#myForm").on('submit', function(event){
                       event.preventDefault();
//                       var  f = $(this).serialize();
                        let f = new FormData(this);
                       console.log(f);
                       
                       $(".loader").show();
                       
                       $(".form").hide();
                       
                       
                       $.ajax({
                           url : "Register",
                           data : f, 
                           type : 'POST',
                           success : function (data, textStatus, jqXHR){
                               
                               console.log(data);
                               console.log("Success");
                               $(".loader").hide();
                       
                               $(".form").show();
                               
                               if(data.trim()  ===  'done'){
                                   $('#title').html("Successfully Registered!!");
                                   $('#title').addClass('green-text');
                               }else{
                                    $('#title').html("Error occured!!");
                                    $('#title').addClass('red-text');
                                    
                               }
                       },
                       
                       error:function (jqXHR, textStatus, errorThrown){
                            console.log(data);
                            console.log("Error...");
                            $(".loader").hide();
                       
                            $(".form").show();
                            $('#title').addClass('green-text');
                       },
                       
                       processData : false,
                       contentType :false 
                       
                       })
                       
                       
                   });
                })
            </script>
    </body>
</html>
