@extends('layouts.auth')

@section('title','View Post')

@section('style')
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="{{asset('assets/auth/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css')}}" />

@endsection

@section('content')
<div class="content-wrapper">
	<div class="content">
		<!-- Masked Input -->
		<div class="card card-default">
			<div class="card-header">
				<h2>View Post</h2>
			</div>


			<div class="card-body">
     @if ($post)
			   
			   <table class="table" id="posts">
				<tbody>
				  <tr>
            <th>Feature Image</th>
            <td>
							<img src="{{$post->gallery->image}}" height="250px" alt="image">
						</td>
          </tr>
          <tr>
					<th scope="col">Title</th>
                    <td>{{$post->title}}</td>
          </tr>
          <tr>
            <th scope="col">Description</th>
                    <td class="text-justify">{{$post->description}}</td>
          </tr>       
          <tr>
            <th scope="col">Catagory</th>
                    <td>{{$post->category->name}}</td>
          </tr>     
          <tr>
             <th scope="col">Username</th>
                    <td>{{$post->user->name}}</td>
          </tr>
          <tr>
                  <th scope="col">Status</th>
                    <td>{{$post->status==1?'Published':'Draft'}}</td>

          </tr>
          
          <tr>
            <th scope="col">Post Tags</th>
            
            <td>
              @foreach($post->tags as $tag)
              {{ $tag->name }},
            @endforeach
            </td>
          </tr>
          <tr>
            <th scope="col">Created At</th>
            <td>{{ $post->created_at->format('d M Y, H:i:s A') }}</td>

        </tr>
        
                                  
       
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
