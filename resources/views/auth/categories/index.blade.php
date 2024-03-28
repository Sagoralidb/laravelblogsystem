@extends('layouts.auth')

@section('title','Cataogries')

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
				<h2>Cataogries</h2>
			</div>
		

        <div class="card-body">
            @if (count($categories)>0 )
			   
			   <table class="table" id="posts">
				<thead>
				  <tr>
					<th scope="col">ID</th>			
					<th scope="col">Name</th>			
					<th scope="col">Created At</th>			

				  </tr>
				</thead>
				<tbody>
				 @foreach ($categories as $category)
					<tr>
						<td>{{Str::limit($category->id)}}</td>
						<td>{{Str::limit($category->name)}}</td>
						<td>{{Str::limit($category->created_at->diffForHumans())}}</td>
						
					</tr>
				 @endforeach
				</tbody>
			  </table>

                   @else
                   <h3 class="text-center text-danger">No Catagory Found.</h3>
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