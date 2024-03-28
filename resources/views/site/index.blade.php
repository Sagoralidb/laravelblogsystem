{{-- Find out this page  in blog --}}

@extends('layouts.site')

@section('content')

    @section('title','Blogs Page')

        @section('style')
        <style>
             #imgTag {
            height: 250px !important;
          }
        
        </style>
        @endsection

<section class="page-title bg-1">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="block text-center">
            <span class="text-white">Our blog</span>
            <h1 class="text-capitalize mb-4 text-lg">Blog articles</h1>
            <ul class="list-inline">
              <li class="list-inline-item"><a href="{{url('/')}}" class="text-white">Home</a></li>
              <li class="list-inline-item"><span class="text-white">/</span></li>
              <li class="list-inline-item text-white-50">Our blog</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section class="section blog-wrap bg-gray">
      <div class="container">
         
         @if (count($blogs)>0 ) 
            <div class="row">

           @foreach ($blogs as $blog )
                
            <div class="col-lg-6 col-md-6 mb-5">
        
                <div class="blog-item">
                    <img loading="lazy" src="{{$blog->gallery->image}}" alt="blog" class="img-fluid rounded" id="imgTag" height="450px" width="600px">

                    <div class="blog-item-content bg-white p-5">
                        <div class="blog-item-meta bg-gray pt-2 pb-1 px-3">
                            <span class="text-muted text-capitalize d-inline-block mr-3"><i class="ti-comment mr-2"></i>{{$blog->comments ? count($blog->comments): 0}} Comments</span>
                            <span class="text-black text-capitalize d-inline-block mr-3"><i class="ti-time mr-1"></i> 
                              {{ date('d M y', strtotime($blog->created_at)) }}
                            </span>
                        </div>

                        <h3 class="mt-3 mb-3"><a href="{{route('single-blog',$blog->id)}}">{{Str::limit($blog->title,25) }}</a></h3>
                        <p class="mb-4 text-justify">{{Str::limit($blog->description,90)}}</p>

                        <a href="{{route('single-blog',$blog->id)}}" class="btn btn-small btn-main btn-round-full">Read More</a>
                    </div>
                </div>
            </div>
           @endforeach

        </div>
            
          <div class="row justify-content-center mt-0">
          
            <span>{{$blogs->links() }}</span>
        </div>
  
     @else
            <div class="text-center">
                <h3 class="text-danger">No Post Found.</h3>
            </div>
            @endif
          </div>
  
      </div>
  </section>

@endsection


@section('scripts')

@endsection