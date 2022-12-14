class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(author_id: current_user.id, post_id: @post.id)
    @like.author = current_user
    @like.post = Post.find(params[:post_id])
    @like.save
    redirect_to user_post_path(current_user, @post.id)
  end
end
