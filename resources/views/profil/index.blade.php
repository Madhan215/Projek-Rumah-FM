@extends('layouts.mainprofil')

@section('container_profil')

<div class="container">
   <div class="row p-4 ">
   <div class="col-4">
      <h2>Selamat Datang di Website</h2>
      <h3>UKM FKIP MENGAJAR ULM</h3>
      <h4>"Muda Berkarya Istimewa"</h4>
      <hr color="white" size="50%" width="98%">
   </div>
   <div class="col-8">
        <!-- revolution slider -->
        <div class="">
         <div class="">
            <div class="">
               <div class="">
                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                  </ol>
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/1.jpg')}}" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5 class="shadow-lg p-3">Pioneer</h5>
                           <p>2017</p>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/2.jpg')}}" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5>Akad</h5>
                           <p>2018</p>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/3.jpg')}}" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5>Sembilang</h5>
                           <p>2019</p>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/4.jpg')}}" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5>Rang-Rang</h5>
                           <p>2020</p>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/5.jpg')}}" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5 class="shadow-lg p-3 mb-5">Darang</h5>
                           <p>2021</p>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="{{ asset('storage/images/profil/6.JPG')}}" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                           <h5>Sinovac</h5>
                           <p>2022</p>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                  </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
 </div>
</div>

<script>
   $('.carousel').carousel()
</script>
@endsection

