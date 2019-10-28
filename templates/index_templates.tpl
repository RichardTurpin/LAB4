!DOCTYPE html>
<html lang="en">
<head>
  <title>Index_Template</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
        .carousel-inner img {
            margin: auto;
        }
  </style>
</head>
<body background="fundo.jpg">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">SPORTS FORUM</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Register</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="toronto.jpg" alt="Toronto Champions" style="width:60%;">
      </div>

      <div class="item">
        <img src="benfica.jpg" alt="Benfica" style="width:55%;">
      </div>
    
      <div class="item">
        <img src="portugal.jpg" alt="Portugal" style="width:55%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<!-- Left-aligned media object -->
 <h1 class="text-center" style="color:#ffffff ">Share your opinion</h1>
  {foreach item=post from=$posts}
  <div class="container-fluid">
    <div class="media" style=" background-color: #ffffff;">
      <div class="media-left">
        <img src="img_avatar1.png" class="media-object" style="width:120px">
      </div>
      <div class="media-body">
        <h3 class="media-heading" style="color:#003300">{$post.name}</h3>
        <p style="color:#003300">{$post.content}</p>
        <small>Created:{$post.created_at} </small>
        <small>Updated:{$post.updated_at}</small>
      </div>
    </div>
  </div>
  {/foreach}


</body>
</html>

