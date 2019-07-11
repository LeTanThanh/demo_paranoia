class Admin::UsersController < ApplicationController
  before_action :load_user, only: %i(show destroy restore)

  def index
    @users = User.with_deleted
  end

  def show
    @posts = Post.with_deleted.where(user_id: @user.id)
  end

  def destroy
    @user.destroy

    redirect_back(fallback_location: admin_root_url)
  end

  def restore
    @user.restore

    redirect_back(fallback_location: admin_root_url)
  end

  private

  def load_user
    @user = User.with_deleted.find_by id: params[:id]

    redirect_to root_url unless @user
  end
end
