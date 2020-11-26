@extends('adminlte::page')

@section('title', $title)

@section('content_header')
    <h1>{{$title}}</h1>
@stop

@section('content')
@include('layouts.errors')
    <form action="/admin/blog/{{$new->id}}" method="POST">
        @method('PUT')
        @csrf
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" value="{{$new->name}}">
        </div>
        <div class="form-group">
            
        
        

        <div class="form-group">
            <label for="description">Article</label>
            <textarea name="description" id="description" cols="30" rows="10" class="form-control">{{$new->article}}</textarea>    
        </div>

        

        <div class="form-group">
            <label for="category">Category</label>
            <select name="category" id="category" class="form-control">
                @foreach($categories as $category)
                <option value="{{$category->id}}" {{$category->id==$new->category_id?'selected':''}}>{{$category->name}}</option>
                @endforeach
            </select>

            
          
          <div class="form-group">
    <label for="pic">Photo by article:</label>
    @if($new->img)
        <img src="/{{$new->img}}" alt="" style="width: 20%;">
        <a href="#" class="delete-img">Delete Image</a>
        @endif
    <input name="img" id="img" type="file" class="form-control invisible" >
      </div>
                
          



        <button class="btn btn-primary" style="margin-top: 170px;">Save</button>
    </form>
@stop

@section('js')


 <script src="/vendor/laravel-filemanager/js/lfm.js"></script> 
<script>
    $('#lfm').filemanager('image');
</script>
{{-- Скрипт для файлового редактора https://unisharp.github.io/laravel-filemanager/integration --}}
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<script>
 var options = {
   filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
   filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
   filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
   filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
 };
  CKEDITOR.replace('description', options);
</script>
@endsection
