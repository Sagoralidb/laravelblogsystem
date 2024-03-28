@extends('layouts.auth') 
@section('title','create post | Admin Dashboard') 
@section('style')
<link rel="stylesheet" href="{{asset('assets/auth/css/multi-dropdown.css')}}">
@endsection

@section('content')

<div class="content-wrapper">
	<div class="content">
		<!-- Masked Input -->
		<div class="card card-default">
			<div class="card-header">
				<h2>Create Post</h2>
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
                
                <!-- Input form -->
                <form method="POST" action="{{route('posts.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                      <label >Titile</label>
                      <input type="text" name="title"value="{{old('title')}}" class="form-control" placeholder="title">        
                    </div>

                    <div class="form-group">
                        <label >Description</label>
                       <textarea name="description" class="form-control" id="" cols="30" rows="3" placeholder="Description"></textarea>
                      </div>

                    <div class="form-group">
                        <label for="is_publish">Is Publish</label>
                        <select id="status" name="status" class="form-control"> 
                            <option value="" disabled selected>Select</option>
                            <option value="1">Publish</option>
                            <option value="0">Draft</option>
                        </select>
                    </div>

                    <div class="form-group">
                      <label >Category</label>
                      <select name="category" class="form-control"> 
                          <option value="" disabled selected>Select</option>
                           @if (count($categories)>0 )
                               @foreach ($categories as $category )
                                <option value="{{$category->id}}">{{$category->name}}</option>
                               @endforeach
                           @endif        
                      </select>
                  </div>
                  <div class="form-group">
                      <label>Tags</label>
                      <select name="tags[]" class="form-control selectpicker" multiple data-live-search="true">
                          <option value="" disabled selected>choose Option</option>
                          @if (count($tags) > 0)
                              @foreach ($tags as $tag)
                                  <option value="{{$tag->id}}">{{$tag->name}}</option>
                              @endforeach
                          @endif
                      </select>

                    </div>
                    <div class="form-group mb-2">
                        <label for="file" >Feature Image</label>
                        <input type="file" name="file"value="{{old('file')}}" class="form-control">        
                      </div>

                    <button type="submit" class="btn btn-primary mt-3">Submit</button>
                  </form>
            </div>
			
		</div>
	</div>
</div>
  @section('scripts')
    <script src="{{asset('assets/auth/js/multi-dropdown.js')}}"></script>
  @endsection
@endsection