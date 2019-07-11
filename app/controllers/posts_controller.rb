class PostsController < ApplicationController
  before_action :load_post, only: :show

  def show
    @user = @post.user
  end

  private

  def load_post
    @post = Post.find_by id: params[:id]

    redirect_to root_url unless @post
  end
end
