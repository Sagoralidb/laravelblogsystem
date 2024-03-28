@extends('layouts.auth') 
@section('title','Profile | Admin Dashboard') 
@section('style')

@endsection

@section('content')

<div class="content-wrapper">
	<div class="content">
		<!-- Masked Input -->
		<div class="card card-default">
			<div class="card-header">
				<h2>Upadte Profile</h2>
					</div>          
			<div class="card-body">
               <!-- Any Erro Massage -->
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                <!-- Any Erro Massage -->
     @if (Session::has('alert-success'))
		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>{{Session::get('alert-success')}}</strong>
			</div>
		@endif
                <!-- Input form -->
                <form method="POST" action="">
                    @csrf

                    <div class="form-group">
                      <label >Name</label>
                      <input type="text" name="name"value="{{old('name', $user? $user->name:'')}}" class="form-control" placeholder="Your Name">        
                    </div>
                     <div class="form-group">
                      <label >Email</label>
                      <input type="email" name="email"value="{{old('email',$user?$user->email:'')}}" class="form-control" placeholder="Your email">        
                    </div>

                    <div class="form-group">
                        <label >Pasword</label>
                        <input type="password" name="password" class="form-control" placeholder="Enter Password">        
                    </div>
                    <div class="form-group">
                        <label> Confirm Pasword</label>
                        <input type="password" name="password_confirmation" class="form-control" placeholder="Confirmed Pasword">        
                    </div>

                    <button type="submit" class="btn btn-primary mt-3">Submit</button>
                  </form>
            </div>
			
		</div>
	</div>
</div>
  @section('scripts')
  
  @endsection
@endsection