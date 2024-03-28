 @extends('layouts.auth'); {{--extends call the main theme --}}
       
 @section('style')

 @endsection

 @section('content')

        


  <!-- ====================================
  ——— CONTENT WRAPPER
  ===================================== -->
  <div class="content-wrapper">
    <div class="content">                
            <!-- Top Statistics -->
            <div class="row">
             
              <div class="col-xl-3 col-sm-6">
                <div class="card card-default card-mini" style="height: 180px">
                  <div class="card-header">
                    <h2>{{ $postsCount }}</h2>
                    
                    <div class="sub-title">
                      <span class="mr-1">Posts</span>
                    </div>
                  </div>         
                </div>
              </div>

              <div class="col-xl-3 col-sm-6">
                <div class="card card-default card-mini" style="height: 180px">
                  <div class="card-header">
                    <h2>{{$usersCount}}</h2>
                    
                    <div class="sub-title">
                      <span class="mr-1">User</span> 
                    </div>
                  </div>         
                </div>
              </div>

              <div class="col-xl-3 col-sm-6">
                <div class="card card-default card-mini" style="height: 180px">
                  <div class="card-header">
                    <h2>{{$categoriesCount}}</h2>
                    
                    <div class="sub-title">
                      <span class="mr-1">Category</span> 
                    </div>
                  </div>         
                </div>
              </div>

              <div class="col-xl-3 col-sm-6">
                <div class="card card-default card-mini" style="height: 180px">
                  <div class="card-header">
                    <h2>{{  $tagsCount  }}</h2>
                    
                    <div class="sub-title">
                      <span class="mr-1">Tags</span> 
                    </div>
                  </div>         
                </div>
              </div>

            </div>


  </div>
    
  </div>
  
 @endsection

 @section('scripts')
 <script src="{{asset('assets/auth/plugins/apexcharts/apexcharts.js')}}"></script>
 <script src="{{asset('assets/auth/js/chart.js')}}"></script>
<script>
  $(document).ready(function(){
    $('#logout-button').click(function(){
      $('#logout-form').submit();
    } )
  } )
</script>
 @endsection