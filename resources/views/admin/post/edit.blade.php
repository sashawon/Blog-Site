@extends('admin/layout.layout')

@section('page_title','Manage Post')

@section('container')
    <div class="page-title">
      <div class="title_left">
        <h3>Manage Post</h3>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 ">
        <div class="x_panel">
          <div class="x_content">
            <br />
            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="{{url('/admin/post/update/'.$result['0']->id)}}" method="post" enctype="multipart/form-data">
              @csrf
              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Title <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <input type="text" name="title" required="required" class="form-control " value="{{$result['0']->title}}">
                </div>
              </div>

              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Slug <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <input type="text" name="slug" required="required" class="form-control " value="{{$result['0']->slug}}">
                  @error('slug')
                  {{$message}}
                  @enderror
                </div>
              </div>

              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Short Desc <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <textarea name="short_desc" class="form-control ">{{$result['0']->short_desc}}</textarea>
                </div>
              </div>

              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Desc <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <textarea name="long_desc" class="form-control ">{{$result['0']->long_desc}}</textarea>
                </div>
              </div>

              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Image <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <input type="file" name="image" class="form-control ">
                  @error('image')
                  {{$message}}
                  @enderror
                </div>
              </div>

              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align">Date <span class="required text-danger">*</span>
                </label>
                <div class="col-md-6 col-sm-6 ">
                  <input type="date" name="post_date" required="required" class="form-control " value="{{$result['0']->post_date}}">
                </div>
              </div>

              
              <div class="ln_solid"></div>
              <div class="item form-group">
                <div class="col-md-6 col-sm-6 offset-md-3">
                  <button type="submit" class="btn btn-success">Submit</button>
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
@endsection