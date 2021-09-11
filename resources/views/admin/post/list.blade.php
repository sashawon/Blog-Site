@extends('admin/layout.layout')

@section('page_title','Post Listing')

@section('container')
    <div class="page-title">
      <div class="title_left">
        <h3>Post List</h3>
        <h5><a class="btn btn-info" href="/admin/post/add">Add Post</a></h5>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 text-center h4 text-success">
        {{session('msg')}}
      </div>
      <div class="col-md-12 col-sm-12 ">
        <div class="x_panel">
          <div class="x_content">
            <div class="row">
              <div class="col-sm-12">
                <div class="card-box table-responsive">
                  <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                      <tr>
                        <th width="2%">ID</th>
                        <th width="10%">Title</th>
                        <th width="10%">Slug</th>
                        <th width="15%">Short Desc</th>
                        <th width="10%">Image</th>
                        <th width="25%">Long Desc</th>
                        <th width="10%">Date</th>
                        <th width="18%">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($result as $list)
                      <tr>
                        <td>{{$list->id}}</td>
                        <td>{{$list->title}}</td>
                        <td>{{$list->slug}}</td>
                        <td>{{$list->short_desc}}</td>
                        <td><img src="{{asset('storage/post/'.$list->image)}}" alt="Post_image" width="100px;"></td>
                        <td>{{$list->long_desc}}</td>
                        <td>{{$list->post_date}}</td>
                        <td>
                          <a class="btn btn-info text-white" href="{{url('admin/post/edit/'.$list->id)}}">Edit</a>
                          <a class="btn btn-danger text-white" href="{{url('admin/post/delete/'.$list->id)}}">Delete</a>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection

