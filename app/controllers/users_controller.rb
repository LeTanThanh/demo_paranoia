class UsersController < ApplicationController
  before_action :load_user, only: :show

  def index
    @users = User.all
  end

  def show
    @posts = @user.posts
  end

  private

  def load_user
    @user = User.find_by id: params[:id]

    redirect_to root_url unless @user
  end
end
