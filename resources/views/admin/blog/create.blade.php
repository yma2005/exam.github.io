@extends('adminlte::page')

@section('title', $title)

@section('content_header')
    <h1>{{$title}}</h1>
@stop

@section('content')
@include('layouts.errors')
    <form action="/admin/blog" method="POST">
        @csrf
        <div class="form-group @error('name') has-error @enderror">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" >
        </div>
        <div class="form-group">
            
        
        

        <div class="form-group">
            <label for="description">Article</label>
            <textarea name="description" id="description" cols="30" rows="10" class="form-control"></textarea>    
        </div>

        

        <div class="form-group">
            <label for="category">Category</label>
            <select name="category" id="category" class="form-control">
                @foreach($categories as $category)
                <option value="{{$category->id}}">{{$category->name}}</option>
                @endforeach
            </select>

            
          
          <div class="input-group">
              <span class="input-group-btn">
                    <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                      <i class="fa fa-picture-o"></i> Choose Photo
                    </a>
                  </span>
                  <input id="thumbnail" class="form-control" type="hidden" name="img">
                </div>
                <img id="holder" style="margin-top:15px;max-height:100px;">
          



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
