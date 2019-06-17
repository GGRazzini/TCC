<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>HomeHelp | Home</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo base_url('assets/img/favicon.ico'); ?>" type="image/x-icon">

    <!-- Font awesome -->
    <link href="<?php echo base_url('assets/css/font-awesome.css') ?>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<?php echo base_url('assets/css/bootstrap.css'); ?>" rel="stylesheet">   
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/slick.css'); ?>">          
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/jquery.fancybox.css" type="text/css'); ?>" media="screen" /> 
    <!-- Theme color -->
    <link id="switcher" href="<?php echo base_url('assets/css/theme-color/default-theme.css'); ?>" rel="stylesheet">          

    <!-- Main style sheet -->
    <link href="<?php echo base_url('assets/css/style.css'); ?>" rel="stylesheet">    

   
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,500,700' rel='stylesheet' type='text/css'/>
    <?php 
foreach($css_files as $file): ?>
  <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
  </head>
  <body> 

  <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>      
    </a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header  -->
  <header id="mu-header">

    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-header-area">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-left">
                  <div class="mu-top-email">
                    <i class="fa fa-envelope"></i>
                    <span>homehelp@gmail.com</span>
                  </div>
                  <div class="mu-top-phone">
                    <i class="fa fa-phone"></i>
                    <span>(47) 3056-2430</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-right">
                  <nav>
                    <ul class="mu-top-social-nav">
                      <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                      <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                      <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                      <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                      <li><a href="#"><span class="fa fa-youtube"></span></a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End header  -->
  <!-- Start menu -->
  <section id="mu-menu">
    <nav class="navbar navbar-default" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
          <a class="navbar-brand" href="index.html"><i class="fa fa-university"></i><span>HomeHelp</span></a>
          <!-- IMG BASED LOGO  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="logo"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="index.html">Home</a></li>            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Serviços <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <!-- <li><a href="course.html">Course Archive</a></li>  -->              
                <li><a href="course-detail.html">Faxineira</a></li>                
              </ul>
            </li>           
            <!-- <li><a href="gallery.html">Gallery</a></li> -->
            <li class="dropdown">
              <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <span class="fa fa-angle-down"></span></a> -->
              <ul class="dropdown-menu" role="menu">
              <!--   <li><a href="blog-archive.html">Blog Archive</a></li>    -->             
               <!--  <li><a href="blog-single.html">Blog Single</a></li>   -->              
              </ul>
            <li><a href='<?php echo site_url('index.php/servicos/cadastrar_usuario')?>'>Cadastrar</a> |</li>
            <li><a href='<?php echo site_url('index.php/servicos/login')?>'>Login</a> |</li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Meu perfil <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <!-- <li><a href="course.html">Course Archive</a></li>  -->              
                <li><a href='<?php echo site_url('servicos/cadastrar_servicos')?>'>Serviços contratados</a> |</li>
              </ul>
            </li> 

           <!--  <li><a href="404.html">404 Page</a></li>            -->    
            <li><a href="#" id="mu-search-icon"><i class="fa fa-search"></i></a></li>
          </ul>                     
        </div><!--/.nav-collapse -->
        <div style='height:20px;'></div>  
          <div style="padding: 10px">
          <?php echo $output; ?>
          </div>
          <?php foreach($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
          <?php endforeach; ?>        
        </div>     
    </nav>
  </section>