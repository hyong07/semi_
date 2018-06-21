<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
 <style>

#headernavi{
	  
      position: fixed;
      width: 100%;
      font-size: 20px;
      min-width: 1200px;
}

 	body{
/*  background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/10/21/20181/cad2441dd3252cf53f12154412286ba0.jpg');  */
    padding-top : 70px;
}

/* #login-dp{ */
/*     min-width: 250px; */
/*     padding: 14px 14px 0; */
/*     overflow:hidden; */
/*     background-color:rgba(255,255,255,.8); */
/* } */
/* #login-dp .help-block{ */
/*     font-size:12px     */
/* } */
/* #login-dp .bottom{ */
/*     background-color:rgba(255,255,255,.8); */
/*     border-top:1px solid #ddd; */
/*     clear:both; */
/*     padding:14px; */
/* } */
/* #login-dp .social-buttons{ */
/*     margin:12px 0     */
/* } */
/* #login-dp .social-buttons a{ */
/*     width: 49%; */
/* } */
/* #login-dp .form-group { */
/*     margin-bottom: 10px; */
/* } */
/* .btn-fb{ */
/*     color: #fff; */
/*     background-color:#3b5998; */
/* } */
/* .btn-fb:hover{ */
/*     color: #fff; */
/*     background-color:#496ebc  */
/* } */
/* .btn-tw{ */
/*     color: #fff; */
/*     background-color:#55acee; */
/* } */
/* .btn-tw:hover{ */
/*     color: #fff; */
/*     background-color:#59b5fa; */
/* } */
/* @media(max-width:768px){ */
/*     #login-dp{ */
/*         background-color: inherit; */
/*         color: #fff; */
/*     } */
/*     #login-dp .bottom{ */
/*         background-color: inherit; */
/*         border-top:0 none; */
/*     } */
/* } */
 		
 
 
 </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
 
	
  		<div class="container">	
			<ul class="nav nav-pills" id="headernavi">
  			<li role="presentation" class="active"><a href="#">Home</a></li>
  			<li role="presentation"><a href="#">Profile</a></li>
  			<li role="presentation"><a href="#">Messages</a></li>
		</ul>
  		</div>
		</nav>

<!-- 	<nav class="navbar navbar-expand-md bg-secondary navbar-dark" > -->
<!--     <div class="container"> -->
<!--       <a class="navbar-brand" href="#">Brand</a> -->
<!--       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"> -->
<!--         <span class="navbar-toggler-icon"></span> -->
<!--       </button> -->
<!--       <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
<!--         <ul class="navbar-nav mr-auto"> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">Features</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">Pricing</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">About</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link text-white" href="login.jsp">login</a> -->
<!--           </li> -->
<!--         </ul> -->
<!--         <form class="form-inline m-0"> -->
<!--           <input class="form-control mr-2" type="text" placeholder="Search"> -->
<!--           <a class="ml-3 btn navbar-btn btn-primary" href="login.jsp">login</a> -->
<!--         </form> -->
<!--       </div> -->
<!--     </div> -->
<!--   </nav> -->



<!--  <nav class="navbar navbar-expand-md bg-dark navbar-dark"> -->
<!--     <div class="container"> -->
<!--       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent"> -->
<!--         <span class="navbar-toggler-icon"></span> -->
<!--       </button> -->
<!--       <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent"> -->
<!--         <ul class="navbar-nav"> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">Bootstrap 4</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">HTML/SASS</a> -->
<!--           </li> -->
<!--         </ul> -->
<!--         <a class="ml-3 btn navbar-btn btn-primary" href="#">Register now</a> -->
<!--       </div> -->
<!--     </div> -->
<!--   </nav> -->
<!--   <div class="p-5 text-center bg-secondary"> -->
<!--     <div class="container"> -->
<!--       <div class="row"> -->
<!--         <div class="col-md-4"> -->
<!--           <div class="card p-5 m-1"> -->
<!--             <div class="card-block"> -->
<!--               <p class="lead"> -->
<!--                 <i>Standard</i> -->
<!--               </p> -->
<!--             </div> -->
<!--             <div class="card-block my-3"> -->
<!--               <h1> -->
<!--                 <b>Free</b> -->
<!--               </h1> -->
<!--               <p>- - -</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>10</b> pages</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>1</b> month support</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>7</b>&nbsp;account seats</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>10 GB</b> space</p> -->
<!--             </div> -->
<!--             <div class="card-block"> -->
<!--               <a href="#" class="btn btn-secondary">Start now</a> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="col-md-4"> -->
<!--           <div class="card p-5 m-1"> -->
<!--             <div class="card-block"> -->
<!--               <p class="lead"> -->
<!--                 <i>Premium</i> -->
<!--               </p> -->
<!--             </div> -->
<!--             <div class="card-block my-3"> -->
<!--               <h1> -->
<!--                 <b>$20</b> -->
<!--               </h1> -->
<!--               <p>yearly</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>50</b> pages</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>3</b> month support</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>10</b>&nbsp;account seats</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>15 GB</b> space</p> -->
<!--             </div> -->
<!--             <div class="card-block"> -->
<!--               <a href="#" class="btn btn-secondary">Start now</a> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="col-md-4"> -->
<!--           <div class="card bg-primary p-5 m-1 text-white"> -->
<!--             <div class="card-block"> -->
<!--               <p class="lead"> -->
<!--                 <i>Pro</i> -->
<!--               </p> -->
<!--             </div> -->
<!--             <div class="card-block my-3"> -->
<!--               <h1> -->
<!--                 <b>$50</b> -->
<!--               </h1> -->
<!--               <p>monthly</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>200</b> pages</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>10</b> month support</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>30</b>&nbsp;account seats</p> -->
<!--               <hr> -->
<!--               <p> -->
<!--                 <b>30 GB</b> space</p> -->
<!--             </div> -->
<!--             <div class="card-block"> -->
<!--               <a href="#" class="btn btn-light">Start now</a> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!--   <div class="py-5 bg-dark text-white" > -->
<!--     <div class="container"> -->
<!--       <div class="row"> -->
<!--         <div class="col-md-6 text-center align-self-center"> -->
<!--           <p class="mb-5"> -->
<!--             <strong>Pingendo Inc.</strong> -->
<!--             <br>795 Folsom Ave, Suite 600 -->
<!--             <br>San Francisco, CA 94107 -->
<!--             <br> -->
<!--             <abbr title="Phone">P:</abbr> (123) 456-7890 </p> -->
<!--           <div class="my-3 row"> -->
<!--             <div class="col-4"> -->
<!--               <a href="https://www.facebook.com" target="_blank"> -->
<!--                 <i class="fa fa-3x fa-facebook"></i> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="col-4"> -->
<!--               <a href="https://twitter.com" target="_blank"> -->
<!--                 <i class="fa fa-3x fa-twitter"></i> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="col-4"> -->
<!--               <a href="https://www.instagram.com" target="_blank"> -->
<!--                 <i class="fa fa-3x fa-instagram"></i> -->
<!--               </a> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="col-md-6 p-0"> -->
<!--           <img class="img-fluid" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;&amp;markers=folsom+Ave+san+francisco&amp;center=folsom+Ave+san+francisco&amp;zoom=16&amp;size=640x300&amp;sensor=false&amp;scale=2"> </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->

</body>
</html>