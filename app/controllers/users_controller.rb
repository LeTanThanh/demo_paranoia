class UsersController < ApplicationController
  before_action :load_user, only: %i(show destroy)

  def index
    @users = User.all
  end

  def show
    @posts = @user.posts
  end

  def destroy
    @user.destroy

    redirect_back(fallback_location: root_url)
  end

  private

  def load_user
    @user = User.find_by id: params[:id]

    redirect_to root_url unless @user
  end
end
