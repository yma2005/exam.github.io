<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\News;
use App\Category;
class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::all();
        $title = 'Articals about';
        return view('admin.blog.index', compact('news','title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       $categories = Category::all();
       $title = 'Add article';
       return view('admin.blog.create', compact('categories','title')); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $validateData = $request->validate([
    'name' => 'required|max:100',
    'description' => 'required',
    'category' => 'required|numeric',
    //'img' => 'image',

]);

       $new = new News();
       $new->name = $request->name;
       $new->article = $request->description;
       $new->category_id = $request->category;
       $file = $request->file('img');
       if($file){
       $fname = $file->getClientOriginalName();
       
       $file->move(public_path().'/images', $fname);
       $new->img = 'images/'.$fname;
       };
       $new->img = 'images/nofoto.png';
       $new->save();
       
        return redirect('admin/blog')->with('message', 'Article was added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $title='Edit article';
        $categories = Category::all();
        $new = News::find($id);
        return view('admin.blog.edit', compact('categories','new', 'title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $validateData = $request->validate([
    'name' => 'required|max:100',
    'description' => 'required',
    'category' => 'required',
    //'img' => 'image',
    ]);
       $new =News::find($id);
       $new->name = $request->name;
       $new->article = $request->description;
       $new->category_id = $request->category;
       $file = $request->file('img');
       //dd($file); 
       if($file)
       {
       $fname = $file->getClientOriginalName();
       //dd($fname); 
       $file->move(public_path().'/images', $fname);
       $new->img = 'images/'.$fname;
       }
       else
        {$new->img = null;}
       $new->save();
       return redirect('/admin/blog');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $news = News::find($id); // Та же запись: Select * from categories WHERE id = $id
        //dd($category); получили модель с данными строки с ($id)
        if($news){
            $news->delete();
        }
        return redirect('/admin/blog');
    }
   
}
