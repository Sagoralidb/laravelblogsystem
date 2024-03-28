@extends('layouts.auth')

@section('title','All Post')

@section('style')
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="{{asset('assets/auth/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css')}}" />

<style>
	#outer{
			text-align: center;
		}
	.inner{
		display: inline-block;
	}
	
</style>

@endsection

@section('content')
<div class="content-wrapper">
	<div class="content">
		<!-- Masked Input -->
		<div class="card card-default">
			<div class="card-header">
				<h2>All Post</h2>
			</div>

		@if (Session::has('alert-success'))
		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>{{Session::get('alert-success')}}</strong>
			</div>
		@endif

		

			<div class="card-body">
               @if (count($posts)>0 )
			   
			   <table class="table" id="posts">
				<thead>
				  <tr>
					<th scope="col">Image</th>
					<th scope="col">Title</th>
					<th scope="col">Description</th>
					<th scope="col">Category</th>
					<th scope="col">Username</th>
					<th scope="col">Status</th>
					<th class="text-center" scope="col" >Actions</th>
				  </tr>
				</thead>
				<tbody>
				 @foreach ($posts as $post)
					<tr>
						<td>
							<img src="{{$post->gallery->image}}" alt="image"style="width:80px;height:50px;">
						</td>
						<td>{{Str::limit($post->title,10)}}</td>
						<td>{{Str::limit($post->description,5)}}</td>
						<td>{{$post->category->name}}</td>
						<td>{{$post->user->name}}</td>
						<td>{{$post->status==1 ? 'Active':'Inactive'}}</td>
					<td id="outer">
						<a href="{{route('posts.show',$post->id)}}" class="btn btn-sm btn-success inner"> <i class="fas fa-eye"></i> </a> 
						<a href="{{route('posts.edit',$post->id)}}" class="btn btn-sm btn-info inner"> <i class="fas fa-edit"></i></a> 
						
						<form method="post" action="{{route('posts.destroy',$post->id)}}" class="inner">
							@csrf
							@method('DELETE')
							<button type="submit" class="btn btn-sm btn-danger"> <i class="fas fa-trash"></i> </button> 					
						</form>

					</td>
					</tr>
				 @endforeach
				</tbody>
			  </table>

                   @else
                   <h3 class="text-center text-danger">No Post Found.</h3>
               @endif
              
               </div>
			
		</div>
	</div>
</div>
@endsection
@section('scripts')
<script src="{{asset('assets/auth/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js')}}"></script>

<script>
	$(document).ready(function(){
		$('#posts').DataTable({
			"bLengthChange":false,
		});
	} );
</script>

@endsection