@extends('layouts.master')


@section('content')
    <div class="row">
    	<h2 class="text-center">Quotes</h2>
    	<hr>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-4">
    		<div class="thumbnail" style="box-shadow: 6px 7px 4px #999;">
    			<div class="caption">
    				<h3>Thumbnail label</h3>
    				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore <span style="color: #777">Created By : <a href="#" style="color: #555">Mohamed</a> On .....</span></p>
    				<p><a class="btn btn-info" href="#">Edit</a> <a class="btn btn-danger" href="#">Delete</a></p>
    			</div>
    		</div>
    	</div>
    </div>
    <hr>
    <div class="text-center">
    	<nav aria-label="Page navigation">
    		<ul class="pagination">
    			<li>
    				<a aria-label="Previous" href="#"><span aria-hidden="true">&laquo;</span></a>
    			</li>
    			<li>
    				<a href="#">1</a>
    			</li>
    			<li>
    				<a href="#">2</a>
    			</li>
    			<li>
    				<a href="#">3</a>
    			</li>
    			<li>
    				<a href="#">4</a>
    			</li>
    			<li>
    				<a href="#">5</a>
    			</li>
    			<li>
    				<a aria-label="Next" href="#"><span aria-hidden="true">&raquo;</span></a>
    			</li>
    		</ul>
    	</nav>
    </div>
    <hr>
    <div class="row">
    	<h2 class="text-primary text-center">Add New</h2>
    	<div class="col-md-6 col-md-offset-3">
    		<form method="post" action="{{ route('create') }}">
    			<input class="form-control" id="Author" name="Author" placeholder="Author" type="text"><br>
    			<textarea class="form-control" cols="40" name="Quote" placeholder="Quate" rows="8"></textarea><br>
    			<button class="btn btn-primary" type="submit">Add</button> {{ csrf_field() }}
    		</form>
    	</div>
    </div>
    <hr>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
@endsection
