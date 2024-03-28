<?php

namespace App\Http\Controllers\site;

use App\Http\Controllers\Controller;
use App\Http\Requests\Site\Comments\CreateRequest;
use App\Http\Requests\Site\Comments\Reply\CreateRequest as ReplyCreateRequest;
use App\Models\Comment;
use App\Models\CommentReply;
use App\Models\Post;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function postComment(CreateRequest $request, $postId)
    {
        //return $request->all();
        if(auth()->check() ){
            $post   =   Post::find($postId);
            if(!$post){
                return back()->withErrors('Unable to find the post. Go to the post page & try again.');
            }
            
         

        Comment::create([
            'post_id'   =>  $postId,
            'user_id'   =>  auth()->id(),
            'comment'   => $request->comment
        ]);

        $request->session()->flash('alert-success','Comment Added successfully,It will avilable after admin aproval.');

        }
        
        return back();
       
    }

    public function postCommentReply(ReplyCreateRequest $request, $commentId)
    {
        $commentId  =   $request->commentId;
        $comment    =   $request->comment;

       try{
        CommentReply::create([
            'comment_id'=> $commentId ,
            'user_id'   => auth()->id(),
            'comment'   =>$comment,
        ]);

       }
       catch(\Exception $ex)
       {
        return back()->withErrors($ex->getMessage());
       }
        $request->session()->flash('alert-success','Comment Reply Added successfully.');

        return back();
    }
    public function deleteCommentReply(Request $request){
        $replyId    = $request->reply_id;

        $reply      =CommentReply::find($replyId);

        if(! $reply)
            {
                return back()->withErrors('Unable to delete. Please refresh and try again.');
            }

            $reply->delete();

            $request->session()->flash('alert-success','Comment Reply Deleted successfully.');

        return back();
    }
}
