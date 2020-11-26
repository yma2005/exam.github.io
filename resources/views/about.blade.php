@extends('layouts.app')

@section('content')

<section class="our">
    
    <h1>OUR <span>TEAM</span></h1>
    <div class="container-fluid">
    <div class="row">
    {{-- <div class="col-md-3 first"><div><h4>LAMBORGHINI GALLARDO</h4><p>Defender</p></div></div>
    <div class="col-md-3 second"><div><h4>LAMBORGHINI GALLARDO</h4><p>Midfielder</p></div></div>
    <div class="col-md-3 third"><div><h4>LAMBORGHINI GALLARDO</h4><p>Goalkeeper</p></div></div>
    <div class="col-md-3 four"><div><h4>LAMBORGHINI GALLARDO</h4><p>Sweeper</p></div></div> --}}
    @foreach($players as $player)
    <div class="col-md-3 {{$loop->iteration==1?'first':''}} {{$loop->iteration==2?'second':''}} {{$loop->iteration==3?'third':''}} {{$loop->iteration==4?'four':''}}" style="background-image:url({{$player->img}}) no-repeat;">
         <div>
            <h4>{{$player->name}}</h4>
            <p>{{$player->role->role}}</p>
        </div>
    </div>
    @endforeach
    </div>
    </div>
</section>
<aside>
    <h2>
<span>WELCOME</span> TO OUR WEBSITE</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</p>
<br>
<a href="#">READ MORE</a>
</aside>
<section id="item">
    <div class="container-fluid items">
        <div class="row">
            <div class="col-md-3"><h5>ADVERTISING</h5><img src="images/banner.jpg" alt=""><img src="images/banner2.jpg" alt=""></div>
            <div class="col-md-6"><h5>UPCOMING EVENTS</h5>
                <article>
                    <div class="data"><h2>30</h2><h4>DEC, 2015</h4></div>
                    <div><h6>Nominated Club Of The Year</h6><p>Posted on June 22, 2010 in: <a href="#">Featured News</a></p><p>Don't walk through life just playing football. Don't walk through life just being an athlete. Athletics will fade. Character and integrity are the...</p></div>
                </article>
                <article>
                    <div class="data"><h2>31</h2><h4>DEC, 2015</h4></div>
                    <div><h6>Nominated Club Of The Year</h6><p>Posted on June 22, 2010 in: <a href="#">Featured News</a></p><p>Don't walk through life just playing football. Don't walk through life just being an athlete. Athletics will fade. Character and integrity are the...</p></div>
                </article>
                 <article>
                    <div class="data"><h2>18</h2><h4>jun,2016</h4></div>
                    <div><h6>Nominated Club Of The Year</h6><p>Posted on June 22, 2010 in: <a href="#">Featured News</a></p><p>Don't walk through life just playing football. Don't walk through life just being an athlete. Athletics will fade. Character and integrity are the...</p></div>
                </article>
            </div>
            <div class="col-md-3"><h5>LASTEST <br>POST</h5>
            <article> <img src="images/2.jpg"><h6>Nominated Club Of The Year</h6> <p>Black alloys, Sat Nav, Bluetooth, 4 seats, Ceramic Brakes...</p></article>
            <article> <img src="images/3.jpg"><h6>Nominated Club Of The Year</h6> <p>Black alloys, Sat Nav, Bluetooth, 4 seats, Ceramic Brakes...</p></article>
            </div>
        </div>
    </div>
</section>
@include('layouts.footer')
@endsection
