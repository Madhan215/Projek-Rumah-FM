
@extends('layouts.main')

@section('container')

<div class="container-fluid">
  <!-- Small boxes (Stat box) -->
  <div class="row">
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-info">
        <div class="inner">
          <h3>---</h3>

          <p>AGEN MUDA</p>
        </div>
        <div class="icon">
          <i class="ion bi-people-fill"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-success">
        <div class="inner">
          <h3>---</h3>

          <p>AGEN BERKARYA</p>
        </div>
        <div class="icon">
          <i class="ion bi-people-fill"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-warning">
        <div class="inner">
          <h3>---</h3>

          <p>AGEN ISTIMEWAAAAAAAAAAAAAAA</p>
        </div>
        <div class="icon">
          <i class="ion bi-people-fill"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-danger">
        <div class="inner">
          <h3>---</h3>

          <p>ALUMNI AGEN</p>
        </div>
        <div class="icon">
          <i class="ion bi-people-fill"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
  </div>
  <!-- /.row -->
  <!-- Main row -->
  <div class="row">
    <!-- Left col -->
    <section class="col-lg-7 connectedSortable">

      <!-- DIRECT CHAT -->
      {{-- <div class="card direct-chat direct-chat-primary">
        <div class="card-header">
          <h3 class="card-title">Global Chat</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <!-- Conversations are loaded here -->
          <div class="direct-chat-messages">
            <!-- Message. Default to the left -->
            <div class="direct-chat-msg">
              <div class="direct-chat-infos clearfix">
                <span class="direct-chat-name float-left">Alexander Pierce</span>
                <span class="direct-chat-timestamp float-right">23 Jan 2:00 pm</span>
              </div>
              <!-- /.direct-chat-infos -->
              <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
              <!-- /.direct-chat-img -->
              <div class="direct-chat-text">
                Is this template really for free? That's unbelievable!
              </div>
              <!-- /.direct-chat-text -->
            </div>
            <!-- /.direct-chat-msg -->

            <!-- Message to the right -->
            <div class="direct-chat-msg right">
              <div class="direct-chat-infos clearfix">
                <span class="direct-chat-name float-right">Sarah Bullock</span>
                <span class="direct-chat-timestamp float-left">23 Jan 2:05 pm</span>
              </div>
              <!-- /.direct-chat-infos -->
              <img class="direct-chat-img" src="dist/img/user3-128x128.jpg" alt="message user image">
              <!-- /.direct-chat-img -->
              <div class="direct-chat-text">
                You better believe it!
              </div>
              <!-- /.direct-chat-text -->
            </div>
            <!-- /.direct-chat-msg -->

            <!-- Message. Default to the left -->
            <div class="direct-chat-msg">
              <div class="direct-chat-infos clearfix">
                <span class="direct-chat-name float-left">Alexander Pierce</span>
                <span class="direct-chat-timestamp float-right">23 Jan 5:37 pm</span>
              </div>
              <!-- /.direct-chat-infos -->
              <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
              <!-- /.direct-chat-img -->
              <div class="direct-chat-text">
                Working with AdminLTE on a great new app! Wanna join?
              </div>
              <!-- /.direct-chat-text -->
            </div>
            <!-- /.direct-chat-msg -->

            <!-- Message to the right -->
            <div class="direct-chat-msg right">
              <div class="direct-chat-infos clearfix">
                <span class="direct-chat-name float-right">Sarah Bullock</span>
                <span class="direct-chat-timestamp float-left">23 Jan 6:10 pm</span>
              </div>
              <!-- /.direct-chat-infos -->
              <img class="direct-chat-img" src="dist/img/user3-128x128.jpg" alt="message user image">
              <!-- /.direct-chat-img -->
              <div class="direct-chat-text">
                I would love to.
              </div>
              <!-- /.direct-chat-text -->
            </div>
            <!-- /.direct-chat-msg -->

          </div>
          <!--/.direct-chat-messages-->

        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <form action="#" method="post">
            <div class="input-group">
              <input type="text" name="message" placeholder="Type Message ..." class="form-control">
              <span class="input-group-append">
                <button type="button" class="btn btn-primary">Send</button>
              </span>
            </div>
          </form>
        </div>
        <!-- /.card-footer-->
      </div> --}}
      <!--/.direct-chat -->

      <!-- APRESIASI -->
      {{-- <div class="card">
        <div class="card-header">
          <h3 class="card-title">Apresiasi Agen</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <div class="container">

            <?php foreach ($agens as $agen) : ?>
            @if($today == date('m-d', strtotime($agen->tanggal_lahir)) )
            <div class="card" style="width: 18rem;">
            <img src="{{ asset('storage/' . $agen->foto )}}" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title"><b>Happy Birthday</b></h5>
              <p class="card-text">Selamat ulang tahun kak <?= $agen->nama ?>, semoga panjang umur dan disehatkan badan serta harapan dan impiannya lekas terwujud.</p>
              <a href="https://wa.me/<?= $agen->no_wa ?>?text=Ucapkan%20Sesuatu" class="btn btn-primary">Ucapkan Selamat</a>
            </div>
          </div>
            @endif
            <?php endforeach; ?>
            
          </div>
        </div>
        <!-- /.card-body -->

      </div> --}}
      <!--/.Apresiasi -->

    </section>
    <!-- /.Left col -->

    <!-- right col (We are only adding the ID to make the widgets sortable)-->
    <section class="col-lg-5 connectedSortable">
      <!-- Online -->
      {{-- <div class="card">
        <div class="card-header">
          <h3 class="card-title">Online</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <h1>Online</h1>
        </div>
        <!-- /.card-body -->

      </div> --}}
      <!--/.Online -->

      <!-- Kalender -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Kalender</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <script type="Text/Javascript">
var months = new Array();
months[0] = "Januari";
months[1] = "Peburari";
months[2] = "Maret";
months[3] = "April";
months[4] = "Mei";
months[5] = "Juni";
months[6] = "Juli";
months[7] = "Agustus";
months[8] = "September";
months[9] = "Oktober";
months[10] = "Nopember";
months[11] = "Desember";

var currentDate = new Date();
var currentMonth = currentDate.getMonth();
var hariini=currentDate.getDate();
currentDate.setDate(1);
document.write("<table align='center' border=1 cellpadding=3 cellspacing=0>");
document.write("<tr>");
document.write("<td colspan=7 align='center'><strong>"+ months[currentMonth] +"</strong></td>");
document.write("</tr>")
document.write("<tr bgcolor='#AAAAAA'>");
document.write("<td align='center'>Minggu</td>");
document.write("<td align='center'>Senin</td>");
document.write("<td align='center'>Selasa</td>");
document.write("<td align='center'>Rabu</td>");
document.write("<td align='center'>Kamis</td>");
document.write("<td align='center'>Jumat</td>");
document.write("<td align='center'>Sabtu</td>");
document.write("</tr>");

if (currentDate.getDay() != 0)
{
document.write("<tr>");
for (i = 0; i < currentDate.getDay(); i++)
{
document.write("<td>&nbsp;</td>");
}
}

while (currentDate.getMonth() == currentMonth)
{
if (currentDate.getDay == 0)
{
document.write("<tr>");
}

if (hariini==currentDate.getDate())
{
document.write("<td align='center' bgcolor='#00FF00'> <font color='#0000FF'><strong>" + currentDate.getDate() + "</strong></font></td>");
}

else
{
document.write("<td align='center'>" + currentDate.getDate() + "</td>");
}

if (currentDate.getDay() == 6)
{
document.write("</tr>");
}
currentDate.setDate(currentDate.getDate() + 1);
}

for (i = currentDate.getDay(); i <= 6; i++)
{
document.write("<td>&nbsp;</td>");
}

document.write("</table>");
</script>
        </div>
        <!-- /.card-body -->

      </div>
      <!--/.Kalender -->
      


      {{-- <!-- Calendar -->
      <div class="card bg-gradient-success">
        

        <div class="card-header border-0">

          <h3 class="card-title">
            <i class="far fa-calendar-alt"></i>
            Calendar
          </h3>
          <!-- tools card -->
          <div class="card-tools">
            <!-- button with a dropdown -->
            <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
                <i class="fas fa-bars"></i>
              </button>
              <div class="dropdown-menu" role="menu">
                <a href="#" class="dropdown-item">Add new event</a>
                <a href="#" class="dropdown-item">Clear events</a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item">View calendar</a>
              </div>
            </div>
            <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
              <i class="fas fa-minus"></i>
            </button>
          </div>
          <!-- /. tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body pt-0">
          <!--The calendar -->
          <div id="calendar" style="width: 100%"></div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card --> --}}

    </section>
    <!-- right col -->
  </div>
  <!-- /.row (main row) -->
</div><!-- /.container-fluid -->




@endsection
