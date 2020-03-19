<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\PostRequest as PostRequest;
use App\Admin\Post;
use Session;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Post::all();
        return view('back-end.post.list',['data'=>$objs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.post.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request)
    {
        $arr_data = $request->all();
        $arr_data['created_by'] = \Auth::user()->id;
        Post::create($arr_data);
        Session::flash('success-post', 'Tạo mới bài viết thành công.');
        return redirect()->route('post.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $obj = Post::find($id);
        if($obj == null){
            Session::flash('error-post', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('post.index');  
        }
        return view('back-end.post.edit',['obj'=>$obj]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PostRequest $request, $id)
    {
        $obj = Post::find($id);
        if($obj == null){
            Session::flash('error-post', 'Không tìm thấy dữ liệu.');
            return redirect()->route('post.index');
        }
        $arr_data = $request->all();
        $arr_data['updated_by'] = \Auth::user()->id;
        $obj->update($arr_data);
        Session::flash('success-post', 'Cập nhật bài viết thành công.');
        return redirect()->route('post.edit',['id'=>$id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Post::find($id);
        if($obj == null){
            Session::flash('error-post', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('post.index');  
        }
        $obj->delete();
        Session::flash('success-post', 'Xóa bài viết thành công.');  
        return redirect()->route('post.index');  
    }

    public function mutileUpdate(Request $request)
    {
        $status = $request->status;
        $data = $request->data_selected;
        $data = explode(",", $data[0]);
        if($status != 2)
        {
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Post::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Post::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }       
        Session::flash('success-post', 'Update đồng loạt thành công.');
        return redirect()->route('post.index');
    }
}
