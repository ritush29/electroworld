<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<head>

	<c:import url="head-meta.jsp"/>
<style>
 .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 80%;
      margin: auto;
  }
   .jumbotron
   {
   		background-image:url("resources/images/image9.jpg");
   
   }
  
 </style>
</head>
<body>

<c:import url="head.jsp"/>

<div class="jumbotron text-center">
  <h1 style="color:brown;font-family:Vladimir Script"><b> Welcome!</b></h1>
  <p style="color:white;font-family:Lucida Handwriting">Get all electronic items here!</p>
</div>

<div class="container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

 <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/desktop.jpg" alt="image" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/samsung.jpg" alt="image" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/images/speed.jpg" alt="image" width="460" height="345">
      </div>

      
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="false"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container">
<br>
<div class="row">
<div class="img img-responsive">
	<div class="col-sm-4">
	<img src="resources/images/thumb.jpg" class="img-thumbnail img-responsive" alt="image" width="220" height="150" > 
	<p style="color:white"> dfregdfgrggvgdggrggdgrgreffgrgrfrff.</p>
	</div>

	<div class="col-sm-4">
	<img src="resources/images/bluetooth.jpg" class="img-thumbnail img-responsive" alt="image" width="220" height="150" >
	<p style="color:white"> Bluetooth 7" Touch Screen...</p>
	</div>
    
	<div class="col-sm-4">
	<img src="resources/images/cR7Jx1q.jpg" class="img-thumbnail img-responsive" alt="image" width="220" height="150" >
	<p style="color:white"> Wallpapers Electronic Music Background 1 HD Wallpapers..</p>
	</div>
</div>
</div>
</div>
</div>
</body>
<br><br><br><br>




