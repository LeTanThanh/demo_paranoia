class Admin::PostsController < ApplicationController
  before_action :load_post, only: %i(show)

  def show
    @user = User.with_deleted.find_by id: @post.user_id    
  end

  private

  def load_post
    @post = Post.with_deleted.find_by id: params[:id]

    redirect_to admin_root_url unless @post
  end
end
