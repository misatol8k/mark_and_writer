class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[index]

  def index
    @users = current_user.following.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end
end
