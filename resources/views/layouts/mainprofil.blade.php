<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>UKM FKIP MENGAJAR ULM</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      {{-- Script --}}
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
      {{-- Icon Bootstrap --}}
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="{{ asset('/') }}css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="{{ asset('/') }}css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="{{ asset('/') }}css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="{{ asset('storage/images/profil/LogoFM.ico')}}" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="{{ asset('/') }}css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

       {{-- For Slider --}}
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
      .header-section {
  position: sticky;
  top: 0;
  z-index: 999;
}



    </style>
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="{{ asset('storage/images/profil/loading.gif')}}" alt="" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
<header class="header-section">
         <!-- header inner -->
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-3 logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a href="index.html"><img src="{{ asset('storage/images/profil/FM ULM22.png')}}" alt="#"></a> </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                              <li class="<?php if ($active=="home") {echo "active"; }?>">
                                 <a href="{{route('home')}}">Home</a>
                              </li>
                              <li class="nav-item dropdown <?php if ($active=="profil") {echo "active"; }?>">
                                 <a class="nav-link dropdown-toggle" href="" id="profilDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Profil
                                 </a>
                                 <div class="dropdown-menu" aria-labelledby="profilDropdown">
                                    <a class="dropdown-item" href="{{route('profil_fm')}}#ps">Profile singkat</a>
                                    <a class="dropdown-item" href="{{route('profil_fm')}}#sejarah">Sejarah</a>
                                    <a class="dropdown-item" href="{{route('profil_fm')}}#makna">Makna Logo</a>
                                    <a class="dropdown-item" href="{{route('profil_fm')}}#arti">Arti Nama</a>
                                    <a class="dropdown-item" href="{{route('profil_fm')}}#visi">Visi & Misi</a>
                                    <a class="nav-link dropdown-toggle" href="" id="pengurusDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                       Kepengurusan
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="pengurusDropdown">
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2017">2017</a>
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2018">2018</a>
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2019">2019</a>
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2020">2020</a>
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2021">2021</a>
                                       <a class="dropdown-item" href="{{route('profil_fm')}}#2022">2022</a>
                                    </div>
                                 </div>
                              </li>
                              <li class="nav-item dropdown <?php if ($active=="departemen") {echo "active"; }?>">
                                 <a class="nav-link dropdown-toggle" href="#" id="profilDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Departemen
                                 </a>
                                 <div class="dropdown-menu" aria-labelledby="profilDropdown">
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#sc">Steering Committee</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#pd">Pengembangan Diri</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#pm">Pengabdian Masyarakat</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#jm">Jaringan dan Kemitraan</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#du">Dana dan Usaha</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#sekre">Kesekretariatan</a>
                                    <a class="dropdown-item" href="{{route('departemen_fm')}}#md">Media dan Informasi</a>
                                 </div>
                              </li>
                              <li class="<?php if ($active=="prestasi") {echo "active"; }?>">
                                 <a href="{{route('prestasi')}}">Prestasi</a>
                              </li>
                              {{-- <li class="<?php if ($active=="news") {echo "active"; }?>">
                                 <a href="{{route('news')}}">news</a>
                              </li>
                              <li class="<?php if ($active=="event") {echo "active"; }?>">
                                 <a href="{{route('event')}}">event</a>
                              </li> --}}
                              <li>
                                 <a href="{{route('login')}}">Login</a>
                              </li>
                           </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner -->
      </header>
      <!-- end header -->
     
      <!-- section --> 

    <section class="">
      
      @yield('container_profil')

    </section>

       <!-- end section -->
      <!-- footer -->
      <footer>
            <div class="d-flex align-items-center flex-wrap p-2">
               <div class="p-2 mr-5">
                  <img src="{{ asset('storage/images/profil/FKIP MENGAJAR JPG.png')}}" alt="#" />
               </div>
               <div class="p-2">
                  <ul class="contact_information">
                     <li><span><img src="{{ asset('storage/images/profil/location_icon.png')}}" alt="#" /></span><span class="text_cont">Kampus Fakultas Keguruan dan Ilmu Pendidikan<br>Universitas Lambung Mangkurat<br>Banjarmasin Kalimantan Selatan</span></li>
                     <li><span><img src="{{ asset('storage/images/profil/phone_icon.png')}}" alt="#" /></span><span class="text_cont">085753269130<br>083139113438</span></li>
                     <li><span><img src="{{ asset('storage/images/profil/mail_icon.png')}}" alt="#" /></span><span class="text_cont">fkipmengajar@ulm.ac.id</span></li>
                  </ul>
               </div>
               <div class="p-2">
                  <ul class="social_icon">
                     <li><a href="https://web.facebook.com/UKMFKIPMENGAJARULM" target="_blank"><i class="bi bi-facebook"></i></a></li>
                     <li><a href="https://www.instagram.com/fkipmengajarulm" target="_blank"><i class="bi bi-instagram"></i></a></li>
                     <li><a href="https://www.youtube.com/@fkipmengajartv3303" target="_blank"><i class="bi bi-youtube"></i></a></li>
                     <li><a href="https://www.tiktok.com/@fkipmengajarulm" target="_blank"><i class="bi bi-tiktok"></i></a></li>
                  </ul>
               </div>
            </div>
      </footer>
      
      <div class="cpy">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <p>Copyright © 2022 Design by Medinfo <a href="https://html.design/">UKM FKIP MENGAJAR ULM</a></p>
               </div>
            </div>
         </div>
      </div>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="{{ asset('/') }}js/jquery.min.js"></script>
      <script src="{{ asset('/') }}js/popper.min.js"></script>
      <script src="{{ asset('/') }}js/bootstrap.bundle.min.js"></script>
      <script src="{{ asset('/') }}js/bootstrap.min.js"></script>
      <script src="{{ asset('/') }}js/jquery-3.0.0.min.js"></script>
      <script src="{{ asset('/') }}js/plugin.js"></script>
      <script src="{{ asset('/') }}js/bootstrap.js"></script>
      <!-- Scrollbar Js Files -->
      <script src="{{ asset('/') }}js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="{{ asset('/') }}js/custom.js"></script>

     
   </body>
</html>