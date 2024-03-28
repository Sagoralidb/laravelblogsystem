@extends('layouts.site')

@section('title','Single Blog')

@section('content')


<section class="page-title bg-1">
	<div class="container">
	  <div class="row">
		<div class="col-md-12">
		  <div class="block text-center">
			<h1 class="text-capitalize mb-4 text-lg">Blog Single</h1>
			<ul class="list-inline">
			  <li class="list-inline-item"><a href="{{url('/')}}" class="text-white">Home</a></li>
			  <li class="list-inline-item"><span class="text-white">/</span></li>
			  <li class="list-inline-item text-white-50">Blog details</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
  </section>

@if ($blog)
<section class="section blog-wrap bg-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-lg-12 mb-5">
						<div class="single-blog-item">
							<img loading="lazy" src="{{$blog->gallery->image}}" alt="blog" class="img-fluid rounded">

							<div class="blog-item-content bg-white p-5">
								<div class="blog-item-meta bg-gray pt-2 pb-1 px-3">
									<span class="text-black text-capitalize mr-3"><i class="ti-time mr-1"></i>
										{{ date('d M Y', strtotime($blog->created_at)) }}
									</span>
									
									<span class="text-muted text-capitalize mr-3"><i class="ti-comment mr-2"></i>{{count($comments)}} Comments</span>
									
								</div>

								<h2 class="mt-3 mb-4">{{$blog->title}}</h2>
								<p class="lead mb-4 text-justify">{{$blog->description}}</p>

								<div class="tag-option mt-5 d-block d-md-flex justify-content-between align-items-center">
									<ul class="list-inline">
										<li>Tags:</li>
										@foreach ($blog->tags as $tag)
									
											<li class="list-inline-item"><a href="#" rel="tag">{{$tag->name}}</a></li>
										@endforeach
										
										
									</ul>

									<ul class="list-inline">
										<li class="list-inline-item"> Share: </li>
										<li class="list-inline-item"><a href="#" ><i class="fab fa-facebook-f"
													aria-hidden="true"></i></a></li>
										<li class="list-inline-item"><a href="#" ><i class="fab fa-twitter"
													aria-hidden="true"></i></a></li>
										<li class="list-inline-item"><a href="#" ><i class="fab fa-pinterest-p"
													aria-hidden="true"></i></a></li>
										<li class="list-inline-item"><a href="#" ><i class="fab fa-google-plus"
													aria-hidden="true"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 mb-5">

						<!-- /resources/views/post/create.blade.php -->
					
					
					
					@if ($errors->any())
						<div>
							<ul>
								@foreach ($errors->all() as $error)
									<li class="text-danger" >{{ $error }}</li>
								@endforeach
							</ul>
						</div>
					@endif
					
					@if (Session::has('alert-success') )
						<div class="alert alert-success alert-dismissible fade show" role="alert">
						<strong>Success!</strong> {{Session::get('alert-success')}}
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					  </div>
					@endif
					
{{-- Comment Section --}}
		<form method="POST" action="{{route('post.comment',$blog->id)}}">
				@csrf
				
				<div class="div form-group">
					<label for=""><strong>Comment</strong></label>
				<textarea name="comment"class="form-control" id="comment" cols="30" rows="3" placeholder="Enter Comment here"></textarea>
			<button type="submit" class="btn btn-sm btn-info float-right mt-3">Send</button>
			</div>
		</form>
				</div>
			@if (count($comments)>0 )
				<div class="col-lg-12 mb-5">
					<div class="comment-area card border-0 p-5" id="CommentSection">
						<h4 class="mb-4">{{count($comments)}} Comments</h4>
						<ul class="comment-tree list-unstyled">
					@foreach ($comments as $comment)
						<li class="mb-5">
							<div class="comment-area-box">
								<img loading="lazy" alt="comment-author" src="{{asset('assets/site/images/user.png')}}" class="img-fluid float-left mr-3 mt-2" height="40px" width="40px">

								<h5 class="mb-1">{{$comment->user?$comment->user->name: ''}}</h5>
								<span>{{$comment->user ? $comment->user->email:''}}</span>

								<div class="comment-meta mt-4 mt-lg-0 mt-md-0 float-lg-right float-md-right">
				
									<span class="date-comm">Posted {{$comment->user ? date('d M Y', strtotime($comment->created_at)):''}} </span>

								</div>

								<div class="comment-content mt-3">
									<p>Comment: {{$comment->user ? $comment->comment:''}} </p>
								</div>
							
								<div class="mt-t">
									@if ($comment->commentReplies)
										@foreach ($comment->commentReplies as $reply )

												<div class="ml-3  dropdown d-inline">
													
												   <span class="btn" class="dropdown-toggle"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														Reply: {{$reply->comment}}<sup class="h4 text-muted ">  ...</sup>
													
												   </span>
													<div class="dropdown-menu bg-warning" aria-labelledby="dropdownMenuButton">
														<a class="dropdown-item " href="">Edit</a>
														<form action="{{route('comment.reply.delete')}}" method="post">
															@csrf
															@method('DELETE')
															<input type="hidden" name="reply_id" value="{{$reply->id}}">
															<button type="submit" class="dropdown-item">Delete</button>
														</form>
													</div>
												</div>
											
										@endforeach
									@endif
								</div>

								
							</div>
						</li>
					

					{{-- Comment Reply Section --}}

							<li>
								<span class="show-reply float-right" role="button" >Reply here</span>
							  <div class="form-group comment-reply-div">	
								<form method="post" action="{{route('comment.reply',$comment->id)}}">
									@csrf
									<textarea name="comment"class="form-control" id="comment" cols="30" rows="3" placeholder="Enter Comment here"></textarea>
									<button class="btn btn-sm btn-info float-right mt-3">Reply</button>
								</form>
								</div>
							</li>
							@endforeach
						</ul>
					</div>
				</div>

				<div class="col-md-12 mt-5">

					<span>{{$comments->links() }}</span>

				</div>

			@endif

				</div>
			</div>

			<div class="col-lg-4 mt-5 mt-lg-0">
				<div class="sidebar-wrap">
					

					<div class="sidebar-widget card border-0 mb-3">
						<img loading="lazy" src="{{asset('assets/site/images/blog/blog-author.jpg')}}" alt="blog-author" class="img-fluid">
						<div class="card-body p-4 text-center">
							<h5 class="mb-0 mt-4">Arther Conal</h5>
							<p>Digital Marketer</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, dolore.</p>

							<ul class="list-inline author-socials">
								<li class="list-inline-item mr-3">
									<a href="#"><i class="fab fa-facebook-f text-muted"></i></a>
								</li>
								<li class="list-inline-item mr-3">
									<a href="#"><i class="fab fa-twitter text-muted"></i></a>
								</li>
								<li class="list-inline-item mr-3">
									<a href="#"><i class="fab fa-linkedin-in text-muted"></i></a>
								</li>
								<li class="list-inline-item mr-3">
									<a href="#"><i class="fab fa-pinterest text-muted"></i></a>
								</li>
								<li class="list-inline-item mr-3">
									<a href="#"><i class="fab fa-behance text-muted"></i></a>
								</li>
							</ul>
						</div>
					</div>
					
				@if (count($latestPosts)>0 )
					<div class="sidebar-widget latest-post card border-0 p-4 mb-3">
						<h5>Latest Posts</h5>
					@foreach ($latestPosts as $post)
					<div class="media border-bottom py-3">
						<a href="{{route('single-blog',$post->id)}}"><img loading="lazy" class="mr-4 rounded-circle" src="{{$post->gallery->image}}" width="60px" height="60px" alt="blog"></a>
						<div class="media-body">
							<h6 class="my-2"><a href="{{route('single-blog',$post->id)}}">{{$post->title}}</a></h6>
							<span class="text-sm text-muted">{{date('d M Y', strtotime($post->created_at))}}</span>
						</div>
					</div>
					@endforeach

					</div>
				@endif
					

					
					<div class="sidebar-widget bg-white rounded tags p-4 mb-3">
						<h5 class="mb-4">Tags</h5>
						@if (count($tags)>0)

							@foreach ($tags as $tag)
								<a href="{{route('single-blog',$tag->post->first() )}}">{{$tag->name}}</a>
							@endforeach
						@else
							<h6 class="text-danger text-center">No Tags Found</h6>
						@endif
					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>
@else

<h3 class="text-danger text-center mt-5">No Post Found</h3>
	
@endif

@endsection


@section('scripts')
<script>
    $(document).ready(function() {
        $('.comment-reply-div').hide();

        $('.show-reply').click(function(){
            
			$(this).siblings('.comment-reply-div').toggle('swing');
        });
    });

</script>

<script>
    $('html,body').animate({
        scrollTop: $("#CommentSection").offset().top
    }, 2000);
</script>

@endsection