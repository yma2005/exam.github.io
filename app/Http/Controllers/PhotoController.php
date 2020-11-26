<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderShipped;
use Illuminate\Http\Request;
use App\Photo;
use App\Category;
use App\Player;
use App\Role;
use App\Contact;
use App\News;
use App\Post;

class PhotoController extends Controller
{
    public function index() 
    {
    	 $fotos = Photo::all();
    	return view('home', compact('fotos'));
    }

    public function about() 
    {
    	$players = Player::all();
    	return view('about', compact('players'));
    }
    public function blog() 
    {   
    	$items1 = News::where('category_id', '=', 1)->get();
        $items2 = News::where('category_id', '=', 2)->get();
        $items3 = News::where('category_id', '=', 3)->get();
    	return view('blog', compact('items1', 'items2', 'items3'));
    }
    public function contact() 
    {
    	
        $contacts = Contact::all();
    	return view('contact', compact('contacts'));
    }
    public function send(Request $request)
    {
     $post = new Post();
       //$order->user_id = $request->user_id ? $request->user_id : null;
       $post->name = $request->name;
       $post->email = $request->email;
       $post->massege = $request->massege;
       $post->save();
       
     
     Mail::send('emails.sendMessage', compact('post'), function($m) use ($post){
           $m->to($post->email, $post->name)->subject('New letter from '. $post->name);});
     return redirect('/')->with('message', 'Thank! Your order sends to email');
    
           }   

 public function change(Request $request) 
    {
        
        dd('null');
        $player = Player::where('id', '=', '$request');
        $player->role_id = '2';
        $player->save();
        return view('admin.players');

    
    }

     public function search(Request $request)
    {
      $news = News::where('name','LIKE', $request->s)
      ->orWhere('article', 'LIKE', $request->s)->paginate(2);
      return view('blog', compact('news'));
    }
     public function buy()
    {

      return view('buy');
    }

}


