class PostsController < ApplicationController
  before_action :load_post, only: %i(show destroy)

  def show
    @user = @post.user
  end

  def destroy
    @post.destroy

    redirect_back(fallback_location: root_url)
  end

  private

  def load_post
    @post = Post.find_by id: params[:id]

    redirect_to root_url unless @post
  end
end
