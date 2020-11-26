@extends('adminlte::page')

@section('title', $title)

@section('content_header')
    <h1>{{$title}}</h1>
@stop

@section('content')

<a href="/admin/blog/create" class="btn btn-primary mb-3" style="margin-bottom: 10px">Add new article</a>

@include('layouts.messages')
    <table id="table" class="table">
    	<thead>
    		<tr>
    			<th>#</th>
                <th>Img</th>
    			<th>name</th>
    			<th>article</th>
                <th>Category</th>
                <th>Destroy</th>
    		</tr>
    	</thead>
    	<tbody>
    		@foreach($news as $new)
    		<tr>
    			<th>{{$loop->iteration}}</th>
                <th><img src="/{{$new->img? $new->img : 'images/nofoto.png'}}" style="width: 100px;"></th>
    			<th><a href="/admin/blog/{{$new->id}}/edit">{{$new->name}}</a></th>
    			<th>{{$new->article}}</th>
                <th>{{$new->category_id ? $new->category->name : ''}}</th>
                <th><form action="/admin/blog/{{$new->id}}" method="POST">
                    @csrf
                    {{-- короткая запись скрытого поля с именем  DELETE--}}
                    @method('DELETE') 
                    <button class="btn btn-danger">Delete</button>
                    </form></th>
    		</tr>
    		@endforeach
    	</tbody>
    </table>
@stop

@section('js')
<script>
	$('#table').DataTable()
</script>
@endsection
