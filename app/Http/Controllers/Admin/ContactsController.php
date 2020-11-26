<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;

class ContactsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contacts = Contact::all();
        $title = 'Contacts';
        return view('admin.contacts.index', compact('contacts','title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = "Create Product";
        $categories = Category::all();
        return view('admin.product.create', compact('categories', 'title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
        'name'=>'required|min:3|max:128|unique:products,name', //unique:categories,name - уникальное в таблице categories, в колонке name
        'quantity'=>'required'

        ]);
        $product = new Product();
        $product->name = $request->name;
        $product->img = $request->img;
        $product->slug = $request->slug;
        $product->quantity = $request->quantity;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->category_id = $request->category;
        $product->recommended = $request->recommended ? 1 : 0;
        
        $product->save();
        return redirect('/admin/product')->with('message', 'Product  ' . $product->name. '  added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $title='Edit contacts';
        
        $contact = Contact::find($id);
        return view('admin.contacts.edit', compact('contact', 'title'));
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
    'email' => 'required|max:100',
    'adress' => 'required',
    'phone' => 'required',
    
    ]);
       $contact =Contact::find($id);
       $contact->email = $request->email;
       $contact->adress = $request->adress;
       $contact->phone = $request->phone;
       
       $contact->save();
       return redirect('/admin/contacts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
}
