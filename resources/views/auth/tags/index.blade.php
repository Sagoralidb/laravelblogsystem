@extends('layouts.auth')

@section('title','Tags')

@section('style')
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
				<h2>Tags</h2>
			</div>
		

        <div class="card-body">
            @if (count($tags)>0 )
			   
			   <table class="table" id="posts">
				<thead>
				  <tr>
					<th scope="col">ID</th>			
					<th scope="col">Name</th>			
					<th scope="col">Created At</th>			

				  </tr>
				</thead>
				<tbody>
				 @foreach ($tags as $tag)
					<tr>
						<td>{{Str::limit($tag->id)}}</td>
						<td>{{Str::limit($tag->name)}}</td>
						<td>
							@if($tag->created_at)
								{{ Str::limit($tag->created_at->diffForHumans()) }}
							@else
								N/A
							@endif
						</td>
						
					</tr>
				 @endforeach
				</tbody>
			  </table>

                   @else
                   <h3 class="text-center text-danger">No Tag Found.</h3>
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