class Admin::UsersController < ApplicationController
  def index
    @users = User.with_deleted
  end
end
