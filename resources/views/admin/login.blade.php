@extends('layouts.master')

@section('content')
<div class="container">
    @if (count($errors) > 0)
        <div class="row">
            @foreach ($errors->all() as $e)
                <div class="alert alert-danger">{{ $e }}</div>
            @endforeach
        </div>
    @endif
    @if (Session::has('fail'))
        <div class="row">
            <div class="alert alert-info">
                {{ Session::get('fail') }}
            </div>
        </div>
    @endif
	<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Welcome to my site</h3>
                </div>
                <div class="panel-body">
                    <form action="{{ route('login') }}" method="post">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Username" name="name" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password" value="">
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button type="submit" class="btn btn-success btn-block">Login</button>
                            {{ csrf_field() }}
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
