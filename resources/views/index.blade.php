@extends('layouts.master')


@section('content')
    @if (!empty(Request::segment(1)))
        <div class="row">
            <div class="alert alert-info text-center">All Qoutes of {{ Request::segment(1) }}, <a href="{{ route('index') }}">Back To Index</a></div>
        </div>
    @endif
    @if (count($errors) > 0)
        <div class="row">
            @foreach ($errors->all() as $e)
                <div class="alert alert-danger">{{ $e }}</div>
            @endforeach
        </div>
    @endif
    @if (Session::has('message'))
        <div class="row">
            <div class="alert alert-success">{{ Session::get('message') }}</div>
        </div>
    @endif
    <div class="row">
    	<h2 class="text-center">Quotes</h2>
    	<hr>
        @if (count($quotes) > 0)
            @foreach ($quotes as $q)
                <div class="col-md-4">
            		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
            			<div class="caption">
            				<p> {{ $q->quote }} <span style="color: #777">Created By : <a href="{{ route('index', ['author' => $q->author->name]) }}" style="color: #555">{{ $q->author->name }}</a> On {{ $q->created_at }}</span></p>
            				<p><a class="btn btn-danger" href="{{ route('delete', ['quote_id' => $q->id]) }}">Delete</a></p>
            			</div>
            		</div>
            	</div>
            @endforeach
        @else
            <div class="alert alert-info">No Quotes</div>
        @endif
    </div>
    <hr>
    <div class="text-center">
    	{{ $quotes->links() }}
    </div>
    <hr>
    <div class="row">
    	<h2 class="text-primary text-center">Add New</h2>
    	<div class="col-md-6 col-md-offset-3">
    		<form action="{{ route('create') }}" method="post">
    			<input class="form-control" id="Author" name="Author" placeholder="Author" type="text">
                <br>
    			<input class="form-control" id="email" name="email" placeholder="email" type="email">
                <br>
    			<textarea class="form-control" name="Quote" placeholder="Quate Describtion"></textarea>
                <br>
    			<button class="btn btn-primary" type="submit">Add</button> {{ csrf_field() }}
    		</form>
    	</div>
    </div>
    <hr>
    <br>
@endsection
